import {
  FlatList,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from 'react-native';
import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Product = () => {
  const [data, setData] = useState([]);
  const [type, setType] = useState([]);
  const [isSelected, setIsSelected] = useState('All');

  useEffect(() => {
    getData();
  }, []);
  const getData = async () => {
    await axios
      .get(`http://192.168.59.7:3000/product/gettype`)
      .then((response) => {
        setType([{ danh_muc: 'All' }].concat(response.data));
      })
      .catch((e) => {
        if (axios.isCancel(e)) return;
      });
  };
  useEffect(() => {
    getDataByType();
  }, [isSelected]);

  const getDataByType = async () => {
    isSelected == 'All'
      ? await axios
          .get(`http://192.168.59.7:3000/product/getall`)
          .then((response) => {
            setData(response.data);
          })
          .catch((e) => {
            if (axios.isCancel(e)) return;
          })
      : await axios
          .get(`http://192.168.59.7:3000/product/getbytype?type=${isSelected}`)
          .then((response) => {
            setData(response.data);
          })
          .catch((e) => {
            if (axios.isCancel(e)) return;
          });
  };

  return (
    <View>
      <View style={styles.TVSubMenuContainer}>
        <FlatList
          spacing={10}
          data={type}
          horizontal
          keyExtractor={(item, index) => index.toString()}
          renderItem={({ item }) => (
            <TouchableOpacity
              activeOpacity={0.5}
              onPress={() => {
                setIsSelected(item.danh_muc);
              }}
            >
              <Text
                style={{
                  ...styles.TVSubMenuText,
                  color: item.danh_muc === isSelected ? 'black' : 'gray',
                }}
              >
                {item.danh_muc}
              </Text>
            </TouchableOpacity>
          )}
        />
      </View>

      <View style={{ paddingHorizontal: 20, marginTop: 20 }}>
        <FlatList
          spacing={10}
          data={data}
          keyExtractor={(item, index) => index.toString()}
          renderItem={({ item }) => (
            <View
              style={{
                paddingVertical: 10,
                width: '100%',
                borderWidth: 1,
                borderColor: 'gray',
                paddingHorizontal: 10,
              }}
            >
              <Text style={{ fontSize: 17 }}>{'Name: ' + item.name}</Text>
              <Text style={{ fontSize: 17 }}>{'Type: ' + item.danh_muc}</Text>
              <Text style={{ fontSize: 17 }}>{'Color: ' + item.color}</Text>
              <Text style={{ fontSize: 17 }}>{'Price: ' + item.price}</Text>
            </View>
          )}
        />
      </View>
    </View>
  );
};

export default Product;

const styles = StyleSheet.create({
  TVSubMenuContainer: {
    marginTop: 20,
    marginLeft: 20,
    flexDirection: 'row',
    marginVertical: 5,
    justifyContent: 'flex-start',
  },
  TVSubMenuText: {
    marginRight: 10,
    color: 'black',
    fontSize: 18,
  },
});

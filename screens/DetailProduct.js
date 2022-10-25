import {
  FlatList,
  Image,
  SafeAreaView,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from 'react-native';
import React, { useEffect, useState } from 'react';
import axios from 'axios';

const DetailProduct = ({ route, navigation }) => {
  const [data, setData] = useState([]);
  const [dataSimiLar, setDataSimiLar] = useState([]);
  var [offset, setOffset] = useState(0);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    (async () => {
      await axios
        .get(
          `http://192.168.0.101:3001/product/getdetail?id=${route.params.id}`
        )
        .then((response) => {
          setData(response.data[0]);
        })
        .catch((e) => {
          if (axios.isCancel(e)) return;
        });
    })();
  }, [route.params.id]);
  useEffect(() => {
    (async () => {
      await axios
        .get(
          `http://192.168.0.101:3001/product/getbytype?type=${data.danh_muc}&offset=${offset}`
        )
        .then((response) => {
          setDataSimiLar(dataSimiLar.concat(response.data));
          setLoading(false);
        })
        .catch((e) => {
          if (axios.isCancel(e)) return;
        });
    })();
  }, [data?.danh_muc]);

  const renderFooter = () => {
    return (
      <View
        style={{
          alignItems: 'center',
          justifyContent: 'center',
        }}
      >
        <TouchableOpacity
          activeOpacity={0.5}
          onPress={() => {
            handleOnLoadMore();
          }}
        >
          <Text
            style={{
              color: 'blue',
              fontSize: 15,
              alignItems: 'center',
              justifyContent: 'center',
            }}
          >
            Load more
          </Text>
        </TouchableOpacity>
      </View>
    );
  };

  const handleOnLoadMore = () => {
    setOffset((offset += 6));
    setLoading(true);
    getDataByType();
  };
  return (
    <SafeAreaView style={{ flex: 1 }}>
      <ScrollView>
        <Image
          style={{ marginTop: 20, width: '100%', height: 300 }}
          source={{ uri: data?.image }}
          resizeMode="contain"
        />
        <View
          style={{
            flexDirection: 'column',
            justifyContent: 'center',
            marginTop: 20,
            marginHorizontal: 20,
          }}
        >
          <Text style={{ fontSize: 20, fontWeight: 'bold' }}>
            Name: {data.name}
          </Text>
          <Text style={{ fontSize: 20, fontWeight: 'bold' }}>
            Type: {data.danh_muc}
          </Text>
          <Text style={{ fontSize: 20, fontWeight: 'bold' }}>
            Price: {data.price}
          </Text>
        </View>
        <View>
          <TouchableOpacity
            style={{
              marginLeft: 100,
              marginTop: 10,
              backgroundColor: 'green',
              width: 100,
              alignItems: 'center',
              justifyContent: 'center',
            }}
          >
            <Text style={{ fontSize: 20, fontWeight: 'bold', padding: 10 }}>
              Buy
            </Text>
          </TouchableOpacity>
        </View>

        <FlatList
          style={{ marginTop: 20 }}
          spacing={10}
          data={dataSimiLar}
          horizontal
          keyExtractor={(item, index) => index.toString()}
          //   onEndReached={handleEndReached}
          //   onEndReachedThreshold={1}
          //   ListFooterComponent={loading ? renderFooter : null}
          ListFooterComponent={renderFooter}
          renderItem={({ item }) => (
            <TouchableOpacity
              onPress={() => {
                navigation.navigate('detailProduct', {
                  title: item.name,
                  id: item.id,
                });
              }}
            >
              <View
                style={{
                  paddingVertical: 10,
                  width: '100%',
                  borderWidth: 1,
                  borderColor: 'gray',
                  paddingHorizontal: 10,
                  marginTop: 10,
                }}
              >
                <Text style={{ fontSize: 17 }}>{'ID: ' + item.id}</Text>
                <Text style={{ fontSize: 17 }}>{'Name: ' + item.name}</Text>
                <Text style={{ fontSize: 17 }}>{'Type: ' + item.danh_muc}</Text>
                <Text style={{ fontSize: 17 }}>{'Color: ' + item.color}</Text>
                <Text style={{ fontSize: 17 }}>{'Price: ' + item.price}</Text>
              </View>
            </TouchableOpacity>
          )}
        />
      </ScrollView>
    </SafeAreaView>
  );
};

export default DetailProduct;

const styles = StyleSheet.create({});

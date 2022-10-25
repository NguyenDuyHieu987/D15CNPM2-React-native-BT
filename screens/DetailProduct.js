import {
  Image,
  SafeAreaView,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import React, { useEffect, useState } from 'react';
import axios from 'axios';

const DetailProduct = ({ route }) => {
  const [data, setData] = useState({});
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
  }, []);

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
      </ScrollView>
    </SafeAreaView>
  );
};

export default DetailProduct;

const styles = StyleSheet.create({});

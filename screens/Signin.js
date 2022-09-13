import { StyleSheet, Text, View } from 'react-native';
import React from 'react';
import Input from '../components/Input';
import Btn from '../components/Btn';

const Signin = () => {
  return (
    <View style={{ flex: 1, paddingHorizontal: 30, marginTop: 100 }}>
      <Text style={{ fontSize: 30, color: '#2980b9', marginBottom: 20 }}>
        Sign In
      </Text>
      <View style={{ marginBottom: 50 }}>
        <Input placeholder="E-Mail orPhone Number" />
        <Input placeholder="Password" />
      </View>
      <View>
        <Btn title="Log In" color="#2980b9" />
        <Text style={{ textAlign: 'center', fontSize: 20, marginVertical: 50 }}>
          OR
        </Text>
        <Btn title="Facebook LogIn" color="#1e3799" />
      </View>
    </View>
  );
};

export default Signin;

const styles = StyleSheet.create({});

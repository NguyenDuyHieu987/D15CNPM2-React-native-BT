import { StyleSheet, Text, View } from 'react-native';
import React from 'react';
import Input from '../components/Input';
import Btn from '../components/Btn';

const CreateAccount = () => {
  return (
    <View style={{ flex: 1, paddingHorizontal: 30, marginTop: 100 }}>
      <Text style={{ fontSize: 30, color: '#2980b9', marginBottom: 20 }}>
        Create New Account
      </Text>
      <View style={{ marginBottom: 50 }}>
        <Input placeholder="Full Name" />
        <Input placeholder="Phone Number" />
        <Input placeholder="E-Mail address" />
        <Input placeholder="Password" />
      </View>
      <Btn title="Sign Up" color="#1e3799" />
    </View>
  );
};

export default CreateAccount;

const styles = StyleSheet.create({});

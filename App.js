import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import CreateAccount from './screens/CreateAccount';
import Signin from './screens/Signin';
import Signup from './screens/Signup';

export default function App() {
  return (
    <View style={styles.container}>
      {/* <Signup /> */}
      {/* <CreateAccount /> */}
      <Signin />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

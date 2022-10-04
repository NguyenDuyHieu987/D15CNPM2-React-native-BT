'use strict';
let loginsCtrl = require('./controllers/LoginController');
module.exports = function (app) {
  app.get('/login/checklogin', loginsCtrl.login);
  app.post('/login/insertuser', loginsCtrl.store);
  app.get('/login/getuser', loginsCtrl.detail);
  app.post('/login/updateuser/:userId', loginsCtrl.update);
  app.post('/login/deleteuser/:userId', loginsCtrl.delete);
};

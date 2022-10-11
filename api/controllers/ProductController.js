'use strict';

const util = require('util');
const mysql = require('mysql');
const db = require('../db');

module.exports = {
  get: (req, res) => {
    let sql = 'SELECT * FROM products';
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  getType: (req, res) => {
    let sql = `SELECT danh_muc FROM products`;
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
  getByType: (req, res) => {
    let sql = `SELECT * FROM products WHERE danh_muc = '${req.query.type}' `;
    db.query(sql, (err, response) => {
      if (err) throw err;
      res.json(response);
    });
  },
};

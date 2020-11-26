const express = require('express');
const router = express.Router();

const Order_18 = require('../models/orderModel_18');
// const dashboardController = require('../controllers/dashboardController_89');

router.get('/', async (req, res) => {
  let orderInfo = {};
  try {
    await Order_18.fetchAllDetails().then(([rows]) => {
      // console.log('getDashboard', JSON.stringify(rows));
      // res.json(rows);
      orderInfo = rows;
    });

    res.render('order_18', { title: 'Order', orderInfo: orderInfo });
  } catch (err) {
    console.log(err);
  }
});

module.exports = router;

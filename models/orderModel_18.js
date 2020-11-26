const db = require('../utils/database');

const Post_18 = class Post_18 {
  constructor(oid, uid, pid, price, amount) {
    this.o = oid;
    this.u = uid;
    this.p = pid;
    this.price = price;
    this.amount = amount;
  }

  static fetchAll() {
    return db.execute('select * from post_18');
  }
  static fetchAllDetails() {
    return db.execute('SELECT * FROM order_18 where oid=2;');
  }

  static getPostCount() {
    return db.execute('select count(*) as count from post_18');
  }
};

const Order_18 = class Order_18 {
  constructor(oid, uid, pid, price, amount) {
    this.o = oid;
    this.u = uid;
    this.p = pid;
    this.price = price;
    this.amount = amount;
  }

  static fetchAll() {
    return db.execute('select * from post_18');
  }
  static fetchAllDetails() {
    return db.execute(
      'SELECT O.oid, U.name as userName, P.pname as productName, price, amount FROM order_18 as O, product_18 as P, user_18 as U where O.uid = U.id AND O.pid = P.id;'
    );
  }

  static getPostCount() {
    return db.execute('select count(*) as count from post_18');
  }
};

// test
const testFetchAll = async (req, res) => {
  try {
    await Post_18.fetchAll().then(([rows]) => {
      console.log('\n<<<Post_18 testFetchAll>>>\n\n', JSON.stringify(rows));
    });
  } catch (err) {
    console.log(err);
  }
};

const testFetchAllDetails = async (req, res) => {
  try {
    await Order_18.fetchAllDetails().then(([rows]) => {
      console.log(
        '\n<<<Order_18 testFetchAllDetails>>>\n\n',
        JSON.stringify(rows)
      );
    });
  } catch (err) {
    console.log(err);
  }
};

// testFetchAll();

testFetchAllDetails();

module.exports = Order_18;

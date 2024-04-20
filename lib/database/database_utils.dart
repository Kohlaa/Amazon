// ignore_for_file: avoid_print

import 'package:chat/model/message.dart';
import 'package:chat/model/my_user.dart';
import 'package:chat/model/room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseUtils {
  static CollectionReference<MyUser> getUserCollection() {
    return FirebaseFirestore.instance
        .collection(MyUser.collectionName)
        .withConverter<MyUser>(
            fromFirestore: (snapshot, options) =>
                MyUser.fromJson(snapshot.data()!),
            toFirestore: (user, options) => user.toJson());
  }

  static Future<void> regesterUser(MyUser user) async {
    return getUserCollection().doc(user.id).set(user);
  }

  static Future<MyUser?> getUser(String userId) async {
    var documentSnapShot = await getUserCollection().doc(userId).get();
    return documentSnapShot.data();
  }

  Future<List<Map<String, dynamic>>> getAllProducts() async {
    List<Map<String, dynamic>> productList = [];

    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance.collection('Products').get();

      for (var doc in querySnapshot.docs) {
        productList.add(doc.data());
      }

      return productList;
    } catch (e) {
      print('Error fetching products: $e');
      return [];
    }
  }

  static Future<List<Map<String, dynamic>>> getAllCategories() async {
    List<Map<String, dynamic>> categoryList = [];

    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance.collection('Categories').get();

      for (var doc in querySnapshot.docs) {
        categoryList.add(doc.data());
      }

      return categoryList;
    } catch (e) {
      print('Error fetching categories: $e');
      return [];
    }
  }

  Future<Map<String, dynamic>?> getCategoryById(String categoryId) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await FirebaseFirestore.instance
              .collection('Categories')
              .doc(categoryId)
              .get();

      if (documentSnapshot.exists) {
        return documentSnapshot.data();
      } else {
        print('No category found with ID: $categoryId');
        return null;
      }
    } catch (e) {
      print('Error fetching category: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>?> getProductById(String productId) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await FirebaseFirestore.instance
              .collection('Products')
              .doc(productId)
              .get();

      if (documentSnapshot.exists) {
        return documentSnapshot.data();
      } else {
        print('No product found with ID: $productId');
        return null;
      }
    } catch (e) {
      print('Error fetching product: $e');
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> searchProducts(String keyword) async {
    List<Map<String, dynamic>> productList = [];

    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance
              .collection('Products')
              .where('en.brand', isEqualTo: keyword)
              .get();

      print('Number of documents found: ${querySnapshot.size}'); //

      for (var doc in querySnapshot.docs) {
        print('Document data: ${doc.data()}');
        productList.add(doc.data());
      }

      return productList;
    } catch (e) {
      print('Error searching products: $e');
      return [];
    }
  }

  static Future<List<Map<String, dynamic>>> getProductsByCategoryId(
      String categoryId) async {
    List<Map<String, dynamic>> productList = [];

    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance
              .collection('Products')
              .where('categoryId', isEqualTo: categoryId)
              .get();

      for (var doc in querySnapshot.docs) {
        productList.add(doc.data());
      }

      return productList;
    } catch (e) {
      print('Error fetching products: $e');
      return [];
    }
  }
}

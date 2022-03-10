import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:animes_list/app/data/model/anime_model.dart';

const baseUrl = 'https://script.google.com/macros/s/AKfycbxfzxQvoPcE2rx6Ywzhj47Hqqlzki2WcsK3g6b-OAv6m6HONFCdbqpc83J8pPkAN7zS/exec';

class AnimeApiClient {
  final http.Client? httpClient;

  AnimeApiClient({@required this.httpClient});

  Future<List<AnimeModel>> getAll() async {
    try {
      final response = await httpClient!.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = jsonDecode(response.body);
        return jsonResponse.map((animeJson) => AnimeModel.fromJson(animeJson)).toList();
      } else {
        debugPrint('Error -getAll');
      }
    } catch (e) {
      debugPrint("Error fetching from API: $e");
    }
    return [];
  }
}
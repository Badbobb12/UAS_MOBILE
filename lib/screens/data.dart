import 'package:fireflutter/model/earthquake.dart';
import 'package:fireflutter/services/services.dart';
import 'package:flutter/material.dart';


class EarthquakeListView extends StatefulWidget {
  @override
  _EarthquakeListViewState createState() => _EarthquakeListViewState();
}

class _EarthquakeListViewState extends State<EarthquakeListView> {
  late Future<List<Earthquake>> futureEarthquakes;

  @override
  void initState() {
    super.initState();
    futureEarthquakes = ApiService().getEarthquakes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earthquake Data'),
      ),
      body: FutureBuilder<List<Earthquake>>(
        future: futureEarthquakes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text('No earthquake data available.'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final earthquake = snapshot.data![index];
                return ListTile(
                  title: Text(earthquake.title),
                  subtitle: Text(earthquake.location),
                  trailing: Text('Magnitude: ${earthquake.magnitude}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
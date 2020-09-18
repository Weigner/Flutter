import 'package:com/model/racas_model.dart';
import 'package:com/repository/racas_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RacasScreen extends StatefulWidget {
  @override
  RacasScreenState createState() => RacasScreenState();
}

class RacasScreenState extends State<RacasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Raças"),
      ),
      body: FutureBuilder<List<RacasModel>>(
        future: RacasRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<RacasModel> racas) {
    return ListView.builder(
      itemCount: racas == null ? 0 : racas.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardRacas(racas[index]);
      },
    );
  }

  Card cardRacas(RacasModel racas) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Icon(
              Icons.pets,
              color: Colors.white,
            ),
          ),
          title: Text(
            racas.raca,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(
                //flex: 2,
                child: Container(
                 /* child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                      valueColor: AlwaysStoppedAnimation(Colors.yellow),
                    ),
                  ),*/
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Porte: " + racas.porte,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.0,
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/racas_detalhes",
              arguments: racas,
            );
          },
        ),
      ),
    );
  }
}
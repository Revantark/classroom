import 'package:classroom/application/local_storage/localstorage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectClass extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text("Select Class",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Card(
            elevation: 5,
            child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.green,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            title: _getText("CSE A"),
                            onTap: (){
                              BlocProvider.of<LocalstorageCubit>(context).changeClass('csea');
                            },
            )  ,
                
                ListTile(
                  title: _getText("CSE B"),
                  onTap: (){
                   BlocProvider.of<LocalstorageCubit>(context).changeClass('cseb');
                  },
                ),
                ListTile(
                  title: _getText("CSE C"),
                  onTap: (){
                    BlocProvider.of<LocalstorageCubit>(context).changeClass('csec');
                  },
                ),
                ListTile(
                  title: _getText("CSE D"),
                  onTap: (){
                    BlocProvider.of<LocalstorageCubit>(context).changeClass('csed');
                  },
                )
              ],
            ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getText(String classs){
    return Center(child: Text(classs,style: TextStyle(
      fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white
    ),),);
  }

}
import 'dart:convert';

DocentesModel alumnoModelFromJson(String str) =>
    DocentesModel.fromJson(json.decode(str));

String alumnoModelToJson(DocentesModel data) => json.encode(data.toJson());

class DocentesModel {
  String nombre;
  String asignatura;
  String grupos;
  String contacto;
  String turno;

  DocentesModel({
    this.nombre,
    this.asignatura,
    this.grupos,
    this.contacto,
    this.turno
  });

  factory DocentesModel.fromJson(Map<String, dynamic> json) => new DocentesModel(
    nombre: json["nombre"], 
    asignatura: json["asignatura"], 
    grupos: json["grupos"], 
    contacto: json["contacto"], 
    turno: json["turno"], 
  );

  Map<String, dynamic> toJson() => {
    "nombre" : nombre,
    "asignatura" : asignatura,
    "grupos" : grupos,
    "contacto" : contacto,
    "turno" : turno
  };

}
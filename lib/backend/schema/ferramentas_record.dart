import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FerramentasRecord extends FirestoreRecord {
  FerramentasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "Desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "FotoReg" field.
  String? _fotoReg;
  String get fotoReg => _fotoReg ?? '';
  bool hasFotoReg() => _fotoReg != null;

  // "DataAquis" field.
  DateTime? _dataAquis;
  DateTime? get dataAquis => _dataAquis;
  bool hasDataAquis() => _dataAquis != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "DataCalib" field.
  DateTime? _dataCalib;
  DateTime? get dataCalib => _dataCalib;
  bool hasDataCalib() => _dataCalib != null;

  // "CicloCalib" field.
  String? _cicloCalib;
  String get cicloCalib => _cicloCalib ?? '';
  bool hasCicloCalib() => _cicloCalib != null;

  // "ProxCalib" field.
  String? _proxCalib;
  String get proxCalib => _proxCalib ?? '';
  bool hasProxCalib() => _proxCalib != null;

  // "EmprestadoPara" field.
  String? _emprestadoPara;
  String get emprestadoPara => _emprestadoPara ?? '';
  bool hasEmprestadoPara() => _emprestadoPara != null;

  // "EmprestadoQuando" field.
  DateTime? _emprestadoQuando;
  DateTime? get emprestadoQuando => _emprestadoQuando;
  bool hasEmprestadoQuando() => _emprestadoQuando != null;

  // "EmprestadoAte" field.
  DateTime? _emprestadoAte;
  DateTime? get emprestadoAte => _emprestadoAte;
  bool hasEmprestadoAte() => _emprestadoAte != null;

  // "ValorDaFerramenta" field.
  String? _valorDaFerramenta;
  String get valorDaFerramenta => _valorDaFerramenta ?? '';
  bool hasValorDaFerramenta() => _valorDaFerramenta != null;

  // "MarcaDaFerramenta" field.
  String? _marcaDaFerramenta;
  String get marcaDaFerramenta => _marcaDaFerramenta ?? '';
  bool hasMarcaDaFerramenta() => _marcaDaFerramenta != null;

  // "TipoDeEmprestimo" field.
  String? _tipoDeEmprestimo;
  String get tipoDeEmprestimo => _tipoDeEmprestimo ?? '';
  bool hasTipoDeEmprestimo() => _tipoDeEmprestimo != null;

  // "AssEmprestadoRecebeu" field.
  String? _assEmprestadoRecebeu;
  String get assEmprestadoRecebeu => _assEmprestadoRecebeu ?? '';
  bool hasAssEmprestadoRecebeu() => _assEmprestadoRecebeu != null;

  // "AssEmprestadoDevolveu" field.
  String? _assEmprestadoDevolveu;
  String get assEmprestadoDevolveu => _assEmprestadoDevolveu ?? '';
  bool hasAssEmprestadoDevolveu() => _assEmprestadoDevolveu != null;

  // "QuemEmprestou" field.
  String? _quemEmprestou;
  String get quemEmprestou => _quemEmprestou ?? '';
  bool hasQuemEmprestou() => _quemEmprestou != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _codigo = snapshotData['Codigo'] as String?;
    _desc = snapshotData['Desc'] as String?;
    _estado = snapshotData['Estado'] as String?;
    _status = snapshotData['Status'] as String?;
    _fotoReg = snapshotData['FotoReg'] as String?;
    _dataAquis = snapshotData['DataAquis'] as DateTime?;
    _categoria = snapshotData['Categoria'] as String?;
    _dataCalib = snapshotData['DataCalib'] as DateTime?;
    _cicloCalib = snapshotData['CicloCalib'] as String?;
    _proxCalib = snapshotData['ProxCalib'] as String?;
    _emprestadoPara = snapshotData['EmprestadoPara'] as String?;
    _emprestadoQuando = snapshotData['EmprestadoQuando'] as DateTime?;
    _emprestadoAte = snapshotData['EmprestadoAte'] as DateTime?;
    _valorDaFerramenta = snapshotData['ValorDaFerramenta'] as String?;
    _marcaDaFerramenta = snapshotData['MarcaDaFerramenta'] as String?;
    _tipoDeEmprestimo = snapshotData['TipoDeEmprestimo'] as String?;
    _assEmprestadoRecebeu = snapshotData['AssEmprestadoRecebeu'] as String?;
    _assEmprestadoDevolveu = snapshotData['AssEmprestadoDevolveu'] as String?;
    _quemEmprestou = snapshotData['QuemEmprestou'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ferramentas');

  static Stream<FerramentasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FerramentasRecord.fromSnapshot(s));

  static Future<FerramentasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FerramentasRecord.fromSnapshot(s));

  static FerramentasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FerramentasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FerramentasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FerramentasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FerramentasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FerramentasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFerramentasRecordData({
  String? nome,
  String? codigo,
  String? desc,
  String? estado,
  String? status,
  String? fotoReg,
  DateTime? dataAquis,
  String? categoria,
  DateTime? dataCalib,
  String? cicloCalib,
  String? proxCalib,
  String? emprestadoPara,
  DateTime? emprestadoQuando,
  DateTime? emprestadoAte,
  String? valorDaFerramenta,
  String? marcaDaFerramenta,
  String? tipoDeEmprestimo,
  String? assEmprestadoRecebeu,
  String? assEmprestadoDevolveu,
  String? quemEmprestou,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Codigo': codigo,
      'Desc': desc,
      'Estado': estado,
      'Status': status,
      'FotoReg': fotoReg,
      'DataAquis': dataAquis,
      'Categoria': categoria,
      'DataCalib': dataCalib,
      'CicloCalib': cicloCalib,
      'ProxCalib': proxCalib,
      'EmprestadoPara': emprestadoPara,
      'EmprestadoQuando': emprestadoQuando,
      'EmprestadoAte': emprestadoAte,
      'ValorDaFerramenta': valorDaFerramenta,
      'MarcaDaFerramenta': marcaDaFerramenta,
      'TipoDeEmprestimo': tipoDeEmprestimo,
      'AssEmprestadoRecebeu': assEmprestadoRecebeu,
      'AssEmprestadoDevolveu': assEmprestadoDevolveu,
      'QuemEmprestou': quemEmprestou,
    }.withoutNulls,
  );

  return firestoreData;
}

class FerramentasRecordDocumentEquality implements Equality<FerramentasRecord> {
  const FerramentasRecordDocumentEquality();

  @override
  bool equals(FerramentasRecord? e1, FerramentasRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.codigo == e2?.codigo &&
        e1?.desc == e2?.desc &&
        e1?.estado == e2?.estado &&
        e1?.status == e2?.status &&
        e1?.fotoReg == e2?.fotoReg &&
        e1?.dataAquis == e2?.dataAquis &&
        e1?.categoria == e2?.categoria &&
        e1?.dataCalib == e2?.dataCalib &&
        e1?.cicloCalib == e2?.cicloCalib &&
        e1?.proxCalib == e2?.proxCalib &&
        e1?.emprestadoPara == e2?.emprestadoPara &&
        e1?.emprestadoQuando == e2?.emprestadoQuando &&
        e1?.emprestadoAte == e2?.emprestadoAte &&
        e1?.valorDaFerramenta == e2?.valorDaFerramenta &&
        e1?.marcaDaFerramenta == e2?.marcaDaFerramenta &&
        e1?.tipoDeEmprestimo == e2?.tipoDeEmprestimo &&
        e1?.assEmprestadoRecebeu == e2?.assEmprestadoRecebeu &&
        e1?.assEmprestadoDevolveu == e2?.assEmprestadoDevolveu &&
        e1?.quemEmprestou == e2?.quemEmprestou;
  }

  @override
  int hash(FerramentasRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.codigo,
        e?.desc,
        e?.estado,
        e?.status,
        e?.fotoReg,
        e?.dataAquis,
        e?.categoria,
        e?.dataCalib,
        e?.cicloCalib,
        e?.proxCalib,
        e?.emprestadoPara,
        e?.emprestadoQuando,
        e?.emprestadoAte,
        e?.valorDaFerramenta,
        e?.marcaDaFerramenta,
        e?.tipoDeEmprestimo,
        e?.assEmprestadoRecebeu,
        e?.assEmprestadoDevolveu,
        e?.quemEmprestou
      ]);

  @override
  bool isValidKey(Object? o) => o is FerramentasRecord;
}

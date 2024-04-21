import '../database.dart';

class BudgetsTable extends SupabaseTable<BudgetsRow> {
  @override
  String get tableName => 'budgets';

  @override
  BudgetsRow createRow(Map<String, dynamic> data) => BudgetsRow(data);
}

class BudgetsRow extends SupabaseDataRow {
  BudgetsRow(super.data);

  @override
  SupabaseTable get table => BudgetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}

import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://pbmtquailunhqjvmumbu.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBibXRxdWFpbHVuaHFqdm11bWJ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA2MTI4MTQsImV4cCI6MjAyNjE4ODgxNH0.yQBA4Z0_VZ3SZ8OEZ_q3VK50JZbV79NfyStXozJw3rM';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}

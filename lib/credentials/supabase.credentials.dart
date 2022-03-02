import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZmeHFob3l6aHR0emFvbmNsYWV3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDYyNDUxNTQsImV4cCI6MTk2MTgyMTE1NH0.uqEvcBzHB3TyzXFsosIQfPlc957iuOb5KowaQH8t0Ng";
  static const String APIURL = "https://vfxqhoyzhttzaonclaew.supabase.co";

  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}

import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pcWZtc2pua3R6ZXhpZnRma210Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDQ1OTk1ODksImV4cCI6MTk2MDE3NTU4OX0.-q-Lb0tkVzwSq8coX_cOvxUNMDHfn7o4G3eDE4WfRAA";
  static const String APIURL = "https://miqfmsjnktzexiftfkmt.supabase.co";

  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}

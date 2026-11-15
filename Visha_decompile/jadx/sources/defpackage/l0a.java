package defpackage;

import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

public class l0a extends TypeAdapter {
    @Override
    public String read2(JsonReader jsonReader) {
        try {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                Log.e("TypeAdapter", "null is not a string");
                return "";
            }
        } catch (Exception e) {
            Log.e("TypeAdapter", "Not a String", e);
        }
        return jsonReader.nextString();
    }

    @Override
    public void write(JsonWriter jsonWriter, String str) {
        try {
            if (str == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

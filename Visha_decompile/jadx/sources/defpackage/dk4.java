package defpackage;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import okhttp3.ResponseBody;

public final class dk4 implements si1 {
    public final Gson a;
    public final TypeAdapter b;

    public dk4(Gson gson, TypeAdapter typeAdapter) {
        this.a = gson;
        this.b = typeAdapter;
    }

    @Override
    public Object convert(ResponseBody responseBody) {
        JsonReader jsonReaderNewJsonReader = this.a.newJsonReader(responseBody.charStream());
        try {
            Object obj = this.b.read2(jsonReaderNewJsonReader);
            if (jsonReaderNewJsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonIOException("JSON document was not fully consumed.");
            }
            responseBody.close();
            return obj;
        } catch (Throwable th) {
            responseBody.close();
            throw th;
        }
    }
}

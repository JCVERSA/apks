package k00;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import okhttp3.ResponseBody;
import retrofit2.k;

final class c implements k {

    private final Gson f63481a;

    private final TypeAdapter f63482b;

    c(Gson gson, TypeAdapter typeAdapter) {
        this.f63481a = gson;
        this.f63482b = typeAdapter;
    }

    @Override
    public Object convert(ResponseBody responseBody) {
        JsonReader jsonReaderNewJsonReader = this.f63481a.newJsonReader(responseBody.charStream());
        try {
            Object obj = this.f63482b.read2(jsonReaderNewJsonReader);
            if (jsonReaderNewJsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonIOException("JSON document was not fully consumed.");
            }
            responseBody.close();
            return obj;
        } catch (Throwable th2) {
            responseBody.close();
            throw th2;
        }
    }
}

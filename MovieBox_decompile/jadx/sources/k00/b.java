package k00;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.k;

final class b implements k {

    private static final MediaType f63478c = MediaType.get("application/json; charset=UTF-8");

    private final Gson f63479a;

    private final TypeAdapter f63480b;

    b(Gson gson, TypeAdapter typeAdapter) {
        this.f63479a = gson;
        this.f63480b = typeAdapter;
    }

    @Override
    public RequestBody convert(Object obj) throws IOException {
        Buffer buffer = new Buffer();
        JsonWriter jsonWriterNewJsonWriter = this.f63479a.newJsonWriter(new OutputStreamWriter(buffer.outputStream(), StandardCharsets.UTF_8));
        this.f63480b.write(jsonWriterNewJsonWriter, obj);
        jsonWriterNewJsonWriter.close();
        return RequestBody.create(f63478c, buffer.readByteString());
    }
}

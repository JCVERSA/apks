package u8;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.io.Reader;

public abstract class b {
    static b a(long j10) {
        return new a(j10);
    }

    public static b b(Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        b bVarA = a(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return bVarA;
                    }
                    b bVarA2 = a(jsonReader.nextLong());
                    jsonReader.close();
                    return bVarA2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th2) {
            jsonReader.close();
            throw th2;
        }
    }

    public abstract long c();
}

package defpackage;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.io.Reader;

public abstract class yp5 {
    public static yp5 a(long j) {
        return new k30(j);
    }

    public static yp5 b(Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        yp5 yp5VarA = a(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return yp5VarA;
                    }
                    yp5 yp5VarA2 = a(jsonReader.nextLong());
                    jsonReader.close();
                    return yp5VarA2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }

    public abstract long c();
}

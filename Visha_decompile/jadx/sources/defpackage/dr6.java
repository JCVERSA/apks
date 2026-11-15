package defpackage;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.ByteString;

public final class dr6 implements si1 {
    public static final ByteString b = ByteString.decodeHex("EFBBBF");
    public final e a;

    public dr6(e eVar) {
        this.a = eVar;
    }

    @Override
    public Object convert(ResponseBody responseBody) {
        BufferedSource source = responseBody.getSource();
        try {
            ByteString byteString = b;
            if (source.rangeEquals(0L, byteString)) {
                source.skip(byteString.size());
            }
            JsonReader jsonReaderJ = JsonReader.J(source);
            Object objFromJson = this.a.fromJson(jsonReaderJ);
            if (jsonReaderJ.K() != JsonReader.Token.END_DOCUMENT) {
                throw new JsonDataException("JSON document was not fully consumed.");
            }
            responseBody.close();
            return objFromJson;
        } catch (Throwable th) {
            responseBody.close();
            throw th;
        }
    }
}

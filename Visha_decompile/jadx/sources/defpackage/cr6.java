package defpackage;

import com.squareup.moshi.e;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;

public final class cr6 implements si1 {
    public static final MediaType b = MediaType.get("application/json; charset=UTF-8");
    public final e a;

    public cr6(e eVar) {
        this.a = eVar;
    }

    @Override
    public RequestBody convert(Object obj) {
        Buffer buffer = new Buffer();
        this.a.toJson(rc5.F(buffer), obj);
        return RequestBody.create(b, buffer.readByteString());
    }
}

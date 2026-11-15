package defpackage;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;

public abstract class a7f {
    public static final Charset a = Charset.forName("UTF-8");
    public static final x6f b = new z6f();
    public static final v6f c = new v6f() {
        @Override
        public final Object a(JSONObject jSONObject) {
            return a7f.a(jSONObject);
        }
    };

    public static InputStream a(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(a));
    }
}

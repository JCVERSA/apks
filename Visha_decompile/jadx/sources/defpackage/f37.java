package defpackage;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;

public final class f37 extends e {
    public final e a;

    public f37(e eVar) {
        this.a = eVar;
    }

    @Override
    public Object fromJson(JsonReader jsonReader) {
        return jsonReader.K() == JsonReader.Token.NULL ? jsonReader.H() : this.a.fromJson(jsonReader);
    }

    @Override
    public void toJson(rc5 rc5Var, Object obj) {
        if (obj == null) {
            rc5Var.E();
        } else {
            this.a.toJson(rc5Var, obj);
        }
    }

    public String toString() {
        return this.a + ".nullSafe()";
    }
}

package defpackage;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;

public final class n17 extends e {
    public final e a;

    public n17(e eVar) {
        this.a = eVar;
    }

    @Override
    public Object fromJson(JsonReader jsonReader) {
        if (jsonReader.K() != JsonReader.Token.NULL) {
            return this.a.fromJson(jsonReader);
        }
        throw new JsonDataException("Unexpected null at " + jsonReader.getPath());
    }

    @Override
    public void toJson(rc5 rc5Var, Object obj) {
        if (obj != null) {
            this.a.toJson(rc5Var, obj);
            return;
        }
        throw new JsonDataException("Unexpected null at " + rc5Var.getPath());
    }

    public String toString() {
        return this.a + ".nonNull()";
    }
}

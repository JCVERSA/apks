package defpackage;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import com.squareup.moshi.j;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class w12 implements e.InterfaceC0196e {

    public static final class a extends e {
        public final e a;

        public a(e eVar) {
            this.a = eVar;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            y45.j(jsonReader, "reader");
            Object objN = jsonReader.N();
            if (!(objN instanceof Map)) {
                return this.a.fromJsonValue(objN);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : ((Map) objN).entrySet()) {
                if (entry.getValue() != null) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return this.a.fromJsonValue(linkedHashMap);
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            y45.j(rc5Var, "writer");
            this.a.toJson(rc5Var, obj);
        }
    }

    @Override
    public e a(Type type, Set set, j jVar) {
        y45.j(type, "type");
        y45.j(set, "annotations");
        y45.j(jVar, "moshi");
        return new a(jVar.h(this, type, set));
    }
}

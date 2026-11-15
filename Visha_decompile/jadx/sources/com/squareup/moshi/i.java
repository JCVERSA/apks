package com.squareup.moshi;

import defpackage.kdb;
import defpackage.rc5;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Set;

public final class i extends e {
    public static final e.InterfaceC0196e c = new a();
    public final e a;
    public final e b;

    public class a implements e.InterfaceC0196e {
        @Override
        public e a(Type type, Set set, j jVar) {
            Class clsG;
            if (!set.isEmpty() || (clsG = kdb.g(type)) != Map.class) {
                return null;
            }
            Type[] typeArrI = kdb.i(type, clsG);
            return new i(jVar, typeArrI[0], typeArrI[1]).nullSafe();
        }
    }

    public i(j jVar, Type type, Type type2) {
        this.a = jVar.d(type);
        this.b = jVar.d(type2);
    }

    @Override
    public Map fromJson(JsonReader jsonReader) {
        LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
        jsonReader.d();
        while (jsonReader.k()) {
            jsonReader.L();
            Object objFromJson = this.a.fromJson(jsonReader);
            Object objFromJson2 = this.b.fromJson(jsonReader);
            Object objPut = linkedHashTreeMap.put(objFromJson, objFromJson2);
            if (objPut != null) {
                throw new JsonDataException("Map key '" + objFromJson + "' has multiple values at path " + jsonReader.getPath() + ": " + objPut + " and " + objFromJson2);
            }
        }
        jsonReader.g();
        return linkedHashTreeMap;
    }

    @Override
    public void toJson(rc5 rc5Var, Map map) {
        rc5Var.d();
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() == null) {
                throw new JsonDataException("Map key is null at " + rc5Var.getPath());
            }
            rc5Var.H();
            this.a.toJson(rc5Var, entry.getKey());
            this.b.toJson(rc5Var, entry.getValue());
        }
        rc5Var.h();
    }

    public String toString() {
        return "JsonAdapter(" + this.a + "=" + this.b + ")";
    }
}

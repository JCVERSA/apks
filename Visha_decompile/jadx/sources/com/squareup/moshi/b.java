package com.squareup.moshi;

import defpackage.kdb;
import defpackage.rc5;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Set;

public final class b extends e {
    public static final e.InterfaceC0196e c = new a();
    public final Class a;
    public final e b;

    public class a implements e.InterfaceC0196e {
        @Override
        public e a(Type type, Set set, j jVar) {
            Type typeA = kdb.a(type);
            if (typeA != null && set.isEmpty()) {
                return new b(kdb.g(typeA), jVar.d(typeA)).nullSafe();
            }
            return null;
        }
    }

    public b(Class cls, e eVar) {
        this.a = cls;
        this.b = eVar;
    }

    @Override
    public Object fromJson(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.b();
        while (jsonReader.k()) {
            arrayList.add(this.b.fromJson(jsonReader));
        }
        jsonReader.e();
        Object objNewInstance = Array.newInstance((Class<?>) this.a, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }

    @Override
    public void toJson(rc5 rc5Var, Object obj) {
        rc5Var.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.b.toJson(rc5Var, Array.get(obj, i));
        }
        rc5Var.g();
    }

    public String toString() {
        return this.b + ".array()";
    }
}

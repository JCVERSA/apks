package com.squareup.moshi;

import defpackage.kdb;
import defpackage.rc5;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public abstract class d extends e {
    public static final e.InterfaceC0196e b = new a();
    public final e a;

    public class a implements e.InterfaceC0196e {
        @Override
        public e a(Type type, Set set, j jVar) {
            Class clsG = kdb.g(type);
            if (!set.isEmpty()) {
                return null;
            }
            if (clsG == List.class || clsG == Collection.class) {
                return d.b(type, jVar).nullSafe();
            }
            if (clsG == Set.class) {
                return d.d(type, jVar).nullSafe();
            }
            return null;
        }
    }

    public class b extends d {
        public b(e eVar) {
            super(eVar, null);
        }

        @Override
        public Collection c() {
            return new ArrayList();
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            return super.a(jsonReader);
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            super.e(rc5Var, (Collection) obj);
        }
    }

    public class c extends d {
        public c(e eVar) {
            super(eVar, null);
        }

        @Override
        public Set c() {
            return new LinkedHashSet();
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            return super.a(jsonReader);
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            super.e(rc5Var, (Collection) obj);
        }
    }

    public d(e eVar, a aVar) {
        this(eVar);
    }

    public static e b(Type type, j jVar) {
        return new b(jVar.d(kdb.c(type, Collection.class)));
    }

    public static e d(Type type, j jVar) {
        return new c(jVar.d(kdb.c(type, Collection.class)));
    }

    public Collection a(JsonReader jsonReader) {
        Collection collectionC = c();
        jsonReader.b();
        while (jsonReader.k()) {
            collectionC.add(this.a.fromJson(jsonReader));
        }
        jsonReader.e();
        return collectionC;
    }

    public abstract Collection c();

    public void e(rc5 rc5Var, Collection collection) {
        rc5Var.b();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            this.a.toJson(rc5Var, it.next());
        }
        rc5Var.g();
    }

    public String toString() {
        return this.a + ".collection()";
    }

    public d(e eVar) {
        this.a = eVar;
    }
}

package defpackage;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.reflect.KParameter;

public final class yg5 extends e {
    public final le5 a;
    public final List b;
    public final List c;
    public final JsonReader.b d;

    public static final class a {
        public final String a;
        public final e b;
        public final cf5 c;
        public final KParameter d;
        public final int e;

        public a(String str, e eVar, cf5 cf5Var, KParameter kParameter, int i) {
            y45.j(str, "jsonName");
            y45.j(eVar, "adapter");
            y45.j(cf5Var, "property");
            this.a = str;
            this.b = eVar;
            this.c = cf5Var;
            this.d = kParameter;
            this.e = i;
        }

        public static a b(a aVar, String str, e eVar, cf5 cf5Var, KParameter kParameter, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = aVar.a;
            }
            if ((i2 & 2) != 0) {
                eVar = aVar.b;
            }
            e eVar2 = eVar;
            if ((i2 & 4) != 0) {
                cf5Var = aVar.c;
            }
            cf5 cf5Var2 = cf5Var;
            if ((i2 & 8) != 0) {
                kParameter = aVar.d;
            }
            KParameter kParameter2 = kParameter;
            if ((i2 & 16) != 0) {
                i = aVar.e;
            }
            return aVar.a(str, eVar2, cf5Var2, kParameter2, i);
        }

        public final a a(String str, e eVar, cf5 cf5Var, KParameter kParameter, int i) {
            y45.j(str, "jsonName");
            y45.j(eVar, "adapter");
            y45.j(cf5Var, "property");
            return new a(str, eVar, cf5Var, kParameter, i);
        }

        public final Object c(Object obj) {
            return this.c.get(obj);
        }

        public final e d() {
            return this.b;
        }

        public final String e() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c) && y45.e(this.d, aVar.d) && this.e == aVar.e;
        }

        public final cf5 f() {
            return this.c;
        }

        public final int g() {
            return this.e;
        }

        public final void h(Object obj, Object obj2) {
            if (obj2 != ah5.b) {
                cf5 cf5Var = this.c;
                y45.h(cf5Var, "null cannot be cast to non-null type kotlin.reflect.KMutableProperty1<K of com.squareup.moshi.kotlin.reflect.KotlinJsonAdapter.Binding, P of com.squareup.moshi.kotlin.reflect.KotlinJsonAdapter.Binding>");
                ((xe5) cf5Var).set(obj, obj2);
            }
        }

        public int hashCode() {
            int iHashCode = ((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
            KParameter kParameter = this.d;
            return ((iHashCode + (kParameter == null ? 0 : kParameter.hashCode())) * 31) + Integer.hashCode(this.e);
        }

        public String toString() {
            return "Binding(jsonName=" + this.a + ", adapter=" + this.b + ", property=" + this.c + ", parameter=" + this.d + ", propertyIndex=" + this.e + ')';
        }
    }

    public static final class b extends l3 {
        public final List b;
        public final Object[] c;

        public b(List list, Object[] objArr) {
            y45.j(list, "parameterKeys");
            y45.j(objArr, "parameterValues");
            this.b = list;
            this.c = objArr;
        }

        @Override
        public Set b() {
            List list = this.b;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                arrayList.add(new AbstractMap.SimpleEntry((KParameter) obj, this.c[i]));
                i = i2;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj2 : arrayList) {
                if (((AbstractMap.SimpleEntry) obj2).getValue() != ah5.b) {
                    linkedHashSet.add(obj2);
                }
            }
            return linkedHashSet;
        }

        @Override
        public final boolean containsKey(Object obj) {
            if (obj instanceof KParameter) {
                return f((KParameter) obj);
            }
            return false;
        }

        public boolean f(KParameter kParameter) {
            y45.j(kParameter, "key");
            return this.c[kParameter.getIndex()] != ah5.b;
        }

        public Object g(KParameter kParameter) {
            y45.j(kParameter, "key");
            Object obj = this.c[kParameter.getIndex()];
            if (obj != ah5.b) {
                return obj;
            }
            return null;
        }

        @Override
        public final Object get(Object obj) {
            if (obj instanceof KParameter) {
                return g((KParameter) obj);
            }
            return null;
        }

        @Override
        public final Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof KParameter) ? obj2 : k((KParameter) obj, obj2);
        }

        public Object k(KParameter kParameter, Object obj) {
            return super.getOrDefault(kParameter, obj);
        }

        @Override
        public Object put(KParameter kParameter, Object obj) {
            y45.j(kParameter, "key");
            return null;
        }

        public Object m(KParameter kParameter) {
            return super.remove(kParameter);
        }

        public boolean n(KParameter kParameter, Object obj) {
            return super.remove(kParameter, obj);
        }

        @Override
        public final Object remove(Object obj) {
            if (obj instanceof KParameter) {
                return m((KParameter) obj);
            }
            return null;
        }

        @Override
        public final boolean remove(Object obj, Object obj2) {
            if (obj instanceof KParameter) {
                return n((KParameter) obj, obj2);
            }
            return false;
        }
    }

    public yg5(le5 le5Var, List list, List list2, JsonReader.b bVar) {
        y45.j(le5Var, "constructor");
        y45.j(list, "allBindings");
        y45.j(list2, "nonIgnoredBindings");
        y45.j(bVar, "options");
        this.a = le5Var;
        this.b = list;
        this.c = list2;
        this.d = bVar;
    }

    @Override
    public Object fromJson(JsonReader jsonReader) {
        y45.j(jsonReader, "reader");
        int size = this.a.getParameters().size();
        int size2 = this.b.size();
        Object[] objArr = new Object[size2];
        for (int i = 0; i < size2; i++) {
            objArr[i] = ah5.b;
        }
        jsonReader.d();
        while (jsonReader.k()) {
            int iO = jsonReader.O(this.d);
            if (iO == -1) {
                jsonReader.S();
                jsonReader.T();
            } else {
                a aVar = (a) this.c.get(iO);
                int iG = aVar.g();
                if (objArr[iG] != ah5.b) {
                    throw new JsonDataException("Multiple values for '" + aVar.f().getName() + "' at " + jsonReader.getPath());
                }
                Object objFromJson = aVar.d().fromJson(jsonReader);
                objArr[iG] = objFromJson;
                if (objFromJson == null && !aVar.f().getReturnType().k()) {
                    JsonDataException jsonDataExceptionW = wkb.w(aVar.f().getName(), aVar.e(), jsonReader);
                    y45.i(jsonDataExceptionW, "unexpectedNull(\n        …         reader\n        )");
                    throw jsonDataExceptionW;
                }
            }
        }
        jsonReader.g();
        boolean z = this.b.size() == size;
        for (int i2 = 0; i2 < size; i2++) {
            if (objArr[i2] == ah5.b) {
                if (((KParameter) this.a.getParameters().get(i2)).f()) {
                    z = false;
                } else {
                    if (!((KParameter) this.a.getParameters().get(i2)).getType().k()) {
                        String name = ((KParameter) this.a.getParameters().get(i2)).getName();
                        a aVar2 = (a) this.b.get(i2);
                        JsonDataException jsonDataExceptionO = wkb.o(name, aVar2 != null ? aVar2.e() : null, jsonReader);
                        y45.i(jsonDataExceptionO, "missingProperty(\n       …       reader\n          )");
                        throw jsonDataExceptionO;
                    }
                    objArr[i2] = null;
                }
            }
        }
        Object objCall = z ? this.a.call(Arrays.copyOf(objArr, size2)) : this.a.callBy(new b(this.a.getParameters(), objArr));
        int size3 = this.b.size();
        while (size < size3) {
            Object obj = this.b.get(size);
            y45.g(obj);
            ((a) obj).h(objCall, objArr[size]);
            size++;
        }
        return objCall;
    }

    @Override
    public void toJson(rc5 rc5Var, Object obj) {
        y45.j(rc5Var, "writer");
        if (obj == null) {
            throw new NullPointerException("value == null");
        }
        rc5Var.d();
        for (a aVar : this.b) {
            if (aVar != null) {
                rc5Var.D(aVar.e());
                aVar.d().toJson(rc5Var, aVar.c(obj));
            }
        }
        rc5Var.h();
    }

    public String toString() {
        return "KotlinJsonAdapter(" + this.a.getReturnType() + ')';
    }
}

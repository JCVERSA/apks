package com.squareup.moshi;

import defpackage.kdb;
import defpackage.rc5;
import defpackage.wkb;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class l {
    public static final com.squareup.moshi.e.InterfaceC0196e a = new c();
    public static final com.squareup.moshi.e b = new d();
    public static final com.squareup.moshi.e c = new e();
    public static final com.squareup.moshi.e d = new f();
    public static final com.squareup.moshi.e e = new g();
    public static final com.squareup.moshi.e f = new h();
    public static final com.squareup.moshi.e g = new i();
    public static final com.squareup.moshi.e h = new j();
    public static final com.squareup.moshi.e i = new k();
    public static final com.squareup.moshi.e j = new a();

    public class a extends com.squareup.moshi.e {
        @Override
        public String fromJson(JsonReader jsonReader) {
            return jsonReader.I();
        }

        @Override
        public void toJson(rc5 rc5Var, String str) {
            rc5Var.Q(str);
        }

        public String toString() {
            return "JsonAdapter(String)";
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            a = iArr;
            try {
                iArr[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonReader.Token.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[JsonReader.Token.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[JsonReader.Token.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[JsonReader.Token.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class c implements com.squareup.moshi.e.InterfaceC0196e {
        @Override
        public com.squareup.moshi.e a(Type type, Set set, com.squareup.moshi.j jVar) throws NoSuchMethodException {
            if (!set.isEmpty()) {
                return null;
            }
            if (type == Boolean.TYPE) {
                return l.b;
            }
            if (type == Byte.TYPE) {
                return l.c;
            }
            if (type == Character.TYPE) {
                return l.d;
            }
            if (type == Double.TYPE) {
                return l.e;
            }
            if (type == Float.TYPE) {
                return l.f;
            }
            if (type == Integer.TYPE) {
                return l.g;
            }
            if (type == Long.TYPE) {
                return l.h;
            }
            if (type == Short.TYPE) {
                return l.i;
            }
            if (type == Boolean.class) {
                return l.b.nullSafe();
            }
            if (type == Byte.class) {
                return l.c.nullSafe();
            }
            if (type == Character.class) {
                return l.d.nullSafe();
            }
            if (type == Double.class) {
                return l.e.nullSafe();
            }
            if (type == Float.class) {
                return l.f.nullSafe();
            }
            if (type == Integer.class) {
                return l.g.nullSafe();
            }
            if (type == Long.class) {
                return l.h.nullSafe();
            }
            if (type == Short.class) {
                return l.i.nullSafe();
            }
            if (type == String.class) {
                return l.j.nullSafe();
            }
            if (type == Object.class) {
                return new m(jVar).nullSafe();
            }
            Class clsG = kdb.g(type);
            com.squareup.moshi.e eVarD = wkb.d(jVar, type, clsG);
            if (eVarD != null) {
                return eVarD;
            }
            if (clsG.isEnum()) {
                return new C0197l(clsG).nullSafe();
            }
            return null;
        }
    }

    public class d extends com.squareup.moshi.e {
        @Override
        public Boolean fromJson(JsonReader jsonReader) {
            return Boolean.valueOf(jsonReader.o());
        }

        @Override
        public void toJson(rc5 rc5Var, Boolean bool) {
            rc5Var.R(bool.booleanValue());
        }

        public String toString() {
            return "JsonAdapter(Boolean)";
        }
    }

    public class e extends com.squareup.moshi.e {
        @Override
        public Byte fromJson(JsonReader jsonReader) {
            return Byte.valueOf((byte) l.a(jsonReader, "a byte", -128, 255));
        }

        @Override
        public void toJson(rc5 rc5Var, Byte b) {
            rc5Var.O(b.intValue() & 255);
        }

        public String toString() {
            return "JsonAdapter(Byte)";
        }
    }

    public class f extends com.squareup.moshi.e {
        @Override
        public Character fromJson(JsonReader jsonReader) {
            String strI = jsonReader.I();
            if (strI.length() <= 1) {
                return Character.valueOf(strI.charAt(0));
            }
            throw new JsonDataException(String.format("Expected %s but was %s at path %s", "a char", '\"' + strI + '\"', jsonReader.getPath()));
        }

        @Override
        public void toJson(rc5 rc5Var, Character ch) {
            rc5Var.Q(ch.toString());
        }

        public String toString() {
            return "JsonAdapter(Character)";
        }
    }

    public class g extends com.squareup.moshi.e {
        @Override
        public Double fromJson(JsonReader jsonReader) {
            return Double.valueOf(jsonReader.D());
        }

        @Override
        public void toJson(rc5 rc5Var, Double d) {
            rc5Var.N(d.doubleValue());
        }

        public String toString() {
            return "JsonAdapter(Double)";
        }
    }

    public class h extends com.squareup.moshi.e {
        @Override
        public Float fromJson(JsonReader jsonReader) {
            float fD = (float) jsonReader.D();
            if (jsonReader.n() || !Float.isInfinite(fD)) {
                return Float.valueOf(fD);
            }
            throw new JsonDataException("JSON forbids NaN and infinities: " + fD + " at path " + jsonReader.getPath());
        }

        @Override
        public void toJson(rc5 rc5Var, Float f) {
            f.getClass();
            rc5Var.P(f);
        }

        public String toString() {
            return "JsonAdapter(Float)";
        }
    }

    public class i extends com.squareup.moshi.e {
        @Override
        public Integer fromJson(JsonReader jsonReader) {
            return Integer.valueOf(jsonReader.E());
        }

        @Override
        public void toJson(rc5 rc5Var, Integer num) {
            rc5Var.O(num.intValue());
        }

        public String toString() {
            return "JsonAdapter(Integer)";
        }
    }

    public class j extends com.squareup.moshi.e {
        @Override
        public Long fromJson(JsonReader jsonReader) {
            return Long.valueOf(jsonReader.F());
        }

        @Override
        public void toJson(rc5 rc5Var, Long l) {
            rc5Var.O(l.longValue());
        }

        public String toString() {
            return "JsonAdapter(Long)";
        }
    }

    public class k extends com.squareup.moshi.e {
        @Override
        public Short fromJson(JsonReader jsonReader) {
            return Short.valueOf((short) l.a(jsonReader, "a short", -32768, 32767));
        }

        @Override
        public void toJson(rc5 rc5Var, Short sh) {
            rc5Var.O(sh.intValue());
        }

        public String toString() {
            return "JsonAdapter(Short)";
        }
    }

    public static final class C0197l extends com.squareup.moshi.e {
        public final Class a;
        public final String[] b;
        public final Enum[] c;
        public final JsonReader.b d;

        public C0197l(Class cls) {
            this.a = cls;
            try {
                Enum[] enumArr = (Enum[]) cls.getEnumConstants();
                this.c = enumArr;
                this.b = new String[enumArr.length];
                int i = 0;
                while (true) {
                    Enum[] enumArr2 = this.c;
                    if (i >= enumArr2.length) {
                        this.d = JsonReader.b.a(this.b);
                        return;
                    } else {
                        String strName = enumArr2[i].name();
                        this.b[i] = wkb.n(strName, cls.getField(strName));
                        i++;
                    }
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError("Missing field in " + cls.getName(), e);
            }
        }

        @Override
        public Enum fromJson(JsonReader jsonReader) {
            int iP = jsonReader.P(this.d);
            if (iP != -1) {
                return this.c[iP];
            }
            String path = jsonReader.getPath();
            throw new JsonDataException("Expected one of " + Arrays.asList(this.b) + " but was " + jsonReader.I() + " at path " + path);
        }

        @Override
        public void toJson(rc5 rc5Var, Enum r2) {
            rc5Var.Q(this.b[r2.ordinal()]);
        }

        public String toString() {
            return "JsonAdapter(" + this.a.getName() + ")";
        }
    }

    public static final class m extends com.squareup.moshi.e {
        public final com.squareup.moshi.j a;
        public final com.squareup.moshi.e b;
        public final com.squareup.moshi.e c;
        public final com.squareup.moshi.e d;
        public final com.squareup.moshi.e e;
        public final com.squareup.moshi.e f;

        public m(com.squareup.moshi.j jVar) {
            this.a = jVar;
            this.b = jVar.c(List.class);
            this.c = jVar.c(Map.class);
            this.d = jVar.c(String.class);
            this.e = jVar.c(Double.class);
            this.f = jVar.c(Boolean.class);
        }

        public final Class a(Class cls) {
            if (Map.class.isAssignableFrom(cls)) {
                return Map.class;
            }
            return Collection.class.isAssignableFrom(cls) ? Collection.class : cls;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            switch (b.a[jsonReader.K().ordinal()]) {
                case 1:
                    return this.b.fromJson(jsonReader);
                case 2:
                    return this.c.fromJson(jsonReader);
                case 3:
                    return this.d.fromJson(jsonReader);
                case 4:
                    return this.e.fromJson(jsonReader);
                case 5:
                    return this.f.fromJson(jsonReader);
                case 6:
                    return jsonReader.H();
                default:
                    throw new IllegalStateException("Expected a value but was " + jsonReader.K() + " at path " + jsonReader.getPath());
            }
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            Class<?> cls = obj.getClass();
            if (cls != Object.class) {
                this.a.e(a(cls), wkb.a).toJson(rc5Var, obj);
            } else {
                rc5Var.d();
                rc5Var.h();
            }
        }

        public String toString() {
            return "JsonAdapter(Object)";
        }
    }

    public static int a(JsonReader jsonReader, String str, int i2, int i3) {
        int iE = jsonReader.E();
        if (iE < i2 || iE > i3) {
            throw new JsonDataException(String.format("Expected %s but was %s at path %s", str, Integer.valueOf(iE), jsonReader.getPath()));
        }
        return iE;
    }
}

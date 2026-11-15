package androidx.navigation;

import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

public abstract class o {

    public static final l f13624c = new l(null);

    public static final o f13625d = new f();

    public static final o f13626e = new i();

    public static final o f13627f = new e();

    public static final o f13628g = new h();

    public static final o f13629h = new g();

    public static final o f13630i = new d();

    public static final o f13631j = new c();

    public static final o f13632k = new b();

    public static final o f13633l = new a();

    public static final o f13634m = new k();

    public static final o f13635n = new j();

    private final boolean f13636a;

    private final String f13637b = "nav_type";

    public static final class a extends o {
        a() {
            super(true);
        }

        @Override
        public String b() {
            return "boolean[]";
        }

        @Override
        public boolean[] a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (boolean[]) bundle.get(key);
        }

        @Override
        public boolean[] h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override
        public void f(Bundle bundle, String key, boolean[] zArr) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putBooleanArray(key, zArr);
        }
    }

    public static final class b extends o {
        b() {
            super(false);
        }

        @Override
        public String b() {
            return "boolean";
        }

        @Override
        public void f(Bundle bundle, String str, Object obj) {
            i(bundle, str, ((Boolean) obj).booleanValue());
        }

        @Override
        public Boolean a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (Boolean) bundle.get(key);
        }

        @Override
        public Boolean h(String value) {
            boolean z10;
            Intrinsics.h(value, "value");
            if (Intrinsics.c(value, "true")) {
                z10 = true;
            } else {
                if (!Intrinsics.c(value, "false")) {
                    throw new IllegalArgumentException("A boolean NavType only accepts \"true\" or \"false\" values.");
                }
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }

        public void i(Bundle bundle, String key, boolean z10) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putBoolean(key, z10);
        }
    }

    public static final class c extends o {
        c() {
            super(true);
        }

        @Override
        public String b() {
            return "float[]";
        }

        @Override
        public float[] a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (float[]) bundle.get(key);
        }

        @Override
        public float[] h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override
        public void f(Bundle bundle, String key, float[] fArr) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putFloatArray(key, fArr);
        }
    }

    public static final class d extends o {
        d() {
            super(false);
        }

        @Override
        public String b() {
            return "float";
        }

        @Override
        public void f(Bundle bundle, String str, Object obj) {
            i(bundle, str, ((Number) obj).floatValue());
        }

        @Override
        public Float a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return (Float) obj;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
        }

        @Override
        public Float h(String value) {
            Intrinsics.h(value, "value");
            return Float.valueOf(Float.parseFloat(value));
        }

        public void i(Bundle bundle, String key, float f10) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putFloat(key, f10);
        }
    }

    public static final class e extends o {
        e() {
            super(true);
        }

        @Override
        public String b() {
            return "integer[]";
        }

        @Override
        public int[] a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (int[]) bundle.get(key);
        }

        @Override
        public int[] h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override
        public void f(Bundle bundle, String key, int[] iArr) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putIntArray(key, iArr);
        }
    }

    public static final class f extends o {
        f() {
            super(false);
        }

        @Override
        public String b() {
            return "integer";
        }

        @Override
        public void f(Bundle bundle, String str, Object obj) {
            i(bundle, str, ((Number) obj).intValue());
        }

        @Override
        public Integer a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return (Integer) obj;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }

        @Override
        public Integer h(String value) {
            int i10;
            Intrinsics.h(value, "value");
            if (StringsKt.W(value, "0x", false, 2, null)) {
                String strSubstring = value.substring(2);
                Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
                i10 = Integer.parseInt(strSubstring, CharsKt.a(16));
            } else {
                i10 = Integer.parseInt(value);
            }
            return Integer.valueOf(i10);
        }

        public void i(Bundle bundle, String key, int i10) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putInt(key, i10);
        }
    }

    public static final class g extends o {
        g() {
            super(true);
        }

        @Override
        public String b() {
            return "long[]";
        }

        @Override
        public long[] a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (long[]) bundle.get(key);
        }

        @Override
        public long[] h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override
        public void f(Bundle bundle, String key, long[] jArr) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putLongArray(key, jArr);
        }
    }

    public static final class h extends o {
        h() {
            super(false);
        }

        @Override
        public String b() {
            return "long";
        }

        @Override
        public void f(Bundle bundle, String str, Object obj) {
            i(bundle, str, ((Number) obj).longValue());
        }

        @Override
        public Long a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return (Long) obj;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
        }

        @Override
        public Long h(String value) {
            String strSubstring;
            long j10;
            Intrinsics.h(value, "value");
            if (StringsKt.G(value, "L", false, 2, null)) {
                strSubstring = value.substring(0, value.length() - 1);
                Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            } else {
                strSubstring = value;
            }
            if (StringsKt.W(value, "0x", false, 2, null)) {
                String strSubstring2 = strSubstring.substring(2);
                Intrinsics.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
                j10 = Long.parseLong(strSubstring2, CharsKt.a(16));
            } else {
                j10 = Long.parseLong(strSubstring);
            }
            return Long.valueOf(j10);
        }

        public void i(Bundle bundle, String key, long j10) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putLong(key, j10);
        }
    }

    public static final class i extends o {
        i() {
            super(false);
        }

        @Override
        public String b() {
            return "reference";
        }

        @Override
        public void f(Bundle bundle, String str, Object obj) {
            i(bundle, str, ((Number) obj).intValue());
        }

        @Override
        public Integer a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return (Integer) obj;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }

        @Override
        public Integer h(String value) {
            int i10;
            Intrinsics.h(value, "value");
            if (StringsKt.W(value, "0x", false, 2, null)) {
                String strSubstring = value.substring(2);
                Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
                i10 = Integer.parseInt(strSubstring, CharsKt.a(16));
            } else {
                i10 = Integer.parseInt(value);
            }
            return Integer.valueOf(i10);
        }

        public void i(Bundle bundle, String key, int i10) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putInt(key, i10);
        }
    }

    public static final class j extends o {
        j() {
            super(true);
        }

        @Override
        public String b() {
            return "string[]";
        }

        @Override
        public String[] a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (String[]) bundle.get(key);
        }

        @Override
        public String[] h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override
        public void f(Bundle bundle, String key, String[] strArr) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putStringArray(key, strArr);
        }
    }

    public static final class k extends o {
        k() {
            super(true);
        }

        @Override
        public String b() {
            return "string";
        }

        @Override
        public String a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (String) bundle.get(key);
        }

        @Override
        public String h(String value) {
            Intrinsics.h(value, "value");
            return value;
        }

        @Override
        public void f(Bundle bundle, String key, String str) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            bundle.putString(key, str);
        }
    }

    public static final class l {
        public l(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public o a(String str, String str2) {
            o oVar = o.f13625d;
            if (Intrinsics.c(oVar.b(), str)) {
                return oVar;
            }
            o oVar2 = o.f13627f;
            if (Intrinsics.c(oVar2.b(), str)) {
                return oVar2;
            }
            o oVar3 = o.f13628g;
            if (Intrinsics.c(oVar3.b(), str)) {
                return oVar3;
            }
            o oVar4 = o.f13629h;
            if (Intrinsics.c(oVar4.b(), str)) {
                return oVar4;
            }
            o oVar5 = o.f13632k;
            if (Intrinsics.c(oVar5.b(), str)) {
                return oVar5;
            }
            o oVar6 = o.f13633l;
            if (Intrinsics.c(oVar6.b(), str)) {
                return oVar6;
            }
            o oVar7 = o.f13634m;
            if (Intrinsics.c(oVar7.b(), str)) {
                return oVar7;
            }
            o oVar8 = o.f13635n;
            if (Intrinsics.c(oVar8.b(), str)) {
                return oVar8;
            }
            o oVar9 = o.f13630i;
            if (Intrinsics.c(oVar9.b(), str)) {
                return oVar9;
            }
            o oVar10 = o.f13631j;
            if (Intrinsics.c(oVar10.b(), str)) {
                return oVar10;
            }
            o oVar11 = o.f13626e;
            if (Intrinsics.c(oVar11.b(), str)) {
                return oVar11;
            }
            if (str == null || str.length() == 0) {
                return oVar7;
            }
            try {
                String strQ = (!StringsKt.W(str, ".", false, 2, null) || str2 == null) ? str : Intrinsics.q(str2, str);
                if (StringsKt.G(str, "[]", false, 2, null)) {
                    strQ = strQ.substring(0, strQ.length() - 2);
                    Intrinsics.g(strQ, "this as java.lang.String…ing(startIndex, endIndex)");
                    Class<?> cls = Class.forName(strQ);
                    if (Parcelable.class.isAssignableFrom(cls)) {
                        return new n(cls);
                    }
                    if (Serializable.class.isAssignableFrom(cls)) {
                        return new p(cls);
                    }
                } else {
                    Class<?> cls2 = Class.forName(strQ);
                    if (Parcelable.class.isAssignableFrom(cls2)) {
                        return new C0101o(cls2);
                    }
                    if (Enum.class.isAssignableFrom(cls2)) {
                        return new m(cls2);
                    }
                    if (Serializable.class.isAssignableFrom(cls2)) {
                        return new q(cls2);
                    }
                }
                throw new IllegalArgumentException(Intrinsics.q(strQ, " is not Serializable or Parcelable."));
            } catch (ClassNotFoundException e10) {
                throw new RuntimeException(e10);
            }
        }

        public final o b(String value) {
            Intrinsics.h(value, "value");
            try {
                try {
                    try {
                        try {
                            o oVar = o.f13625d;
                            oVar.h(value);
                            return oVar;
                        } catch (IllegalArgumentException unused) {
                            o oVar2 = o.f13630i;
                            oVar2.h(value);
                            return oVar2;
                        }
                    } catch (IllegalArgumentException unused2) {
                        o oVar3 = o.f13628g;
                        oVar3.h(value);
                        return oVar3;
                    }
                } catch (IllegalArgumentException unused3) {
                    return o.f13634m;
                }
            } catch (IllegalArgumentException unused4) {
                o oVar4 = o.f13632k;
                oVar4.h(value);
                return oVar4;
            }
        }

        /* JADX WARN: Code duplicated, block: B:45:0x008e  */
        /* JADX WARN: Code duplicated, block: B:47:0x0098  */
        /* JADX WARN: Code duplicated, block: B:49:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:51:0x00b7  */
        /* JADX WARN: Code duplicated, block: B:52:0x00bb  */
        /* JADX WARN: Code duplicated, block: B:54:0x00c3  */
        /* JADX WARN: Code duplicated, block: B:56:0x00c7  */
        /* JADX WARN: Code duplicated, block: B:57:0x00d1  */
        /* JADX WARN: Code duplicated, block: B:59:0x00d5  */
        /* JADX WARN: Code duplicated, block: B:60:0x00df  */
        /* JADX WARN: Code duplicated, block: B:62:0x00e3  */
        /* JADX WARN: Code duplicated, block: B:63:0x00ed  */
        /* JADX WARN: Instruction removed from duplicated block: B:63:0x00ed, please report this as an issue */
        public final o c(Object obj) {
            o qVar;
            Class<?> componentType;
            Class<?> componentType2;
            if (obj instanceof Integer) {
                return o.f13625d;
            }
            if (obj instanceof int[]) {
                return o.f13627f;
            }
            if (obj instanceof Long) {
                return o.f13628g;
            }
            if (obj instanceof long[]) {
                return o.f13629h;
            }
            if (obj instanceof Float) {
                return o.f13630i;
            }
            if (obj instanceof float[]) {
                return o.f13631j;
            }
            if (obj instanceof Boolean) {
                return o.f13632k;
            }
            if (obj instanceof boolean[]) {
                return o.f13633l;
            }
            if ((obj instanceof String) || obj == null) {
                return o.f13634m;
            }
            if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
                return o.f13635n;
            }
            if (obj.getClass().isArray()) {
                Class<?> componentType3 = obj.getClass().getComponentType();
                Intrinsics.e(componentType3);
                if (Parcelable.class.isAssignableFrom(componentType3)) {
                    Class<?> componentType4 = obj.getClass().getComponentType();
                    if (componentType4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<android.os.Parcelable>");
                    }
                    qVar = new n(componentType4);
                } else if (obj.getClass().isArray()) {
                    componentType = obj.getClass().getComponentType();
                    Intrinsics.e(componentType);
                    if (Serializable.class.isAssignableFrom(componentType)) {
                        componentType2 = obj.getClass().getComponentType();
                        if (componentType2 != null) {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                        }
                        qVar = new p(componentType2);
                    } else if (obj instanceof Parcelable) {
                        qVar = new C0101o(obj.getClass());
                    } else if (obj instanceof Enum) {
                        qVar = new m(obj.getClass());
                    } else {
                        if (obj instanceof Serializable) {
                            throw new IllegalArgumentException("Object of type " + ((Object) obj.getClass().getName()) + " is not supported for navigation arguments.");
                        }
                        qVar = new q(obj.getClass());
                    }
                } else if (obj instanceof Parcelable) {
                    qVar = new C0101o(obj.getClass());
                } else if (obj instanceof Enum) {
                    qVar = new m(obj.getClass());
                } else {
                    if (obj instanceof Serializable) {
                        throw new IllegalArgumentException("Object of type " + ((Object) obj.getClass().getName()) + " is not supported for navigation arguments.");
                    }
                    qVar = new q(obj.getClass());
                }
            } else if (obj.getClass().isArray()) {
                componentType = obj.getClass().getComponentType();
                Intrinsics.e(componentType);
                if (Serializable.class.isAssignableFrom(componentType)) {
                    componentType2 = obj.getClass().getComponentType();
                    if (componentType2 != null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                    }
                    qVar = new p(componentType2);
                } else if (obj instanceof Parcelable) {
                    qVar = new C0101o(obj.getClass());
                } else if (obj instanceof Enum) {
                    qVar = new m(obj.getClass());
                } else {
                    if (obj instanceof Serializable) {
                        throw new IllegalArgumentException("Object of type " + ((Object) obj.getClass().getName()) + " is not supported for navigation arguments.");
                    }
                    qVar = new q(obj.getClass());
                }
            } else if (obj instanceof Parcelable) {
                qVar = new C0101o(obj.getClass());
            } else if (obj instanceof Enum) {
                qVar = new m(obj.getClass());
            } else {
                if (obj instanceof Serializable) {
                    throw new IllegalArgumentException("Object of type " + ((Object) obj.getClass().getName()) + " is not supported for navigation arguments.");
                }
                qVar = new q(obj.getClass());
            }
            return qVar;
        }

        private l() {
        }
    }

    public static final class m extends q {

        private final Class f13638p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(Class type) {
            super(false, type);
            Intrinsics.h(type, "type");
            if (type.isEnum()) {
                this.f13638p = type;
                return;
            }
            throw new IllegalArgumentException((type + " is not an Enum type.").toString());
        }

        @Override
        public String b() {
            String name = this.f13638p.getName();
            Intrinsics.g(name, "type.name");
            return name;
        }

        @Override
        public Enum h(String value) {
            Object obj;
            Intrinsics.h(value, "value");
            Object[] enumConstants = this.f13638p.getEnumConstants();
            Intrinsics.g(enumConstants, "type.enumConstants");
            int length = enumConstants.length;
            int i10 = 0;
            do {
                if (i10 >= length) {
                    obj = null;
                    break;
                }
                obj = enumConstants[i10];
                i10++;
            } while (!StringsKt.H(((Enum) obj).name(), value, true));
            Enum r10 = (Enum) obj;
            if (r10 != null) {
                return r10;
            }
            throw new IllegalArgumentException("Enum value " + value + " not found for type " + ((Object) this.f13638p.getName()) + '.');
        }
    }

    public static final class n extends o {

        private final Class f13639o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(Class type) {
            super(true);
            Intrinsics.h(type, "type");
            if (!Parcelable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Parcelable.").toString());
            }
            try {
                this.f13639o = Class.forName("[L" + ((Object) type.getName()) + ';');
            } catch (ClassNotFoundException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public String b() {
            String name = this.f13639o.getName();
            Intrinsics.g(name, "arrayType.name");
            return name;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Intrinsics.c(n.class, obj.getClass())) {
                return false;
            }
            return Intrinsics.c(this.f13639o, ((n) obj).f13639o);
        }

        @Override
        public Parcelable[] a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (Parcelable[]) bundle.get(key);
        }

        @Override
        public Parcelable[] h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        public int hashCode() {
            return this.f13639o.hashCode();
        }

        @Override
        public void f(Bundle bundle, String key, Parcelable[] parcelableArr) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            this.f13639o.cast(parcelableArr);
            bundle.putParcelableArray(key, parcelableArr);
        }
    }

    public static final class C0101o extends o {

        private final Class f13640o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0101o(Class type) {
            super(true);
            Intrinsics.h(type, "type");
            if (Parcelable.class.isAssignableFrom(type) || Serializable.class.isAssignableFrom(type)) {
                this.f13640o = type;
                return;
            }
            throw new IllegalArgumentException((type + " does not implement Parcelable or Serializable.").toString());
        }

        @Override
        public Object a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return bundle.get(key);
        }

        @Override
        public String b() {
            String name = this.f13640o.getName();
            Intrinsics.g(name, "type.name");
            return name;
        }

        @Override
        public Object h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Intrinsics.c(C0101o.class, obj.getClass())) {
                return false;
            }
            return Intrinsics.c(this.f13640o, ((C0101o) obj).f13640o);
        }

        @Override
        public void f(Bundle bundle, String key, Object obj) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            this.f13640o.cast(obj);
            if (obj == null || (obj instanceof Parcelable)) {
                bundle.putParcelable(key, (Parcelable) obj);
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(key, (Serializable) obj);
            }
        }

        public int hashCode() {
            return this.f13640o.hashCode();
        }
    }

    public static final class p extends o {

        private final Class f13641o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(Class type) {
            super(true);
            Intrinsics.h(type, "type");
            if (!Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
            }
            try {
                this.f13641o = Class.forName("[L" + ((Object) type.getName()) + ';');
            } catch (ClassNotFoundException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public String b() {
            String name = this.f13641o.getName();
            Intrinsics.g(name, "arrayType.name");
            return name;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Intrinsics.c(p.class, obj.getClass())) {
                return false;
            }
            return Intrinsics.c(this.f13641o, ((p) obj).f13641o);
        }

        @Override
        public Serializable[] a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (Serializable[]) bundle.get(key);
        }

        @Override
        public Serializable[] h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        public int hashCode() {
            return this.f13641o.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void f(Bundle bundle, String key, Serializable[] serializableArr) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            this.f13641o.cast(serializableArr);
            bundle.putSerializable(key, serializableArr);
        }
    }

    public o(boolean z10) {
        this.f13636a = z10;
    }

    public abstract Object a(Bundle bundle, String str);

    public abstract String b();

    public boolean c() {
        return this.f13636a;
    }

    public final Object d(Bundle bundle, String key, String value) {
        Intrinsics.h(bundle, "bundle");
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        Object objH = h(value);
        f(bundle, key, objH);
        return objH;
    }

    public abstract Object h(String str);

    public abstract void f(Bundle bundle, String str, Object obj);

    public String toString() {
        return b();
    }

    public static class q extends o {

        private final Class f13642o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(Class type) {
            super(true);
            Intrinsics.h(type, "type");
            if (!Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
            }
            if (!type.isEnum()) {
                this.f13642o = type;
                return;
            }
            throw new IllegalArgumentException((type + " is an Enum. You should use EnumType instead.").toString());
        }

        @Override
        public String b() {
            String name = this.f13642o.getName();
            Intrinsics.g(name, "type.name");
            return name;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof q) {
                return Intrinsics.c(this.f13642o, ((q) obj).f13642o);
            }
            return false;
        }

        @Override
        public Serializable a(Bundle bundle, String key) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            return (Serializable) bundle.get(key);
        }

        @Override
        public Serializable h(String value) {
            Intrinsics.h(value, "value");
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        public int hashCode() {
            return this.f13642o.hashCode();
        }

        @Override
        public void f(Bundle bundle, String key, Serializable value) {
            Intrinsics.h(bundle, "bundle");
            Intrinsics.h(key, "key");
            Intrinsics.h(value, "value");
            this.f13642o.cast(value);
            bundle.putSerializable(key, value);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(boolean z10, Class type) {
            super(z10);
            Intrinsics.h(type, "type");
            if (Serializable.class.isAssignableFrom(type)) {
                this.f13642o = type;
                return;
            }
            throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
        }
    }
}

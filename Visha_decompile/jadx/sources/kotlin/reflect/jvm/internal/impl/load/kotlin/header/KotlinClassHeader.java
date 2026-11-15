package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import defpackage.fi;
import defpackage.jd5;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class KotlinClassHeader {
    public final Kind a;
    public final jd5 b;
    public final String[] c;
    public final String[] d;
    public final String[] e;
    public final String f;
    public final int g;
    public final String h;
    public final byte[] i;

    public enum Kind {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);

        public static final a Companion = new a(null);
        private static final Map<Integer, Kind> entryById;
        private final int id;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Kind a(int i) {
                Kind kind = (Kind) Kind.entryById.get(Integer.valueOf(i));
                return kind == null ? Kind.UNKNOWN : kind;
            }

            public a() {
            }
        }

        static {
            Kind[] kindArrValues = values();
            LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(kindArrValues.length), 16));
            for (Kind kind : kindArrValues) {
                linkedHashMap.put(Integer.valueOf(kind.id), kind);
            }
            entryById = linkedHashMap;
        }

        Kind(int i) {
            this.id = i;
        }

        public static final Kind getById(int i) {
            return Companion.a(i);
        }
    }

    public KotlinClassHeader(Kind kind, jd5 jd5Var, String[] strArr, String[] strArr2, String[] strArr3, String str, int i, String str2, byte[] bArr) {
        y45.j(kind, "kind");
        y45.j(jd5Var, "metadataVersion");
        this.a = kind;
        this.b = jd5Var;
        this.c = strArr;
        this.d = strArr2;
        this.e = strArr3;
        this.f = str;
        this.g = i;
        this.h = str2;
        this.i = bArr;
    }

    public final String[] a() {
        return this.c;
    }

    public final String[] b() {
        return this.d;
    }

    public final Kind c() {
        return this.a;
    }

    public final jd5 d() {
        return this.b;
    }

    public final String e() {
        String str = this.f;
        if (this.a == Kind.MULTIFILE_CLASS_PART) {
            return str;
        }
        return null;
    }

    public final List f() {
        String[] strArr = this.c;
        if (this.a != Kind.MULTIFILE_CLASS) {
            strArr = null;
        }
        List listF = strArr != null ? fi.f(strArr) : null;
        return listF == null ? y71.k() : listF;
    }

    public final String[] g() {
        return this.e;
    }

    public final boolean h(int i, int i2) {
        return (i & i2) != 0;
    }

    public final boolean i() {
        return h(this.g, 2);
    }

    public final boolean j() {
        return h(this.g, 64) && !h(this.g, 32);
    }

    public final boolean k() {
        return h(this.g, 16) && !h(this.g, 32);
    }

    public String toString() {
        return this.a + " version=" + this.b;
    }
}

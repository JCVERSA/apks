package com.yandex.mobile.ads.impl;

import defpackage.e1a;
import defpackage.f1a;
import defpackage.y45;

public final class ew0 {
    private final String a;
    private final String b;
    private final b c;
    private final String d;
    private final String e;
    private final Float f;
    private final int g;
    private final int h;
    private final int i;
    private final String j;

    public static final class a {
        private final String a;
        private String b;
        private b c;
        private String d;
        private String e;
        private Float f;
        private int g;
        private int h;
        private int i;
        private String j;

        public a(String str) {
            y45.j(str, "uri");
            this.a = str;
        }

        public final a a(String str) {
            this.j = str;
            return this;
        }

        public final a b(String str) {
            Integer numR;
            if (str != null && (numR = f1a.r(str)) != null) {
                this.i = numR.intValue();
            }
            return this;
        }

        public final a c(String str) {
            this.e = str;
            return this;
        }

        public final a d(String str) {
            for (b bVar : b.values()) {
                if (y45.e(bVar.a(), str)) {
                    this.c = bVar;
                    return this;
                }
            }
            bVar = null;
            this.c = bVar;
            return this;
        }

        public final a e(String str) {
            Integer numR;
            if (str != null && (numR = f1a.r(str)) != null) {
                this.g = numR.intValue();
            }
            return this;
        }

        public final a f(String str) {
            this.b = str;
            return this;
        }

        public final a g(String str) {
            this.d = str;
            return this;
        }

        public final a h(String str) {
            this.f = str != null ? e1a.p(str) : null;
            return this;
        }

        public final a i(String str) {
            Integer numR;
            if (str != null && (numR = f1a.r(str)) != null) {
                this.h = numR.intValue();
            }
            return this;
        }

        public final ew0 a() {
            return new ew0(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.ew0$b[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.ew0$b[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.ew0$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b {
        EF7("streaming"),
        EF17("progressive");

        private final String b;

        static {
            kotlin.enums.a.a(bVarArr);
        }

        private b(String str) {
            super(str, i);
            this.b = str;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) c.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    public ew0(String str, String str2, b bVar, String str3, String str4, Float f, int i, int i2, int i3, String str5) {
        y45.j(str, "uri");
        this.a = str;
        this.b = str2;
        this.c = bVar;
        this.d = str3;
        this.e = str4;
        this.f = f;
        this.g = i;
        this.h = i2;
        this.i = i3;
        this.j = str5;
    }

    public final String a() {
        return this.j;
    }

    public final int b() {
        return this.i;
    }

    public final String c() {
        return this.e;
    }

    public final int d() {
        return this.g;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ew0)) {
            return false;
        }
        ew0 ew0Var = (ew0) obj;
        return y45.e(this.a, ew0Var.a) && y45.e(this.b, ew0Var.b) && this.c == ew0Var.c && y45.e(this.d, ew0Var.d) && y45.e(this.e, ew0Var.e) && y45.e(this.f, ew0Var.f) && this.g == ew0Var.g && this.h == ew0Var.h && this.i == ew0Var.i && y45.e(this.j, ew0Var.j);
    }

    public final String f() {
        return this.a;
    }

    public final Float g() {
        return this.f;
    }

    public final int h() {
        return this.h;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        b bVar = this.c;
        int iHashCode3 = (iHashCode2 + (bVar == null ? 0 : bVar.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Float f = this.f;
        int iA = dy1.a(this.i, dy1.a(this.h, dy1.a(this.g, (iHashCode5 + (f == null ? 0 : f.hashCode())) * 31, 31), 31), 31);
        String str4 = this.j;
        return iA + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return "MediaFile(uri=" + this.a + ", id=" + this.b + ", deliveryMethod=" + this.c + ", mimeType=" + this.d + ", codec=" + this.e + ", vmafMetric=" + this.f + ", height=" + this.g + ", width=" + this.h + ", bitrate=" + this.i + ", apiFramework=" + this.j + ")";
    }
}

package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class da5 {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final boolean h;
    public final boolean i;
    public final String j;
    public final boolean k;
    public final boolean l;

    public da5(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str, boolean z7, boolean z8, String str2, boolean z9, boolean z10, ab5 ab5Var) {
        y45.j(str, "prettyPrintIndent");
        y45.j(str2, "classDiscriminator");
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = z4;
        this.e = z5;
        this.f = z6;
        this.g = str;
        this.h = z7;
        this.i = z8;
        this.j = str2;
        this.k = z9;
        this.l = z10;
    }

    public final boolean a() {
        return this.k;
    }

    public final boolean b() {
        return this.d;
    }

    public final String c() {
        return this.j;
    }

    public final boolean d() {
        return this.h;
    }

    public final boolean e() {
        return this.a;
    }

    public final boolean f() {
        return this.f;
    }

    public final boolean g() {
        return this.b;
    }

    public final ab5 h() {
        return null;
    }

    public final boolean i() {
        return this.e;
    }

    public final String j() {
        return this.g;
    }

    public final boolean k() {
        return this.l;
    }

    public final boolean l() {
        return this.i;
    }

    public final boolean m() {
        return this.c;
    }

    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.a + ", ignoreUnknownKeys=" + this.b + ", isLenient=" + this.c + ", allowStructuredMapKeys=" + this.d + ", prettyPrint=" + this.e + ", explicitNulls=" + this.f + ", prettyPrintIndent='" + this.g + "', coerceInputValues=" + this.h + ", useArrayPolymorphism=" + this.i + ", classDiscriminator='" + this.j + "', allowSpecialFloatingPointValues=" + this.k + ", useAlternativeNames=" + this.l + ", namingStrategy=" + ((Object) null) + ')';
    }

    public da5(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str, boolean z7, boolean z8, String str2, boolean z9, boolean z10, ab5 ab5Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? true : z6, (i & 64) != 0 ? "    " : str, (i & 128) != 0 ? false : z7, (i & 256) != 0 ? false : z8, (i & 512) != 0 ? "type" : str2, (i & 1024) == 0 ? z9 : false, (i & 2048) == 0 ? z10 : true, (i & 4096) != 0 ? null : ab5Var);
    }
}

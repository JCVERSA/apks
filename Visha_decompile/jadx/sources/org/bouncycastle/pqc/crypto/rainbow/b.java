package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.cw0;
import defpackage.sb2;
import defpackage.vx8;
import defpackage.xx8;

public class b implements cw0 {
    public static final b k;
    public static final b l;
    public static final b m;
    public static final b n;
    public static final b o;
    public static final b p;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final sb2 h;
    public final Version i;
    public final String j;

    static {
        Version version = Version.CLASSIC;
        k = new b("rainbow-III-classic", 3, version);
        Version version2 = Version.CIRCUMZENITHAL;
        l = new b("rainbow-III-circumzenithal", 3, version2);
        Version version3 = Version.COMPRESSED;
        m = new b("rainbow-III-compressed", 3, version3);
        n = new b("rainbow-V-classic", 5, version);
        o = new b("rainbow-V-circumzenithal", 5, version2);
        p = new b("rainbow-V-compressed", 5, version3);
    }

    public b(String str, int i, Version version) {
        sb2 vx8Var;
        this.j = str;
        if (i == 3) {
            this.b = 68;
            this.d = 32;
            this.e = 48;
            vx8Var = new vx8();
        } else {
            if (i != 5) {
                throw new IllegalArgumentException("No valid version. Please choose one of the following: 3, 5");
            }
            this.b = 96;
            this.d = 36;
            this.e = 64;
            vx8Var = new xx8();
        }
        this.h = vx8Var;
        int i2 = this.b;
        int i3 = this.d;
        this.c = i2 + i3;
        int i4 = this.e;
        this.f = i2 + i3 + i4;
        this.g = i3 + i4;
        this.i = version;
    }

    public sb2 a() {
        return this.h;
    }

    public int b() {
        return 32;
    }

    public int c() {
        return 32;
    }

    public int d() {
        return this.g;
    }

    public int e() {
        return this.f;
    }

    public String f() {
        return this.j;
    }

    public int g() {
        return this.d;
    }

    public int h() {
        return this.e;
    }

    public int i() {
        return this.b;
    }

    public Version j() {
        return this.i;
    }
}

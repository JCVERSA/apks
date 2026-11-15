package defpackage;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;

public class hx8 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final rlb s;
    public final kc8 t;
    public final boolean u;
    public final boolean v;
    public final d8a w;

    public hx8(int i, int i2, boolean z, boolean z2) {
        int i3;
        this.p = i2;
        this.u = z;
        this.v = z2;
        this.a = i;
        if (i == 2) {
            this.b = 10;
            this.c = 3;
        } else {
            if (i == 3) {
                this.b = 8;
                i3 = 4;
            } else {
                i3 = 6;
                this.b = 6;
            }
            this.c = i3;
        }
        this.w = z ? new d8a.a() : new d8a.b();
        if (z2) {
            this.e = 12;
            this.d = 64;
        } else {
            this.e = 13;
            this.d = (this.b * 256) / 8;
        }
        int i4 = this.e;
        int i5 = (i4 * 256) / 8;
        this.f = i5;
        int i6 = i5 * i;
        this.g = i6;
        this.h = TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL;
        int i7 = i * TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL;
        this.i = i7;
        int i8 = this.c;
        int i9 = (i8 * 256) / 8;
        this.j = i9;
        int i10 = i7 + 32;
        this.k = i10;
        this.l = i6;
        this.m = i10;
        this.n = i6 + i10 + 64;
        this.o = i7 + i9;
        this.q = 1 << (i4 - 11);
        this.r = (256 - (1 << (9 - i8))) + (1 << (i4 - 11));
        this.s = new rlb(this);
        this.t = new kc8(this);
    }

    public int a() {
        return 10;
    }

    public int b() {
        return this.c;
    }

    public int c() {
        return 32;
    }

    public int d() {
        return this.a;
    }

    public int e() {
        return 256;
    }

    public int f() {
        return this.f;
    }

    public rlb g() {
        return this.s;
    }
}

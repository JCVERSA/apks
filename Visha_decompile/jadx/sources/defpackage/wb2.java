package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.security.SecureRandom;

public class wb2 {
    public final SecureRandom a;
    public final yx8 b = new yx8(128);
    public final yx8 c = new yx8(256);
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
    public final int s;
    public final int t;
    public final int u;
    public final b8a v;

    public wb2(int i, SecureRandom secureRandom, boolean z) {
        int i2;
        int i3;
        int i4;
        this.h = i;
        if (i != 2) {
            if (i == 3) {
                this.i = 6;
                this.j = 5;
                this.k = 4;
                this.l = 49;
                this.m = 196;
                this.n = 524288;
                this.o = 261888;
                this.p = 55;
                this.e = 640;
                this.f = 128;
                this.g = 128;
                i4 = 48;
            } else {
                if (i != 5) {
                    throw new IllegalArgumentException("The mode " + i + "is not supported by Crystals Dilithium!");
                }
                this.i = 8;
                this.j = 7;
                this.k = 2;
                this.l = 60;
                this.m = 120;
                this.n = 524288;
                this.o = 261888;
                this.p = 75;
                this.e = 640;
                this.f = 128;
                this.g = 96;
                i4 = 64;
            }
            this.q = i4;
        } else {
            this.i = 4;
            this.j = 4;
            this.k = 2;
            this.l = 39;
            this.m = 78;
            this.n = 131072;
            this.o = 95232;
            this.p = 80;
            this.e = 576;
            this.f = 192;
            this.g = 96;
            this.q = 32;
        }
        this.v = z ? new b8a.a() : new b8a.b();
        this.a = secureRandom;
        int i5 = this.p;
        int i6 = this.i;
        int i7 = i5 + i6;
        this.d = i7;
        this.r = (i6 * TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL) + 32;
        int i8 = this.j;
        int i9 = this.g;
        this.s = (i8 * i9) + 96 + (i9 * i6) + (i6 * TypedValues.CycleType.TYPE_PATH_ROTATE);
        this.t = this.q + (i8 * this.e) + i7;
        int i10 = this.n;
        if (i10 == 131072) {
            i2 = this.v.b;
            i3 = i2 + 575;
        } else {
            if (i10 != 524288) {
                throw new RuntimeException("Wrong Dilithium Gamma1!");
            }
            i2 = this.v.b;
            i3 = i2 + 639;
        }
        this.u = i3 / i2;
    }

    public int a() {
        return this.i;
    }

    public int b() {
        return this.j;
    }

    public int c() {
        return this.g;
    }
}

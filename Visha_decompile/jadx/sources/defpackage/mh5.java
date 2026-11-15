package defpackage;

import androidx.media3.exoplayer.RendererCapabilities;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;

public class mh5 {
    public nh5 a;
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
    public final c8a r;

    /* JADX WARN: Code duplicated, block: B:16:0x0069  */
    /* JADX WARN: Code duplicated, block: B:18:0x0071  */
    public mh5(int i, boolean z) {
        int i2;
        c8a bVar;
        this.b = i;
        if (i != 2) {
            if (i == 3) {
                this.f = 2;
            } else {
                if (i != 4) {
                    throw new IllegalArgumentException("K: " + i + " is not supported for Crystals Kyber");
                }
                this.f = 2;
                this.d = 160;
                i2 = i * TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_1;
            }
            this.e = i2;
            this.q = 32;
            int i3 = i * RendererCapabilities.DECODER_SUPPORT_MASK;
            this.c = i3;
            int i4 = i3 + 32;
            this.g = i4;
            this.h = i3;
            int i5 = this.e + this.d;
            this.i = i5;
            this.j = i4;
            int i6 = i3 + i4 + 64;
            this.k = i6;
            this.l = i5;
            this.m = 32;
            this.n = i6;
            this.o = i4;
            this.p = i5;
            if (z) {
                bVar = new c8a.a();
            } else {
                bVar = new c8a.b();
            }
            this.r = bVar;
            this.a = new nh5(this);
        }
        this.f = 3;
        this.d = 128;
        i2 = i * TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL;
        this.e = i2;
        this.q = 32;
        int i7 = i * RendererCapabilities.DECODER_SUPPORT_MASK;
        this.c = i7;
        int i8 = i7 + 32;
        this.g = i8;
        this.h = i7;
        int i9 = this.e + this.d;
        this.i = i9;
        this.j = i8;
        int i10 = i7 + i8 + 64;
        this.k = i10;
        this.l = i9;
        this.m = 32;
        this.n = i10;
        this.o = i8;
        this.p = i9;
        if (z) {
            bVar = new c8a.a();
        } else {
            bVar = new c8a.b();
        }
        this.r = bVar;
        this.a = new nh5(this);
    }

    public int a() {
        return this.f;
    }

    public int b() {
        return this.i;
    }

    public int c() {
        return this.g;
    }

    public int d() {
        return this.h;
    }

    public int e() {
        return this.b;
    }

    public int f() {
        return this.d;
    }

    public int g() {
        return this.c;
    }

    public int h() {
        return this.e;
    }

    public int i() {
        return this.j;
    }

    public c8a j() {
        return this.r;
    }
}

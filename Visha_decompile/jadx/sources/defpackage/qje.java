package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import java.util.Collections;

public final class qje implements lje {
    public static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    public final fle a;
    public pje f;
    public long g;
    public String h;
    public rae i;
    public boolean j;
    public final boolean[] c = new boolean[4];
    public final oje d = new oje(128);
    public long k = C.TIME_UNSET;
    public final dke e = new dke(178, 128);
    public final u4h b = new u4h();

    public qje(fle fleVar, String str) {
        this.a = fleVar;
    }

    @Override
    public final void a(u4h u4hVar) {
        int i;
        int i2 = 3;
        n7g.b(this.f);
        n7g.b(this.i);
        int iW = u4hVar.w();
        int iX = u4hVar.x();
        byte[] bArrN = u4hVar.n();
        this.g += (long) u4hVar.u();
        this.i.d(u4hVar, u4hVar.u());
        while (true) {
            int iA = jzh.a(bArrN, iW, iX, this.c);
            if (iA == iX) {
                break;
            }
            int i3 = iA + 3;
            int i4 = u4hVar.n()[i3] & 255;
            int i5 = iA - iW;
            if (!this.j) {
                if (i5 > 0) {
                    this.d.a(bArrN, iW, iA);
                }
                int i6 = i5 < 0 ? -i5 : 0;
                oje ojeVar = this.d;
                if (ojeVar.c(i4, i6)) {
                    rae raeVar = this.i;
                    int i7 = ojeVar.d;
                    String str = this.h;
                    str.getClass();
                    byte[] bArrCopyOf = Arrays.copyOf(ojeVar.e, ojeVar.c);
                    p3h p3hVar = new p3h(bArrCopyOf, bArrCopyOf.length);
                    p3hVar.o(i7);
                    p3hVar.o(4);
                    p3hVar.m();
                    p3hVar.n(8);
                    if (p3hVar.p()) {
                        p3hVar.n(4);
                        p3hVar.n(i2);
                    }
                    int iD = p3hVar.d(4);
                    float f = 1.0f;
                    if (iD == 15) {
                        int iD2 = p3hVar.d(8);
                        int iD3 = p3hVar.d(8);
                        if (iD3 == 0) {
                            zrg.f("H263Reader", "Invalid aspect ratio");
                        } else {
                            f = iD2 / iD3;
                        }
                    } else if (iD < 7) {
                        f = l[iD];
                    } else {
                        zrg.f("H263Reader", "Invalid aspect ratio");
                    }
                    float f2 = f;
                    if (p3hVar.p()) {
                        p3hVar.n(2);
                        p3hVar.n(1);
                        if (p3hVar.p()) {
                            p3hVar.n(15);
                            p3hVar.m();
                            p3hVar.n(15);
                            p3hVar.m();
                            p3hVar.n(15);
                            p3hVar.m();
                            p3hVar.n(3);
                            p3hVar.n(11);
                            p3hVar.m();
                            p3hVar.n(15);
                            p3hVar.m();
                        }
                    }
                    if (p3hVar.d(2) != 0) {
                        zrg.f("H263Reader", "Unhandled video object layer shape");
                    }
                    p3hVar.m();
                    int iD4 = p3hVar.d(16);
                    p3hVar.m();
                    if (p3hVar.p()) {
                        if (iD4 == 0) {
                            zrg.f("H263Reader", "Invalid vop_increment_time_resolution");
                        } else {
                            int i8 = iD4 - 1;
                            int i9 = 0;
                            while (i8 > 0) {
                                i8 >>= 1;
                                i9++;
                            }
                            p3hVar.n(i9);
                        }
                    }
                    p3hVar.m();
                    int iD5 = p3hVar.d(13);
                    p3hVar.m();
                    int iD6 = p3hVar.d(13);
                    p3hVar.m();
                    p3hVar.m();
                    gpj gpjVar = new gpj();
                    gpjVar.o(str);
                    gpjVar.e(MimeTypes.VIDEO_MP2T);
                    gpjVar.E("video/mp4v-es");
                    gpjVar.J(iD5);
                    gpjVar.m(iD6);
                    gpjVar.z(f2);
                    gpjVar.p(Collections.singletonList(bArrCopyOf));
                    raeVar.f(gpjVar.K());
                    this.j = true;
                }
            }
            this.f.a(bArrN, iW, iA);
            dke dkeVar = this.e;
            if (i5 > 0) {
                dkeVar.a(bArrN, iW, iA);
                i = 0;
            } else {
                i = -i5;
            }
            if (dkeVar.d(i)) {
                int iC = jzh.c(dkeVar.d, dkeVar.e);
                u4h u4hVar2 = this.b;
                int i10 = kfh.a;
                u4hVar2.j(dkeVar.d, iC);
                this.a.a(this.k, u4hVar2);
            }
            if (i4 == 178) {
                if (u4hVar.n()[iA + 2] == 1) {
                    dkeVar.c(178);
                }
                i4 = 178;
            }
            int i11 = iX - iA;
            this.f.b(this.g - ((long) i11), i11, this.j);
            this.f.c(i4, this.k);
            iW = i3;
            i2 = 3;
        }
        if (!this.j) {
            this.d.a(bArrN, iW, iX);
        }
        this.f.a(bArrN, iW, iX);
        this.e.a(bArrN, iW, iX);
    }

    @Override
    public final void b(long j, int i) {
        this.k = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.h = cleVar.b();
        rae raeVarJ = f9eVar.j(cleVar.a(), 2);
        this.i = raeVarJ;
        this.f = new pje(raeVarJ);
        this.a.b(f9eVar, cleVar);
    }

    @Override
    public final void zzc(boolean z) {
        n7g.b(this.f);
        if (z) {
            this.f.b(this.g, 0, this.j);
            this.f.d();
        }
    }

    @Override
    public final void zze() {
        jzh.i(this.c);
        this.d.b();
        pje pjeVar = this.f;
        if (pjeVar != null) {
            pjeVar.d();
        }
        this.e.b();
        this.g = 0L;
        this.k = C.TIME_UNSET;
    }
}

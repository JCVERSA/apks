package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class h {

    public static final a f4068g = new a(null);

    private final c f4069a;

    private final c f4070b;

    private final c f4071c;

    private final c f4072d;

    private final int f4073e;

    private final float[] f4074f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float[] b(c cVar, c cVar2, int i10) {
            if (!n.e(i10, n.f4096a.a())) {
                return null;
            }
            long jE = cVar.e();
            androidx.compose.ui.graphics.colorspace.b.a aVar = androidx.compose.ui.graphics.colorspace.b.f4035a;
            boolean zE = androidx.compose.ui.graphics.colorspace.b.e(jE, aVar.b());
            boolean zE2 = androidx.compose.ui.graphics.colorspace.b.e(cVar2.e(), aVar.b());
            if (zE && zE2) {
                return null;
            }
            if (!zE && !zE2) {
                return null;
            }
            if (!zE) {
                cVar = cVar2;
            }
            Intrinsics.f(cVar, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
            Rgb rgb = (Rgb) cVar;
            float[] fArrC = zE ? rgb.N().c() : k.f4079a.c();
            float[] fArrC2 = zE2 ? rgb.N().c() : k.f4079a.c();
            return new float[]{fArrC[0] / fArrC2[0], fArrC[1] / fArrC2[1], fArrC[2] / fArrC2[2]};
        }

        public final h c(c cVar) {
            return new C0039a(cVar, n.f4096a.c());
        }

        private a() {
        }

        public static final class C0039a extends h {
            C0039a(c cVar, int i10) {
                super(cVar, cVar, i10, null);
            }

            @Override
            public long a(long j10) {
                return j10;
            }
        }
    }

    public static final class b extends h {

        private final Rgb f4075h;

        private final Rgb f4076i;

        private final float[] f4077j;

        public b(Rgb rgb, Rgb rgb2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(rgb, rgb2, i10);
        }

        private final float[] b(Rgb rgb, Rgb rgb2, int i10) {
            if (d.f(rgb.N(), rgb2.N())) {
                return d.l(rgb2.G(), rgb.M());
            }
            float[] fArrM = rgb.M();
            float[] fArrG = rgb2.G();
            float[] fArrC = rgb.N().c();
            float[] fArrC2 = rgb2.N().c();
            y yVarN = rgb.N();
            k kVar = k.f4079a;
            if (!d.f(yVarN, kVar.b())) {
                float[] fArrB = androidx.compose.ui.graphics.colorspace.a.f4030b.a().b();
                float[] fArrC3 = kVar.c();
                float[] fArrCopyOf = Arrays.copyOf(fArrC3, fArrC3.length);
                Intrinsics.g(fArrCopyOf, "copyOf(this, size)");
                fArrM = d.l(d.e(fArrB, fArrC, fArrCopyOf), rgb.M());
            }
            if (!d.f(rgb2.N(), kVar.b())) {
                float[] fArrB2 = androidx.compose.ui.graphics.colorspace.a.f4030b.a().b();
                float[] fArrC4 = kVar.c();
                float[] fArrCopyOf2 = Arrays.copyOf(fArrC4, fArrC4.length);
                Intrinsics.g(fArrCopyOf2, "copyOf(this, size)");
                fArrG = d.k(d.l(d.e(fArrB2, fArrC2, fArrCopyOf2), rgb2.M()));
            }
            if (n.e(i10, n.f4096a.a())) {
                fArrM = d.m(new float[]{fArrC[0] / fArrC2[0], fArrC[1] / fArrC2[1], fArrC[2] / fArrC2[2]}, fArrM);
            }
            return d.l(fArrG, fArrM);
        }

        @Override
        public long a(long j10) {
            float fR = u1.r(j10);
            float fQ = u1.q(j10);
            float fO = u1.o(j10);
            float fN = u1.n(j10);
            float fA = (float) this.f4075h.E().a(fR);
            float fA2 = (float) this.f4075h.E().a(fQ);
            float fA3 = (float) this.f4075h.E().a(fO);
            float[] fArr = this.f4077j;
            return w1.a((float) this.f4076i.I().a((fArr[0] * fA) + (fArr[3] * fA2) + (fArr[6] * fA3)), (float) this.f4076i.I().a((fArr[1] * fA) + (fArr[4] * fA2) + (fArr[7] * fA3)), (float) this.f4076i.I().a((fArr[2] * fA) + (fArr[5] * fA2) + (fArr[8] * fA3)), fN, this.f4076i);
        }

        private b(Rgb rgb, Rgb rgb2, int i10) {
            super(rgb, rgb2, rgb, rgb2, i10, null, null);
            this.f4075h = rgb;
            this.f4076i = rgb2;
            this.f4077j = b(rgb, rgb2, i10);
        }
    }

    public h(c cVar, c cVar2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, cVar2, i10);
    }

    public long a(long j10) {
        float fR = u1.r(j10);
        float fQ = u1.q(j10);
        float fO = u1.o(j10);
        float fN = u1.n(j10);
        long jH = this.f4071c.h(fR, fQ, fO);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jH >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jH & 4294967295L));
        float fI = this.f4071c.i(fR, fQ, fO);
        float[] fArr = this.f4074f;
        if (fArr != null) {
            fIntBitsToFloat *= fArr[0];
            fIntBitsToFloat2 *= fArr[1];
            fI *= fArr[2];
        }
        float f10 = fIntBitsToFloat;
        return this.f4072d.j(f10, fIntBitsToFloat2, fI, fN, this.f4070b);
    }

    public h(c cVar, c cVar2, c cVar3, c cVar4, int i10, float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, cVar2, cVar3, cVar4, i10, fArr);
    }

    private h(c cVar, c cVar2, c cVar3, c cVar4, int i10, float[] fArr) {
        this.f4069a = cVar;
        this.f4070b = cVar2;
        this.f4071c = cVar3;
        this.f4072d = cVar4;
        this.f4073e = i10;
        this.f4074f = fArr;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private h(c cVar, c cVar2, int i10) {
        long jE = cVar.e();
        androidx.compose.ui.graphics.colorspace.b.a aVar = androidx.compose.ui.graphics.colorspace.b.f4035a;
        this(cVar, cVar2, androidx.compose.ui.graphics.colorspace.b.e(jE, aVar.b()) ? d.d(cVar, k.f4079a.b(), null, 2, null) : cVar, androidx.compose.ui.graphics.colorspace.b.e(cVar2.e(), aVar.b()) ? d.d(cVar2, k.f4079a.b(), null, 2, null) : cVar2, i10, f4068g.b(cVar, cVar2, i10), null);
    }
}

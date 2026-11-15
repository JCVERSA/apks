package defpackage;

import com.google.android.gms.internal.ads.zzaz;
import com.hunantv.media.drm.IDrmSession;
import java.math.RoundingMode;
import org.mozilla.classfile.ByteCode;

public final class gle implements hle {
    public static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    public static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, ByteCode.LRETURN, ByteCode.ARRAYLENGTH, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    public final f9e a;
    public final rae b;
    public final mle c;
    public final int d;
    public final byte[] e;
    public final u4h f;
    public final int g;
    public final erj h;
    public int i;
    public long j;
    public int k;
    public long l;

    public gle(f9e f9eVar, rae raeVar, mle mleVar) throws zzaz {
        this.a = f9eVar;
        this.b = raeVar;
        this.c = mleVar;
        int iMax = Math.max(1, mleVar.c / 10);
        this.g = iMax;
        u4h u4hVar = new u4h(mleVar.f);
        u4hVar.E();
        int iE = u4hVar.E();
        this.d = iE;
        int i = mleVar.b;
        int i2 = mleVar.d;
        int i3 = (((i2 - (i * 4)) * 8) / (mleVar.e * i)) + 1;
        if (iE != i3) {
            throw zzaz.zza("Expected frames per block: " + i3 + "; got: " + iE, null);
        }
        int i4 = kfh.a;
        int i5 = ((iMax + iE) - 1) / iE;
        this.e = new byte[i2 * i5];
        this.f = new u4h(i5 * (iE + iE) * i);
        int i6 = ((mleVar.c * mleVar.d) * 8) / iE;
        gpj gpjVar = new gpj();
        gpjVar.E("audio/raw");
        gpjVar.a(i6);
        gpjVar.y(i6);
        gpjVar.t((iMax + iMax) * i);
        gpjVar.b(mleVar.b);
        gpjVar.F(mleVar.c);
        gpjVar.x(2);
        this.h = gpjVar.K();
    }

    @Override
    public final void a(long j) {
        this.i = 0;
        this.j = j;
        this.k = 0;
        this.l = 0L;
    }

    @Override
    public final void b(int i, long j) {
        ple pleVar = new ple(this.c, this.d, i, j);
        this.a.i(pleVar);
        rae raeVar = this.b;
        raeVar.f(this.h);
        raeVar.c(pleVar.zza());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040 A[LOOP:0: B:6:0x0025->B:12:0x0040, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0022 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0027  */
    /* JADX WARN: Code duplicated, block: B:9:0x002b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003d -> B:4:0x0022). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final boolean c(defpackage.d9e r26, long r27) {
        /*
            Method dump skipped, instruction units count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gle.c(d9e, long):boolean");
    }

    public final int d(int i) {
        int i2 = this.c.b;
        return i / (i2 + i2);
    }

    public final int e(int i) {
        return (i + i) * this.c.b;
    }

    public final void f(int i) {
        long jP = this.j + kfh.P(this.l, 1000000L, this.c.c, RoundingMode.DOWN);
        int iE = e(i);
        this.b.g(jP, 1, iE, this.k - iE, null);
        this.l += (long) i;
        this.k -= iE;
    }
}

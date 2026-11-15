package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.z2;
import com.google.android.gms.common.Scopes;
import com.google.common.collect.ImmutableList;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;

public class g extends MediaCodecRenderer {
    private static final int[] G1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean H1;
    private static boolean I1;
    private float A1;
    private y B1;
    private boolean C1;
    private int D1;
    b E1;
    private i F1;
    private final Context G0;
    private final k H0;
    private final w.a I0;
    private final long J0;
    private final int K0;
    private final boolean L0;
    private a M0;
    private boolean N0;
    private boolean O0;
    private Surface P0;
    private PlaceholderSurface Q0;
    private boolean R0;
    private int S0;
    private boolean T0;
    private boolean U0;
    private boolean V0;
    private long W0;
    private long X0;

    private long f26985p1;

    private int f26986q1;

    private int f26987r1;

    private int f26988s1;

    private long f26989t1;

    private long f26990u1;

    private long f26991v1;

    private int f26992w1;

    private int f26993x1;

    private int f26994y1;

    private int f26995z1;

    protected static final class a {

        public final int f26996a;

        public final int f26997b;

        public final int f26998c;

        public a(int i10, int i11, int i12) {
            this.f26996a = i10;
            this.f26997b = i11;
            this.f26998c = i12;
        }
    }

    private final class b implements com.google.android.exoplayer2.mediacodec.l.c, Handler.Callback {

        private final Handler f26999a;

        public b(com.google.android.exoplayer2.mediacodec.l lVar) {
            Handler handlerX = p0.x(this);
            this.f26999a = handlerX;
            lVar.m(this, handlerX);
        }

        private void b(long j10) {
            g gVar = g.this;
            if (this != gVar.E1) {
                return;
            }
            if (j10 == Long.MAX_VALUE) {
                gVar.x1();
                return;
            }
            try {
                gVar.w1(j10);
            } catch (ExoPlaybackException e10) {
                g.this.M0(e10);
            }
        }

        @Override
        public void a(com.google.android.exoplayer2.mediacodec.l lVar, long j10, long j11) {
            if (p0.f26854a >= 30) {
                b(j10);
            } else {
                this.f26999a.sendMessageAtFrontOfQueue(Message.obtain(this.f26999a, 0, (int) (j10 >> 32), (int) j10));
            }
        }

        @Override
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(p0.a1(message.arg1, message.arg2));
            return true;
        }
    }

    public g(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, long j10, boolean z10, Handler handler, w wVar, int i10) {
        this(context, bVar, oVar, j10, z10, handler, wVar, i10, 30.0f);
    }

    private static void B1(com.google.android.exoplayer2.mediacodec.l lVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        lVar.b(bundle);
    }

    private void C1() {
        this.X0 = this.J0 > 0 ? SystemClock.elapsedRealtime() + this.J0 : C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.exoplayer2.video.k] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.h, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.video.g] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.google.android.exoplayer2.video.PlaceholderSurface] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void D1(Object obj) throws ExoPlaybackException {
        ?? NewInstanceV17;
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            NewInstanceV17 = 0;
        }
        if (NewInstanceV17 == 0) {
            PlaceholderSurface placeholderSurface = this.Q0;
            if (placeholderSurface != null) {
                NewInstanceV17 = surface;
                NewInstanceV17 = placeholderSurface;
            } else {
                com.google.android.exoplayer2.mediacodec.m mVarY = Y();
                if (mVarY != null && I1(mVarY)) {
                    NewInstanceV17 = surface;
                    NewInstanceV17 = PlaceholderSurface.newInstanceV17(this.G0, mVarY.f24765g);
                    this.Q0 = NewInstanceV17;
                }
            }
        }
        NewInstanceV17 = surface;
        NewInstanceV17 = surface;
        NewInstanceV17 = surface;
        if (this.P0 == NewInstanceV17) {
            if (NewInstanceV17 == 0 || NewInstanceV17 == this.Q0) {
                return;
            }
            u1();
            t1();
            return;
        }
        this.P0 = NewInstanceV17;
        this.H0.m(NewInstanceV17);
        this.R0 = false;
        int state = getState();
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            if (p0.f26854a < 23 || NewInstanceV17 == 0 || this.N0) {
                E0();
                p0();
            } else {
                E1(lVarX, NewInstanceV17);
            }
        }
        if (NewInstanceV17 == 0 || NewInstanceV17 == this.Q0) {
            a1();
            Z0();
            return;
        }
        u1();
        Z0();
        if (state == 2) {
            C1();
        }
    }

    private boolean I1(com.google.android.exoplayer2.mediacodec.m mVar) {
        return p0.f26854a >= 23 && !this.C1 && !b1(mVar.f24759a) && (!mVar.f24765g || PlaceholderSurface.isSecureSupported(this.G0));
    }

    private void Z0() {
        com.google.android.exoplayer2.mediacodec.l lVarX;
        this.T0 = false;
        if (p0.f26854a < 23 || !this.C1 || (lVarX = X()) == null) {
            return;
        }
        this.E1 = new b(lVarX);
    }

    private void a1() {
        this.B1 = null;
    }

    private static void c1(MediaFormat mediaFormat, int i10) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i10);
    }

    private static boolean d1() {
        return "NVIDIA".equals(p0.f26856c);
    }

    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private static boolean f1() {
        /*
            Method dump skipped, instruction units count: 3062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.g.f1():boolean");
    }

    public static int g1(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var) {
        int iL;
        int iIntValue;
        int i10 = 4;
        byte b10 = 1;
        int i11 = p1Var.f24906q;
        int i12 = p1Var.f24907r;
        if (i11 == -1 || i12 == -1) {
            return -1;
        }
        String str = p1Var.f24901l;
        if ("video/dolby-vision".equals(str)) {
            Pair pairQ = MediaCodecUtil.q(p1Var);
            str = (pairQ == null || !((iIntValue = ((Integer) pairQ.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? MimeTypes.VIDEO_H265 : MimeTypes.VIDEO_H264;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                b10 = !str.equals(MimeTypes.VIDEO_H263) ? (byte) -1 : (byte) 0;
                break;
            case -1662735862:
                if (!str.equals("video/av01")) {
                    b10 = -1;
                }
                break;
            case -1662541442:
                b10 = !str.equals(MimeTypes.VIDEO_H265) ? (byte) -1 : (byte) 2;
                break;
            case 1187890754:
                b10 = !str.equals(MimeTypes.VIDEO_MP4V) ? (byte) -1 : (byte) 3;
                break;
            case 1331836730:
                b10 = !str.equals(MimeTypes.VIDEO_H264) ? (byte) -1 : (byte) 4;
                break;
            case 1599127256:
                b10 = !str.equals(MimeTypes.VIDEO_VP8) ? (byte) -1 : (byte) 5;
                break;
            case 1599127257:
                b10 = !str.equals(MimeTypes.VIDEO_VP9) ? (byte) -1 : (byte) 6;
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
            case 1:
            case 3:
            case 5:
                iL = i11 * i12;
                i10 = 2;
                return (iL * 3) / (i10 * 2);
            case 2:
            case 6:
                iL = i11 * i12;
                return (iL * 3) / (i10 * 2);
            case 4:
                String str2 = p0.f26857d;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(p0.f26856c) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && mVar.f24765g)))) {
                    return -1;
                }
                iL = p0.l(i11, 16) * p0.l(i12, 16) * 256;
                i10 = 2;
                return (iL * 3) / (i10 * 2);
            default:
                return -1;
        }
    }

    private static Point h1(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var) {
        int i10 = p1Var.f24907r;
        int i11 = p1Var.f24906q;
        boolean z10 = i10 > i11;
        int i12 = z10 ? i10 : i11;
        if (z10) {
            i10 = i11;
        }
        float f10 = i10 / i12;
        for (int i13 : G1) {
            int i14 = (int) (i13 * f10);
            if (i13 <= i12 || i14 <= i10) {
                break;
            }
            if (p0.f26854a >= 21) {
                int i15 = z10 ? i14 : i13;
                if (!z10) {
                    i13 = i14;
                }
                Point pointB = mVar.b(i15, i13);
                if (mVar.u(pointB.x, pointB.y, p1Var.f24908s)) {
                    return pointB;
                }
            } else {
                try {
                    int iL = p0.l(i13, 16) * 16;
                    int iL2 = p0.l(i14, 16) * 16;
                    if (iL * iL2 <= MediaCodecUtil.N()) {
                        int i16 = z10 ? iL2 : iL;
                        if (!z10) {
                            iL = iL2;
                        }
                        return new Point(i16, iL);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    private static List j1(com.google.android.exoplayer2.mediacodec.o oVar, p1 p1Var, boolean z10, boolean z11) {
        String str = p1Var.f24901l;
        if (str == null) {
            return ImmutableList.of();
        }
        List listA = oVar.a(str, z10, z11);
        String strM = MediaCodecUtil.m(p1Var);
        if (strM == null) {
            return ImmutableList.copyOf((Collection) listA);
        }
        return ImmutableList.builder().l(listA).l(oVar.a(strM, z10, z11)).e();
    }

    protected static int k1(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var) {
        if (p1Var.f24902m == -1) {
            return g1(mVar, p1Var);
        }
        int size = p1Var.f24903n.size();
        int length = 0;
        for (int i10 = 0; i10 < size; i10++) {
            length += ((byte[]) p1Var.f24903n.get(i10)).length;
        }
        return p1Var.f24902m + length;
    }

    private static boolean m1(long j10) {
        return j10 < -30000;
    }

    private static boolean n1(long j10) {
        return j10 < -500000;
    }

    private void p1() {
        if (this.f26986q1 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.I0.n(this.f26986q1, jElapsedRealtime - this.f26985p1);
            this.f26986q1 = 0;
            this.f26985p1 = jElapsedRealtime;
        }
    }

    private void r1() {
        int i10 = this.f26992w1;
        if (i10 != 0) {
            this.I0.B(this.f26991v1, i10);
            this.f26991v1 = 0L;
            this.f26992w1 = 0;
        }
    }

    private void s1() {
        int i10 = this.f26993x1;
        if (i10 == -1 && this.f26994y1 == -1) {
            return;
        }
        y yVar = this.B1;
        if (yVar != null && yVar.f27140a == i10 && yVar.f27141b == this.f26994y1 && yVar.f27142c == this.f26995z1 && yVar.f27143d == this.A1) {
            return;
        }
        y yVar2 = new y(this.f26993x1, this.f26994y1, this.f26995z1, this.A1);
        this.B1 = yVar2;
        this.I0.D(yVar2);
    }

    private void t1() {
        if (this.R0) {
            this.I0.A(this.P0);
        }
    }

    private void u1() {
        y yVar = this.B1;
        if (yVar != null) {
            this.I0.D(yVar);
        }
    }

    private void v1(long j10, long j11, p1 p1Var) {
        i iVar = this.F1;
        if (iVar != null) {
            iVar.g(j10, j11, p1Var, b0());
        }
    }

    public void x1() {
        L0();
    }

    private void y1() {
        Surface surface = this.P0;
        PlaceholderSurface placeholderSurface = this.Q0;
        if (surface == placeholderSurface) {
            this.P0 = null;
        }
        placeholderSurface.release();
        this.Q0 = null;
    }

    @Override
    protected boolean A0(long j10, long j11, com.google.android.exoplayer2.mediacodec.l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, p1 p1Var) {
        com.google.android.exoplayer2.util.a.e(lVar);
        if (this.W0 == C.TIME_UNSET) {
            this.W0 = j10;
        }
        if (j12 != this.f26989t1) {
            this.H0.h(j12);
            this.f26989t1 = j12;
        }
        long jF0 = f0();
        long j13 = j12 - jF0;
        if (z10 && !z11) {
            J1(lVar, i10, j13);
            return true;
        }
        double dG0 = g0();
        boolean z12 = getState() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j14 = (long) ((j12 - j10) / dG0);
        if (z12) {
            j14 -= jElapsedRealtime - j11;
        }
        if (this.P0 == this.Q0) {
            if (!m1(j14)) {
                return false;
            }
            J1(lVar, i10, j13);
            L1(j14);
            return true;
        }
        long j15 = jElapsedRealtime - this.f26990u1;
        boolean z13 = this.V0 ? !this.T0 : z12 || this.U0;
        if (this.X0 == C.TIME_UNSET && j10 >= jF0 && (z13 || (z12 && H1(j14, j15)))) {
            long jNanoTime = System.nanoTime();
            v1(j13, jNanoTime, p1Var);
            if (p0.f26854a >= 21) {
                A1(lVar, i10, j13, jNanoTime);
            } else {
                z1(lVar, i10, j13);
            }
            L1(j14);
            return true;
        }
        if (z12 && j10 != this.W0) {
            long jNanoTime2 = System.nanoTime();
            long jB = this.H0.b((j14 * 1000) + jNanoTime2);
            long j16 = (jB - jNanoTime2) / 1000;
            boolean z14 = this.X0 != C.TIME_UNSET;
            if (F1(j16, j11, z11) && o1(j10, z14)) {
                return false;
            }
            if (G1(j16, j11, z11)) {
                if (z14) {
                    J1(lVar, i10, j13);
                } else {
                    e1(lVar, i10, j13);
                }
                L1(j16);
                return true;
            }
            if (p0.f26854a >= 21) {
                if (j16 < 50000) {
                    v1(j13, jB, p1Var);
                    A1(lVar, i10, j13, jB);
                    L1(j16);
                    return true;
                }
            } else if (j16 < 30000) {
                if (j16 > 11000) {
                    try {
                        Thread.sleep((j16 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                v1(j13, jB, p1Var);
                z1(lVar, i10, j13);
                L1(j16);
                return true;
            }
        }
        return false;
    }

    protected void A1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j10, long j11) {
        s1();
        m0.a("releaseOutputBuffer");
        lVar.h(i10, j11);
        m0.c();
        this.f26990u1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.f24238e++;
        this.f26987r1 = 0;
        q1();
    }

    @Override
    protected com.google.android.exoplayer2.decoder.g B(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var, p1 p1Var2) {
        com.google.android.exoplayer2.decoder.g gVarE = mVar.e(p1Var, p1Var2);
        int i10 = gVarE.f24252e;
        int i11 = p1Var2.f24906q;
        a aVar = this.M0;
        if (i11 > aVar.f26996a || p1Var2.f24907r > aVar.f26997b) {
            i10 |= 256;
        }
        if (k1(mVar, p1Var2) > this.M0.f26998c) {
            i10 |= 64;
        }
        int i12 = i10;
        return new com.google.android.exoplayer2.decoder.g(mVar.f24759a, p1Var, p1Var2, i12 != 0 ? 0 : gVarE.f24251d, i12);
    }

    protected void E1(com.google.android.exoplayer2.mediacodec.l lVar, Surface surface) {
        lVar.e(surface);
    }

    protected boolean F1(long j10, long j11, boolean z10) {
        return n1(j10) && !z10;
    }

    @Override
    protected void G0() {
        super.G0();
        this.f26988s1 = 0;
    }

    protected boolean G1(long j10, long j11, boolean z10) {
        return m1(j10) && !z10;
    }

    protected boolean H1(long j10, long j11) {
        return m1(j10) && j11 > 100000;
    }

    protected void J1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j10) {
        m0.a("skipVideoBuffer");
        lVar.k(i10, false);
        m0.c();
        this.B0.f24239f++;
    }

    protected void K1(int i10, int i11) {
        com.google.android.exoplayer2.decoder.e eVar = this.B0;
        eVar.f24241h += i10;
        int i12 = i10 + i11;
        eVar.f24240g += i12;
        this.f26986q1 += i12;
        int i13 = this.f26987r1 + i12;
        this.f26987r1 = i13;
        eVar.f24242i = Math.max(i13, eVar.f24242i);
        int i14 = this.K0;
        if (i14 <= 0 || this.f26986q1 < i14) {
            return;
        }
        p1();
    }

    @Override
    protected MediaCodecDecoderException L(Throwable th2, com.google.android.exoplayer2.mediacodec.m mVar) {
        return new MediaCodecVideoDecoderException(th2, mVar, this.P0);
    }

    protected void L1(long j10) {
        this.B0.a(j10);
        this.f26991v1 += j10;
        this.f26992w1++;
    }

    @Override
    protected boolean P0(com.google.android.exoplayer2.mediacodec.m mVar) {
        return this.P0 != null || I1(mVar);
    }

    @Override
    protected int S0(com.google.android.exoplayer2.mediacodec.o oVar, p1 p1Var) {
        boolean z10;
        int i10 = 0;
        if (!com.google.android.exoplayer2.util.w.s(p1Var.f24901l)) {
            return z2.a(0);
        }
        boolean z11 = p1Var.f24904o != null;
        List listJ1 = j1(oVar, p1Var, z11, false);
        if (z11 && listJ1.isEmpty()) {
            listJ1 = j1(oVar, p1Var, false, false);
        }
        if (listJ1.isEmpty()) {
            return z2.a(1);
        }
        if (!MediaCodecRenderer.T0(p1Var)) {
            return z2.a(2);
        }
        com.google.android.exoplayer2.mediacodec.m mVar = (com.google.android.exoplayer2.mediacodec.m) listJ1.get(0);
        boolean zM = mVar.m(p1Var);
        if (!zM) {
            int i11 = 1;
            while (true) {
                if (i11 >= listJ1.size()) {
                    z10 = true;
                    break;
                }
                com.google.android.exoplayer2.mediacodec.m mVar2 = (com.google.android.exoplayer2.mediacodec.m) listJ1.get(i11);
                if (mVar2.m(p1Var)) {
                    z10 = false;
                    zM = true;
                    mVar = mVar2;
                    break;
                }
                i11++;
            }
        } else {
            z10 = true;
            break;
        }
        int i12 = zM ? 4 : 3;
        int i13 = mVar.p(p1Var) ? 16 : 8;
        int i14 = mVar.f24766h ? 64 : 0;
        int i15 = z10 ? 128 : 0;
        if (zM) {
            List listJ2 = j1(oVar, p1Var, z11, true);
            if (!listJ2.isEmpty()) {
                com.google.android.exoplayer2.mediacodec.m mVar3 = (com.google.android.exoplayer2.mediacodec.m) MediaCodecUtil.u(listJ2, p1Var).get(0);
                if (mVar3.m(p1Var) && mVar3.p(p1Var)) {
                    i10 = 32;
                }
            }
        }
        return z2.c(i12, i13, i10, i14, i15);
    }

    @Override
    protected boolean Z() {
        return this.C1 && p0.f26854a < 23;
    }

    @Override
    protected float a0(float f10, p1 p1Var, p1[] p1VarArr) {
        float fMax = -1.0f;
        for (p1 p1Var2 : p1VarArr) {
            float f11 = p1Var2.f24908s;
            if (f11 != -1.0f) {
                fMax = Math.max(fMax, f11);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f10;
    }

    protected boolean b1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (g.class) {
            try {
                if (!H1) {
                    I1 = f1();
                    H1 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return I1;
    }

    @Override
    protected List c0(com.google.android.exoplayer2.mediacodec.o oVar, p1 p1Var, boolean z10) {
        return MediaCodecUtil.u(j1(oVar, p1Var, z10, this.C1), p1Var);
    }

    @Override
    public void d(float f10, float f11) throws ExoPlaybackException {
        super.d(f10, f11);
        this.H0.i(f10);
    }

    @Override
    protected com.google.android.exoplayer2.mediacodec.l.a e0(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var, MediaCrypto mediaCrypto, float f10) {
        PlaceholderSurface placeholderSurface = this.Q0;
        if (placeholderSurface != null && placeholderSurface.secure != mVar.f24765g) {
            y1();
        }
        String str = mVar.f24761c;
        a aVarI1 = i1(mVar, p1Var, n());
        this.M0 = aVarI1;
        MediaFormat mediaFormatL1 = l1(p1Var, str, aVarI1, f10, this.L0, this.C1 ? this.D1 : 0);
        if (this.P0 == null) {
            if (!I1(mVar)) {
                throw new IllegalStateException();
            }
            if (this.Q0 == null) {
                this.Q0 = PlaceholderSurface.newInstanceV17(this.G0, mVar.f24765g);
            }
            this.P0 = this.Q0;
        }
        return com.google.android.exoplayer2.mediacodec.l.a.b(mVar, mediaFormatL1, p1Var, this.P0, mediaCrypto);
    }

    protected void e1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j10) {
        m0.a("dropVideoBuffer");
        lVar.k(i10, false);
        m0.c();
        K1(0, 1);
    }

    @Override
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override
    protected void h0(DecoderInputBuffer decoderInputBuffer) {
        if (this.O0) {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(decoderInputBuffer.f24205f);
            if (byteBuffer.remaining() >= 7) {
                byte b10 = byteBuffer.get();
                short s10 = byteBuffer.getShort();
                short s11 = byteBuffer.getShort();
                byte b11 = byteBuffer.get();
                byte b12 = byteBuffer.get();
                byteBuffer.position(0);
                if (b10 == -75 && s10 == 60 && s11 == 1 && b11 == 4 && b12 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    B1(X(), bArr);
                }
            }
        }
    }

    @Override
    public void handleMessage(int i10, Object obj) throws ExoPlaybackException {
        if (i10 == 1) {
            D1(obj);
            return;
        }
        if (i10 == 7) {
            this.F1 = (i) obj;
            return;
        }
        if (i10 == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.D1 != iIntValue) {
                this.D1 = iIntValue;
                if (this.C1) {
                    E0();
                    return;
                }
                return;
            }
            return;
        }
        if (i10 != 4) {
            if (i10 != 5) {
                super.handleMessage(i10, obj);
                return;
            } else {
                this.H0.o(((Integer) obj).intValue());
                return;
            }
        }
        this.S0 = ((Integer) obj).intValue();
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            lVarX.setVideoScalingMode(this.S0);
        }
    }

    protected a i1(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var, p1[] p1VarArr) {
        int iG1;
        int iMax = p1Var.f24906q;
        int iMax2 = p1Var.f24907r;
        int iK1 = k1(mVar, p1Var);
        if (p1VarArr.length == 1) {
            if (iK1 != -1 && (iG1 = g1(mVar, p1Var)) != -1) {
                iK1 = Math.min((int) (iK1 * 1.5f), iG1);
            }
            return new a(iMax, iMax2, iK1);
        }
        int length = p1VarArr.length;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            p1 p1VarE = p1VarArr[i10];
            if (p1Var.f24913x != null && p1VarE.f24913x == null) {
                p1VarE = p1VarE.b().J(p1Var.f24913x).E();
            }
            if (mVar.e(p1Var, p1VarE).f24251d != 0) {
                int i11 = p1VarE.f24906q;
                z10 |= i11 == -1 || p1VarE.f24907r == -1;
                iMax = Math.max(iMax, i11);
                iMax2 = Math.max(iMax2, p1VarE.f24907r);
                iK1 = Math.max(iK1, k1(mVar, p1VarE));
            }
        }
        if (z10) {
            com.google.android.exoplayer2.util.s.i("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointH1 = h1(mVar, p1Var);
            if (pointH1 != null) {
                iMax = Math.max(iMax, pointH1.x);
                iMax2 = Math.max(iMax2, pointH1.y);
                iK1 = Math.max(iK1, g1(mVar, p1Var.b().j0(iMax).Q(iMax2).E()));
                com.google.android.exoplayer2.util.s.i("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new a(iMax, iMax2, iK1);
    }

    @Override
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && (this.T0 || (((placeholderSurface = this.Q0) != null && this.P0 == placeholderSurface) || X() == null || this.C1))) {
            this.X0 = C.TIME_UNSET;
            return true;
        }
        if (this.X0 == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.X0) {
            return true;
        }
        this.X0 = C.TIME_UNSET;
        return false;
    }

    protected MediaFormat l1(p1 p1Var, String str, a aVar, float f10, boolean z10, int i10) {
        Pair pairQ;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", p1Var.f24906q);
        mediaFormat.setInteger("height", p1Var.f24907r);
        com.google.android.exoplayer2.util.v.e(mediaFormat, p1Var.f24903n);
        com.google.android.exoplayer2.util.v.c(mediaFormat, "frame-rate", p1Var.f24908s);
        com.google.android.exoplayer2.util.v.d(mediaFormat, "rotation-degrees", p1Var.f24909t);
        com.google.android.exoplayer2.util.v.b(mediaFormat, p1Var.f24913x);
        if ("video/dolby-vision".equals(p1Var.f24901l) && (pairQ = MediaCodecUtil.q(p1Var)) != null) {
            com.google.android.exoplayer2.util.v.d(mediaFormat, Scopes.PROFILE, ((Integer) pairQ.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.f26996a);
        mediaFormat.setInteger("max-height", aVar.f26997b);
        com.google.android.exoplayer2.util.v.d(mediaFormat, "max-input-size", aVar.f26998c);
        if (p0.f26854a >= 23) {
            mediaFormat.setInteger(TrackingKey.PRIORITY, 0);
            if (f10 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (z10) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i10 != 0) {
            c1(mediaFormat, i10);
        }
        return mediaFormat;
    }

    protected boolean o1(long j10, boolean z10) throws ExoPlaybackException {
        int iY = y(j10);
        if (iY == 0) {
            return false;
        }
        if (z10) {
            com.google.android.exoplayer2.decoder.e eVar = this.B0;
            eVar.f24237d += iY;
            eVar.f24239f += this.f26988s1;
        } else {
            this.B0.f24243j++;
            K1(iY, this.f26988s1);
        }
        U();
        return true;
    }

    @Override
    protected void p() {
        a1();
        Z0();
        this.R0 = false;
        this.E1 = null;
        try {
            super.p();
        } finally {
            this.I0.m(this.B0);
        }
    }

    @Override
    protected void q(boolean z10, boolean z11) {
        super.q(z10, z11);
        boolean z12 = j().f24164a;
        com.google.android.exoplayer2.util.a.g((z12 && this.D1 == 0) ? false : true);
        if (this.C1 != z12) {
            this.C1 = z12;
            E0();
        }
        this.I0.o(this.B0);
        this.U0 = z11;
        this.V0 = false;
    }

    void q1() {
        this.V0 = true;
        if (this.T0) {
            return;
        }
        this.T0 = true;
        this.I0.A(this.P0);
        this.R0 = true;
    }

    @Override
    protected void r(long j10, boolean z10) throws ExoPlaybackException {
        super.r(j10, z10);
        Z0();
        this.H0.j();
        this.f26989t1 = C.TIME_UNSET;
        this.W0 = C.TIME_UNSET;
        this.f26987r1 = 0;
        if (z10) {
            C1();
        } else {
            this.X0 = C.TIME_UNSET;
        }
    }

    @Override
    protected void r0(Exception exc) {
        com.google.android.exoplayer2.util.s.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.I0.C(exc);
    }

    @Override
    protected void s() {
        try {
            super.s();
        } finally {
            if (this.Q0 != null) {
                y1();
            }
        }
    }

    @Override
    protected void s0(String str, com.google.android.exoplayer2.mediacodec.l.a aVar, long j10, long j11) {
        this.I0.k(str, j10, j11);
        this.N0 = b1(str);
        this.O0 = ((com.google.android.exoplayer2.mediacodec.m) com.google.android.exoplayer2.util.a.e(Y())).n();
        if (p0.f26854a < 23 || !this.C1) {
            return;
        }
        this.E1 = new b((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.e(X()));
    }

    @Override
    protected void t() {
        super.t();
        this.f26986q1 = 0;
        this.f26985p1 = SystemClock.elapsedRealtime();
        this.f26990u1 = SystemClock.elapsedRealtime() * 1000;
        this.f26991v1 = 0L;
        this.f26992w1 = 0;
        this.H0.k();
    }

    @Override
    protected void t0(String str) {
        this.I0.l(str);
    }

    @Override
    protected void u() {
        this.X0 = C.TIME_UNSET;
        p1();
        r1();
        this.H0.l();
        super.u();
    }

    @Override
    protected com.google.android.exoplayer2.decoder.g u0(q1 q1Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.g gVarU0 = super.u0(q1Var);
        this.I0.p(q1Var.f24962b, gVarU0);
        return gVarU0;
    }

    @Override
    protected void v0(p1 p1Var, MediaFormat mediaFormat) {
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            lVarX.setVideoScalingMode(this.S0);
        }
        if (this.C1) {
            this.f26993x1 = p1Var.f24906q;
            this.f26994y1 = p1Var.f24907r;
        } else {
            com.google.android.exoplayer2.util.a.e(mediaFormat);
            boolean z10 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.f26993x1 = z10 ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            this.f26994y1 = z10 ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        }
        float f10 = p1Var.f24910u;
        this.A1 = f10;
        if (p0.f26854a >= 21) {
            int i10 = p1Var.f24909t;
            if (i10 == 90 || i10 == 270) {
                int i11 = this.f26993x1;
                this.f26993x1 = this.f26994y1;
                this.f26994y1 = i11;
                this.A1 = 1.0f / f10;
            }
        } else {
            this.f26995z1 = p1Var.f24909t;
        }
        this.H0.g(p1Var.f24908s);
    }

    @Override
    protected void w0(long j10) {
        super.w0(j10);
        if (this.C1) {
            return;
        }
        this.f26988s1--;
    }

    protected void w1(long j10) {
        W0(j10);
        s1();
        this.B0.f24238e++;
        q1();
        w0(j10);
    }

    @Override
    protected void x0() {
        super.x0();
        Z0();
    }

    @Override
    protected void y0(DecoderInputBuffer decoderInputBuffer) {
        boolean z10 = this.C1;
        if (!z10) {
            this.f26988s1++;
        }
        if (p0.f26854a >= 23 || !z10) {
            return;
        }
        w1(decoderInputBuffer.f24204e);
    }

    protected void z1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j10) {
        s1();
        m0.a("releaseOutputBuffer");
        lVar.k(i10, true);
        m0.c();
        this.f26990u1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.f24238e++;
        this.f26987r1 = 0;
        q1();
    }

    public g(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, long j10, boolean z10, Handler handler, w wVar, int i10, float f10) {
        super(2, bVar, oVar, z10, f10);
        this.J0 = j10;
        this.K0 = i10;
        Context applicationContext = context.getApplicationContext();
        this.G0 = applicationContext;
        this.H0 = new k(applicationContext);
        this.I0 = new w.a(handler, wVar);
        this.L0 = d1();
        this.X0 = C.TIME_UNSET;
        this.f26993x1 = -1;
        this.f26994y1 = -1;
        this.A1 = -1.0f;
        this.S0 = 1;
        this.D1 = 0;
        a1();
    }
}

package defpackage;

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
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.c;
import com.google.android.exoplayer2.mediacodec.d;
import com.google.android.exoplayer2.mediacodec.e;
import com.google.android.exoplayer2.video.MediaCodecVideoDecoderException;
import com.google.android.exoplayer2.video.PlaceholderSurface;
import com.google.common.collect.ImmutableList;
import com.hunantv.media.report.ReportParams;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;

public class wd6 extends MediaCodecRenderer {
    public static final int[] q1 = {1920, 1600, 1440, 1280, 960, 854, 640, ReportParams.MAX_LEAVE_VALID_TIME, 480};
    public static boolean r1;
    public static boolean s1;
    public final Context H0;
    public final prb I0;
    public final c6c.a J0;
    public final long K0;
    public final int L0;
    public final boolean M0;
    public a N0;
    public boolean O0;
    public boolean P0;
    public Surface Q0;
    public PlaceholderSurface R0;
    public boolean S0;
    public int T0;
    public boolean U0;
    public boolean V0;
    public boolean W0;
    public long X0;
    public long Y0;
    public long Z0;
    public int a1;
    public int b1;
    public int c1;
    public long d1;
    public long e1;
    public long f1;
    public int g1;
    public int h1;
    public int i1;
    public int j1;
    public float k1;
    public f7c l1;
    public boolean m1;
    public int n1;
    public b o1;
    public lrb p1;

    public static final class a {
        public final int a;
        public final int b;
        public final int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    public final class b implements c.InterfaceC0081c, Handler.Callback {
        public final Handler b;

        public b(c cVar) {
            Handler handlerV = blb.v(this);
            this.b = handlerV;
            cVar.b(this, handlerV);
        }

        @Override
        public void a(c cVar, long j, long j2) {
            if (blb.a >= 30) {
                b(j);
            } else {
                this.b.sendMessageAtFrontOfQueue(Message.obtain(this.b, 0, (int) (j >> 32), (int) j));
            }
        }

        public final void b(long j) {
            wd6 wd6Var = wd6.this;
            if (this != wd6Var.o1) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                wd6Var.v1();
                return;
            }
            try {
                wd6Var.u1(j);
            } catch (ExoPlaybackException e) {
                wd6.this.K0(e);
            }
        }

        @Override
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(blb.L0(message.arg1, message.arg2));
            return true;
        }
    }

    public wd6(Context context, c.b bVar, e eVar, long j, boolean z, Handler handler, c6c c6cVar, int i) {
        this(context, bVar, eVar, j, z, handler, c6cVar, i, 30.0f);
    }

    public static void a1(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_AUDIO_SESSION_ID, i);
    }

    public static boolean b1() {
        return "NVIDIA".equals(blb.c);
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
    public static boolean d1() {
        /*
            Method dump skipped, instruction units count: 3068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wd6.d1():boolean");
    }

    public static int e1(d dVar, k kVar) {
        int iL;
        int iIntValue;
        int i = 4;
        byte b2 = 1;
        int i2 = kVar.r;
        int i3 = kVar.s;
        if (i2 == -1 || i3 == -1) {
            return -1;
        }
        String str = kVar.m;
        if ("video/dolby-vision".equals(str)) {
            Pair pairQ = MediaCodecUtil.q(kVar);
            str = (pairQ == null || !((iIntValue = ((Integer) pairQ.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? "video/hevc" : "video/avc";
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                b2 = !str.equals("video/3gpp") ? (byte) -1 : (byte) 0;
                break;
            case -1662735862:
                if (!str.equals(MimeTypes.VIDEO_AV1)) {
                    b2 = -1;
                }
                break;
            case -1662541442:
                b2 = !str.equals("video/hevc") ? (byte) -1 : (byte) 2;
                break;
            case 1187890754:
                b2 = !str.equals("video/mp4v-es") ? (byte) -1 : (byte) 3;
                break;
            case 1331836730:
                b2 = !str.equals("video/avc") ? (byte) -1 : (byte) 4;
                break;
            case 1599127256:
                b2 = !str.equals("video/x-vnd.on2.vp8") ? (byte) -1 : (byte) 5;
                break;
            case 1599127257:
                b2 = !str.equals("video/x-vnd.on2.vp9") ? (byte) -1 : (byte) 6;
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
            case 1:
            case 3:
            case 5:
                iL = i2 * i3;
                i = 2;
                return (iL * 3) / (i * 2);
            case 2:
            case 6:
                iL = i2 * i3;
                return (iL * 3) / (i * 2);
            case 4:
                String str2 = blb.d;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(blb.c) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && dVar.g)))) {
                    return -1;
                }
                iL = blb.l(i2, 16) * blb.l(i3, 16) * 256;
                i = 2;
                return (iL * 3) / (i * 2);
            default:
                return -1;
        }
    }

    public static Point f1(d dVar, k kVar) {
        int i = kVar.s;
        int i2 = kVar.r;
        boolean z = i > i2;
        int i3 = z ? i : i2;
        if (z) {
            i = i2;
        }
        float f = i / i3;
        for (int i4 : q1) {
            int i5 = (int) (i4 * f);
            if (i4 <= i3 || i5 <= i) {
                break;
            }
            if (blb.a >= 21) {
                int i6 = z ? i5 : i4;
                if (!z) {
                    i4 = i5;
                }
                Point pointB = dVar.b(i6, i4);
                if (dVar.u(pointB.x, pointB.y, kVar.t)) {
                    return pointB;
                }
            } else {
                try {
                    int iL = blb.l(i4, 16) * 16;
                    int iL2 = blb.l(i5, 16) * 16;
                    if (iL * iL2 <= MediaCodecUtil.N()) {
                        int i7 = z ? iL2 : iL;
                        if (!z) {
                            iL = iL2;
                        }
                        return new Point(i7, iL);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    public static List h1(e eVar, k kVar, boolean z, boolean z2) {
        String str = kVar.m;
        if (str == null) {
            return ImmutableList.of();
        }
        List decoderInfos = eVar.getDecoderInfos(str, z, z2);
        String strM = MediaCodecUtil.m(kVar);
        if (strM == null) {
            return ImmutableList.copyOf((Collection) decoderInfos);
        }
        return ImmutableList.builder().l(decoderInfos).l(eVar.getDecoderInfos(strM, z, z2)).e();
    }

    public static int i1(d dVar, k kVar) {
        if (kVar.n == -1) {
            return e1(dVar, kVar);
        }
        int size = kVar.o.size();
        int length = 0;
        for (int i = 0; i < size; i++) {
            length += ((byte[]) kVar.o.get(i)).length;
        }
        return kVar.n + length;
    }

    public static boolean k1(long j) {
        return j < -30000;
    }

    public static boolean l1(long j) {
        return j < -500000;
    }

    public static void z1(c cVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        cVar.setParameters(bundle);
    }

    public final void A1() {
        this.Y0 = this.K0 > 0 ? SystemClock.elapsedRealtime() + this.K0 : C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [prb] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.d, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, wd6] */
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
    public final void B1(Object obj) throws ExoPlaybackException {
        ?? NewInstanceV17;
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            NewInstanceV17 = 0;
        }
        if (NewInstanceV17 == 0) {
            PlaceholderSurface placeholderSurface = this.R0;
            if (placeholderSurface != null) {
                NewInstanceV17 = surface;
                NewInstanceV17 = placeholderSurface;
            } else {
                d dVarW = W();
                if (dVarW != null && G1(dVarW)) {
                    NewInstanceV17 = surface;
                    NewInstanceV17 = PlaceholderSurface.newInstanceV17(this.H0, dVarW.g);
                    this.R0 = NewInstanceV17;
                }
            }
        }
        NewInstanceV17 = surface;
        NewInstanceV17 = surface;
        NewInstanceV17 = surface;
        if (this.Q0 == NewInstanceV17) {
            if (NewInstanceV17 == 0 || NewInstanceV17 == this.R0) {
                return;
            }
            s1();
            r1();
            return;
        }
        this.Q0 = NewInstanceV17;
        this.I0.m(NewInstanceV17);
        this.S0 = false;
        int state = getState();
        c cVarV = V();
        if (cVarV != null) {
            if (blb.a < 23 || NewInstanceV17 == 0 || this.O0) {
                C0();
                n0();
            } else {
                C1(cVarV, NewInstanceV17);
            }
        }
        if (NewInstanceV17 == 0 || NewInstanceV17 == this.R0) {
            Y0();
            X0();
            return;
        }
        s1();
        X0();
        if (state == 2) {
            A1();
        }
    }

    public void C1(c cVar, Surface surface) {
        cVar.setOutputSurface(surface);
    }

    public boolean D1(long j, long j2, boolean z) {
        return l1(j) && !z;
    }

    @Override
    public void E0() {
        super.E0();
        this.c1 = 0;
    }

    public boolean E1(long j, long j2, boolean z) {
        return k1(j) && !z;
    }

    public boolean F1(long j, long j2) {
        return k1(j) && j2 > SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
    }

    public final boolean G1(d dVar) {
        return blb.a >= 23 && !this.m1 && !Z0(dVar.a) && (!dVar.g || PlaceholderSurface.isSecureSupported(this.H0));
    }

    public void H1(c cVar, int i, long j) {
        sua.a("skipVideoBuffer");
        cVar.releaseOutputBuffer(i, false);
        sua.c();
        this.C0.f++;
    }

    public void I1(int i, int i2) {
        ju1 ju1Var = this.C0;
        ju1Var.h += i;
        int i3 = i + i2;
        ju1Var.g += i3;
        this.a1 += i3;
        int i4 = this.b1 + i3;
        this.b1 = i4;
        ju1Var.i = Math.max(i4, ju1Var.i);
        int i5 = this.L0;
        if (i5 <= 0 || this.a1 < i5) {
            return;
        }
        n1();
    }

    @Override
    public MediaCodecDecoderException J(Throwable th, d dVar) {
        return new MediaCodecVideoDecoderException(th, dVar, this.Q0);
    }

    public void J1(long j) {
        this.C0.a(j);
        this.f1 += j;
        this.g1++;
    }

    @Override
    public boolean N0(d dVar) {
        return this.Q0 != null || G1(dVar);
    }

    @Override
    public int Q0(e eVar, k kVar) {
        boolean z;
        int i = 0;
        if (!qp6.k(kVar.m)) {
            return ks8.create(0);
        }
        boolean z2 = kVar.p != null;
        List listH1 = h1(eVar, kVar, z2, false);
        if (z2 && listH1.isEmpty()) {
            listH1 = h1(eVar, kVar, false, false);
        }
        if (listH1.isEmpty()) {
            return ks8.create(1);
        }
        if (!MediaCodecRenderer.R0(kVar)) {
            return ks8.create(2);
        }
        d dVar = (d) listH1.get(0);
        boolean zM = dVar.m(kVar);
        if (!zM) {
            int i2 = 1;
            while (true) {
                if (i2 >= listH1.size()) {
                    z = true;
                    break;
                }
                d dVar2 = (d) listH1.get(i2);
                if (dVar2.m(kVar)) {
                    z = false;
                    zM = true;
                    dVar = dVar2;
                    break;
                }
                i2++;
            }
        } else {
            z = true;
            break;
        }
        int i3 = zM ? 4 : 3;
        int i4 = dVar.p(kVar) ? 16 : 8;
        int i5 = dVar.h ? 64 : 0;
        int i6 = z ? 128 : 0;
        if (zM) {
            List listH2 = h1(eVar, kVar, z2, true);
            if (!listH2.isEmpty()) {
                d dVar3 = (d) MediaCodecUtil.u(listH2, kVar).get(0);
                if (dVar3.m(kVar) && dVar3.p(kVar)) {
                    i = 32;
                }
            }
        }
        return ks8.create(i3, i4, i, i5, i6);
    }

    @Override
    public boolean X() {
        return this.m1 && blb.a < 23;
    }

    public final void X0() {
        c cVarV;
        this.U0 = false;
        if (blb.a < 23 || !this.m1 || (cVarV = V()) == null) {
            return;
        }
        this.o1 = new b(cVarV);
    }

    @Override
    public float Y(float f, k kVar, k[] kVarArr) {
        float fMax = -1.0f;
        for (k kVar2 : kVarArr) {
            float f2 = kVar2.t;
            if (f2 != -1.0f) {
                fMax = Math.max(fMax, f2);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    public final void Y0() {
        this.l1 = null;
    }

    public boolean Z0(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (wd6.class) {
            try {
                if (!r1) {
                    s1 = d1();
                    r1 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return s1;
    }

    @Override
    public List a0(e eVar, k kVar, boolean z) {
        return MediaCodecUtil.u(h1(eVar, kVar, z, this.m1), kVar);
    }

    @Override
    public c.a c0(d dVar, k kVar, MediaCrypto mediaCrypto, float f) {
        PlaceholderSurface placeholderSurface = this.R0;
        if (placeholderSurface != null && placeholderSurface.secure != dVar.g) {
            w1();
        }
        String str = dVar.c;
        a aVarG1 = g1(dVar, kVar, l());
        this.N0 = aVarG1;
        MediaFormat mediaFormatJ1 = j1(kVar, str, aVarG1, f, this.M0, this.m1 ? this.n1 : 0);
        if (this.Q0 == null) {
            if (!G1(dVar)) {
                throw new IllegalStateException();
            }
            if (this.R0 == null) {
                this.R0 = PlaceholderSurface.newInstanceV17(this.H0, dVar.g);
            }
            this.Q0 = this.R0;
        }
        return c.a.b(dVar, mediaFormatJ1, kVar, this.Q0, mediaCrypto);
    }

    public void c1(c cVar, int i, long j) {
        sua.a("dropVideoBuffer");
        cVar.releaseOutputBuffer(i, false);
        sua.c();
        I1(0, 1);
    }

    @Override
    public void f0(DecoderInputBuffer decoderInputBuffer) {
        if (this.P0) {
            ByteBuffer byteBuffer = (ByteBuffer) zi.e(decoderInputBuffer.g);
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4 && b4 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    z1(V(), bArr);
                }
            }
        }
    }

    public a g1(d dVar, k kVar, k[] kVarArr) {
        int iE1;
        int iMax = kVar.r;
        int iMax2 = kVar.s;
        int iI1 = i1(dVar, kVar);
        if (kVarArr.length == 1) {
            if (iI1 != -1 && (iE1 = e1(dVar, kVar)) != -1) {
                iI1 = Math.min((int) (iI1 * 1.5f), iE1);
            }
            return new a(iMax, iMax2, iI1);
        }
        int length = kVarArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            k kVarE = kVarArr[i];
            if (kVar.y != null && kVarE.y == null) {
                kVarE = kVarE.b().J(kVar.y).E();
            }
            if (dVar.e(kVar, kVarE).d != 0) {
                int i2 = kVarE.r;
                z |= i2 == -1 || kVarE.s == -1;
                iMax = Math.max(iMax, i2);
                iMax2 = Math.max(iMax2, kVarE.s);
                iI1 = Math.max(iI1, i1(dVar, kVarE));
            }
        }
        if (z) {
            op5.i("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointF1 = f1(dVar, kVar);
            if (pointF1 != null) {
                iMax = Math.max(iMax, pointF1.x);
                iMax2 = Math.max(iMax2, pointF1.y);
                iI1 = Math.max(iI1, e1(dVar, kVar.b().j0(iMax).Q(iMax2).E()));
                op5.i("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new a(iMax, iMax2, iI1);
    }

    @Override
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            B1(obj);
            return;
        }
        if (i == 7) {
            this.p1 = (lrb) obj;
            return;
        }
        if (i == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.n1 != iIntValue) {
                this.n1 = iIntValue;
                if (this.m1) {
                    C0();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 4) {
            if (i != 5) {
                super.handleMessage(i, obj);
                return;
            } else {
                this.I0.o(((Integer) obj).intValue());
                return;
            }
        }
        this.T0 = ((Integer) obj).intValue();
        c cVarV = V();
        if (cVarV != null) {
            cVarV.setVideoScalingMode(this.T0);
        }
    }

    @Override
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && (this.U0 || (((placeholderSurface = this.R0) != null && this.Q0 == placeholderSurface) || V() == null || this.m1))) {
            this.Y0 = C.TIME_UNSET;
            return true;
        }
        if (this.Y0 == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.Y0) {
            return true;
        }
        this.Y0 = C.TIME_UNSET;
        return false;
    }

    public MediaFormat j1(k kVar, String str, a aVar, float f, boolean z, int i) {
        Pair pairQ;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", kVar.r);
        mediaFormat.setInteger("height", kVar.s);
        wf6.e(mediaFormat, kVar.o);
        wf6.c(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_FRAME_RATE, kVar.t);
        wf6.d(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_ROTATION, kVar.u);
        wf6.b(mediaFormat, kVar.y);
        if ("video/dolby-vision".equals(kVar.m) && (pairQ = MediaCodecUtil.q(kVar)) != null) {
            wf6.d(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, ((Integer) pairQ.first).intValue());
        }
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_WIDTH, aVar.a);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_HEIGHT, aVar.b);
        wf6.d(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE, aVar.c);
        if (blb.a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            a1(mediaFormat, i);
        }
        return mediaFormat;
    }

    public boolean m1(long j, boolean z) throws ExoPlaybackException {
        int iW = w(j);
        if (iW == 0) {
            return false;
        }
        if (z) {
            ju1 ju1Var = this.C0;
            ju1Var.d += iW;
            ju1Var.f += this.c1;
        } else {
            this.C0.j++;
            I1(iW, this.c1);
        }
        S();
        return true;
    }

    @Override
    public void n() {
        Y0();
        X0();
        this.S0 = false;
        this.o1 = null;
        try {
            super.n();
        } finally {
            this.J0.m(this.C0);
        }
    }

    public final void n1() {
        if (this.a1 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.J0.n(this.a1, jElapsedRealtime - this.Z0);
            this.a1 = 0;
            this.Z0 = jElapsedRealtime;
        }
    }

    @Override
    public void o(boolean z, boolean z2) {
        super.o(z, z2);
        boolean z3 = h().a;
        zi.g((z3 && this.n1 == 0) ? false : true);
        if (this.m1 != z3) {
            this.m1 = z3;
            C0();
        }
        this.J0.o(this.C0);
        this.V0 = z2;
        this.W0 = false;
    }

    public void o1() {
        this.W0 = true;
        if (this.U0) {
            return;
        }
        this.U0 = true;
        this.J0.A(this.Q0);
        this.S0 = true;
    }

    @Override
    public void p(long j, boolean z) throws ExoPlaybackException {
        super.p(j, z);
        X0();
        this.I0.j();
        this.d1 = C.TIME_UNSET;
        this.X0 = C.TIME_UNSET;
        this.b1 = 0;
        if (z) {
            A1();
        } else {
            this.Y0 = C.TIME_UNSET;
        }
    }

    @Override
    public void p0(Exception exc) {
        op5.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.J0.C(exc);
    }

    public final void p1() {
        int i = this.g1;
        if (i != 0) {
            this.J0.B(this.f1, i);
            this.f1 = 0L;
            this.g1 = 0;
        }
    }

    @Override
    public void q() {
        try {
            super.q();
        } finally {
            if (this.R0 != null) {
                w1();
            }
        }
    }

    @Override
    public void q0(String str, c.a aVar, long j, long j2) {
        this.J0.k(str, j, j2);
        this.O0 = Z0(str);
        this.P0 = ((d) zi.e(W())).n();
        if (blb.a < 23 || !this.m1) {
            return;
        }
        this.o1 = new b((c) zi.e(V()));
    }

    public final void q1() {
        int i = this.h1;
        if (i == -1 && this.i1 == -1) {
            return;
        }
        f7c f7cVar = this.l1;
        if (f7cVar != null && f7cVar.b == i && f7cVar.c == this.i1 && f7cVar.d == this.j1 && f7cVar.e == this.k1) {
            return;
        }
        f7c f7cVar2 = new f7c(this.h1, this.i1, this.j1, this.k1);
        this.l1 = f7cVar2;
        this.J0.D(f7cVar2);
    }

    @Override
    public void r() {
        super.r();
        this.a1 = 0;
        this.Z0 = SystemClock.elapsedRealtime();
        this.e1 = SystemClock.elapsedRealtime() * 1000;
        this.f1 = 0L;
        this.g1 = 0;
        this.I0.k();
    }

    @Override
    public void r0(String str) {
        this.J0.l(str);
    }

    public final void r1() {
        if (this.S0) {
            this.J0.A(this.Q0);
        }
    }

    @Override
    public void s() {
        this.Y0 = C.TIME_UNSET;
        n1();
        p1();
        this.I0.l();
        super.s();
    }

    @Override
    public lu1 s0(o44 o44Var) throws ExoPlaybackException {
        lu1 lu1VarS0 = super.s0(o44Var);
        this.J0.p(o44Var.b, lu1VarS0);
        return lu1VarS0;
    }

    public final void s1() {
        f7c f7cVar = this.l1;
        if (f7cVar != null) {
            this.J0.D(f7cVar);
        }
    }

    @Override
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        super.setPlaybackSpeed(f, f2);
        this.I0.i(f);
    }

    @Override
    public void t0(k kVar, MediaFormat mediaFormat) {
        c cVarV = V();
        if (cVarV != null) {
            cVarV.setVideoScalingMode(this.T0);
        }
        if (this.m1) {
            this.h1 = kVar.r;
            this.i1 = kVar.s;
        } else {
            zi.e(mediaFormat);
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.h1 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            this.i1 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        }
        float f = kVar.v;
        this.k1 = f;
        if (blb.a >= 21) {
            int i = kVar.u;
            if (i == 90 || i == 270) {
                int i2 = this.h1;
                this.h1 = this.i1;
                this.i1 = i2;
                this.k1 = 1.0f / f;
            }
        } else {
            this.j1 = kVar.u;
        }
        this.I0.g(kVar.t);
    }

    public final void t1(long j, long j2, k kVar) {
        lrb lrbVar = this.p1;
        if (lrbVar != null) {
            lrbVar.a(j, j2, kVar, Z());
        }
    }

    @Override
    public void u0(long j) {
        super.u0(j);
        if (this.m1) {
            return;
        }
        this.c1--;
    }

    public void u1(long j) {
        U0(j);
        q1();
        this.C0.e++;
        o1();
        u0(j);
    }

    @Override
    public void v0() {
        super.v0();
        X0();
    }

    public final void v1() {
        J0();
    }

    @Override
    public void w0(DecoderInputBuffer decoderInputBuffer) {
        boolean z = this.m1;
        if (!z) {
            this.c1++;
        }
        if (blb.a >= 23 || !z) {
            return;
        }
        u1(decoderInputBuffer.f);
    }

    public final void w1() {
        Surface surface = this.Q0;
        PlaceholderSurface placeholderSurface = this.R0;
        if (surface == placeholderSurface) {
            this.Q0 = null;
        }
        placeholderSurface.release();
        this.R0 = null;
    }

    public void x1(c cVar, int i, long j) {
        q1();
        sua.a("releaseOutputBuffer");
        cVar.releaseOutputBuffer(i, true);
        sua.c();
        this.e1 = SystemClock.elapsedRealtime() * 1000;
        this.C0.e++;
        this.b1 = 0;
        o1();
    }

    @Override
    public boolean y0(long j, long j2, c cVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, k kVar) {
        zi.e(cVar);
        if (this.X0 == C.TIME_UNSET) {
            this.X0 = j;
        }
        if (j3 != this.d1) {
            this.I0.h(j3);
            this.d1 = j3;
        }
        long jD0 = d0();
        long j4 = j3 - jD0;
        if (z && !z2) {
            H1(cVar, i, j4);
            return true;
        }
        double dE0 = e0();
        boolean z3 = getState() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j5 = (long) ((j3 - j) / dE0);
        if (z3) {
            j5 -= jElapsedRealtime - j2;
        }
        if (this.Q0 == this.R0) {
            if (!k1(j5)) {
                return false;
            }
            H1(cVar, i, j4);
            J1(j5);
            return true;
        }
        long j6 = jElapsedRealtime - this.e1;
        boolean z4 = this.W0 ? !this.U0 : z3 || this.V0;
        if (this.Y0 == C.TIME_UNSET && j >= jD0 && (z4 || (z3 && F1(j5, j6)))) {
            long jNanoTime = System.nanoTime();
            t1(j4, jNanoTime, kVar);
            if (blb.a >= 21) {
                y1(cVar, i, j4, jNanoTime);
            } else {
                x1(cVar, i, j4);
            }
            J1(j5);
            return true;
        }
        if (z3 && j != this.X0) {
            long jNanoTime2 = System.nanoTime();
            long jB = this.I0.b((j5 * 1000) + jNanoTime2);
            long j7 = (jB - jNanoTime2) / 1000;
            boolean z5 = this.Y0 != C.TIME_UNSET;
            if (D1(j7, j2, z2) && m1(j, z5)) {
                return false;
            }
            if (E1(j7, j2, z2)) {
                if (z5) {
                    H1(cVar, i, j4);
                } else {
                    c1(cVar, i, j4);
                }
                J1(j7);
                return true;
            }
            if (blb.a >= 21) {
                if (j7 < 50000) {
                    t1(j4, jB, kVar);
                    y1(cVar, i, j4, jB);
                    J1(j7);
                    return true;
                }
            } else if (j7 < 30000) {
                if (j7 > 11000) {
                    try {
                        Thread.sleep((j7 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                t1(j4, jB, kVar);
                x1(cVar, i, j4);
                J1(j7);
                return true;
            }
        }
        return false;
    }

    public void y1(c cVar, int i, long j, long j2) {
        q1();
        sua.a("releaseOutputBuffer");
        cVar.releaseOutputBuffer(i, j2);
        sua.c();
        this.e1 = SystemClock.elapsedRealtime() * 1000;
        this.C0.e++;
        this.b1 = 0;
        o1();
    }

    @Override
    public lu1 z(d dVar, k kVar, k kVar2) {
        lu1 lu1VarE = dVar.e(kVar, kVar2);
        int i = lu1VarE.e;
        int i2 = kVar2.r;
        a aVar = this.N0;
        if (i2 > aVar.a || kVar2.s > aVar.b) {
            i |= 256;
        }
        if (i1(dVar, kVar2) > this.N0.c) {
            i |= 64;
        }
        int i3 = i;
        return new lu1(dVar.a, kVar, kVar2, i3 != 0 ? 0 : lu1VarE.d, i3);
    }

    public wd6(Context context, c.b bVar, e eVar, long j, boolean z, Handler handler, c6c c6cVar, int i, float f) {
        super(2, bVar, eVar, z, f);
        this.K0 = j;
        this.L0 = i;
        Context applicationContext = context.getApplicationContext();
        this.H0 = applicationContext;
        this.I0 = new prb(applicationContext);
        this.J0 = new c6c.a(handler, c6cVar);
        this.M0 = b1();
        this.Y0 = C.TIME_UNSET;
        this.h1 = -1;
        this.i1 = -1;
        this.k1 = -1.0f;
        this.T0 = 1;
        this.n1 = 0;
        Y0();
    }
}

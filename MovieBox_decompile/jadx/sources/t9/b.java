package t9;

import android.net.Uri;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.i0;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import i9.a0;
import i9.e0;
import i9.l;
import i9.m;
import i9.n;
import i9.q;
import i9.r;
import java.util.Map;

public final class b implements l {

    public static final r f72566h = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return b.f();
        }
    };

    private n f72567a;

    private e0 f72568b;

    private InterfaceC0889b f72571e;

    private int f72569c = 0;

    private long f72570d = -1;

    private int f72572f = -1;

    private long f72573g = -1;

    private static final class a implements InterfaceC0889b {

        private static final int[] f72574m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        private static final int[] f72575n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 130, 143, 157, 173, 190, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 230, 253, 279, 307, 337, 371, TTAdConstant.DOWNLOAD_URL_CODE, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        private final n f72576a;

        private final e0 f72577b;

        private final t9.c f72578c;

        private final int f72579d;

        private final byte[] f72580e;

        private final d0 f72581f;

        private final int f72582g;

        private final p1 f72583h;

        private int f72584i;

        private long f72585j;

        private int f72586k;

        private long f72587l;

        public a(n nVar, e0 e0Var, t9.c cVar) throws ParserException {
            this.f72576a = nVar;
            this.f72577b = e0Var;
            this.f72578c = cVar;
            int iMax = Math.max(1, cVar.f72598c / 10);
            this.f72582g = iMax;
            d0 d0Var = new d0(cVar.f72602g);
            d0Var.v();
            int iV = d0Var.v();
            this.f72579d = iV;
            int i10 = cVar.f72597b;
            int i11 = (((cVar.f72600e - (i10 * 4)) * 8) / (cVar.f72601f * i10)) + 1;
            if (iV == i11) {
                int iL = p0.l(iMax, iV);
                this.f72580e = new byte[cVar.f72600e * iL];
                this.f72581f = new d0(iL * h(iV, i10));
                int i12 = ((cVar.f72598c * cVar.f72600e) * 8) / iV;
                this.f72583h = new p1.b().e0(MimeTypes.AUDIO_RAW).G(i12).Z(i12).W(h(iMax, i10)).H(cVar.f72597b).f0(cVar.f72598c).Y(2).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected frames per block: " + i11 + "; got: " + iV, null);
        }

        private void d(byte[] bArr, int i10, d0 d0Var) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < this.f72578c.f72597b; i12++) {
                    e(bArr, i11, i12, d0Var.d());
                }
            }
            int iG = g(this.f72579d * i10);
            d0Var.P(0);
            d0Var.O(iG);
        }

        private void e(byte[] bArr, int i10, int i11, byte[] bArr2) {
            t9.c cVar = this.f72578c;
            int i12 = cVar.f72600e;
            int i13 = cVar.f72597b;
            int i14 = (i10 * i12) + (i11 * 4);
            int i15 = (i13 * 4) + i14;
            int i16 = (i12 / i13) - 4;
            int iQ = (short) (((bArr[i14 + 1] & 255) << 8) | (bArr[i14] & 255));
            int iMin = Math.min(bArr[i14 + 2] & 255, 88);
            int i17 = f72575n[iMin];
            int i18 = ((i10 * this.f72579d * i13) + i11) * 2;
            bArr2[i18] = (byte) (iQ & 255);
            bArr2[i18 + 1] = (byte) (iQ >> 8);
            for (int i19 = 0; i19 < i16 * 2; i19++) {
                byte b10 = bArr[((i19 / 8) * i13 * 4) + i15 + ((i19 / 2) % 4)];
                int i20 = i19 % 2 == 0 ? b10 & 15 : (b10 & 255) >> 4;
                int i21 = ((((i20 & 7) * 2) + 1) * i17) >> 3;
                if ((i20 & 8) != 0) {
                    i21 = -i21;
                }
                iQ = p0.q(iQ + i21, -32768, 32767);
                i18 += i13 * 2;
                bArr2[i18] = (byte) (iQ & 255);
                bArr2[i18 + 1] = (byte) (iQ >> 8);
                int i22 = iMin + f72574m[i20];
                int[] iArr = f72575n;
                iMin = p0.q(i22, 0, iArr.length - 1);
                i17 = iArr[iMin];
            }
        }

        private int f(int i10) {
            return i10 / (this.f72578c.f72597b * 2);
        }

        private int g(int i10) {
            return h(i10, this.f72578c.f72597b);
        }

        private static int h(int i10, int i11) {
            return i10 * 2 * i11;
        }

        private void i(int i10) {
            long jN0 = this.f72585j + p0.N0(this.f72587l, 1000000L, this.f72578c.f72598c);
            int iG = g(i10);
            this.f72577b.e(jN0, 1, iG, this.f72586k - iG, null);
            this.f72587l += (long) i10;
            this.f72586k -= iG;
        }

        @Override
        public void a(int i10, long j10) {
            this.f72576a.g(new e(this.f72578c, this.f72579d, i10, j10));
            this.f72577b.d(this.f72583h);
        }

        @Override
        public void b(long j10) {
            this.f72584i = 0;
            this.f72585j = j10;
            this.f72586k = 0;
            this.f72587l = 0L;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0038 A[LOOP:0: B:6:0x001e->B:12:0x0038, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:23:0x003e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:25:0x001b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0020  */
        /* JADX WARN: Code duplicated, block: B:9:0x0024  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public boolean c(i9.m r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.f72582g
                int r1 = r6.f72586k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f72579d
                int r0 = com.google.android.exoplayer2.util.p0.l(r0, r1)
                t9.c r1 = r6.f72578c
                int r1 = r1.f72600e
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.f72584i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f72580e
                int r5 = r6.f72584i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f72584i
                int r4 = r4 + r3
                r6.f72584i = r4
                goto L1e
            L3e:
                int r7 = r6.f72584i
                t9.c r8 = r6.f72578c
                int r8 = r8.f72600e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f72580e
                com.google.android.exoplayer2.util.d0 r9 = r6.f72581f
                r6.d(r8, r7, r9)
                int r8 = r6.f72584i
                t9.c r9 = r6.f72578c
                int r9 = r9.f72600e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f72584i = r8
                com.google.android.exoplayer2.util.d0 r7 = r6.f72581f
                int r7 = r7.f()
                i9.e0 r8 = r6.f72577b
                com.google.android.exoplayer2.util.d0 r9 = r6.f72581f
                r8.c(r9, r7)
                int r8 = r6.f72586k
                int r8 = r8 + r7
                r6.f72586k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f72582g
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f72586k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: t9.b.a.c(i9.m, long):boolean");
        }
    }

    private interface InterfaceC0889b {
        void a(int i10, long j10);

        void b(long j10);

        boolean c(m mVar, long j10);
    }

    private static final class c implements InterfaceC0889b {

        private final n f72588a;

        private final e0 f72589b;

        private final t9.c f72590c;

        private final p1 f72591d;

        private final int f72592e;

        private long f72593f;

        private int f72594g;

        private long f72595h;

        public c(n nVar, e0 e0Var, t9.c cVar, String str, int i10) throws ParserException {
            this.f72588a = nVar;
            this.f72589b = e0Var;
            this.f72590c = cVar;
            int i11 = (cVar.f72597b * cVar.f72601f) / 8;
            if (cVar.f72600e == i11) {
                int i12 = cVar.f72598c;
                int i13 = i12 * i11 * 8;
                int iMax = Math.max(i11, (i12 * i11) / 10);
                this.f72592e = iMax;
                this.f72591d = new p1.b().e0(str).G(i13).Z(i13).W(iMax).H(cVar.f72597b).f0(cVar.f72598c).Y(i10).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected block size: " + i11 + "; got: " + cVar.f72600e, null);
        }

        @Override
        public void a(int i10, long j10) {
            this.f72588a.g(new e(this.f72590c, 1, i10, j10));
            this.f72589b.d(this.f72591d);
        }

        @Override
        public void b(long j10) {
            this.f72593f = j10;
            this.f72594g = 0;
            this.f72595h = 0L;
        }

        @Override
        public boolean c(m mVar, long j10) {
            int i10;
            int i11;
            long j11 = j10;
            while (j11 > 0 && (i10 = this.f72594g) < (i11 = this.f72592e)) {
                int iB = this.f72589b.b(mVar, (int) Math.min(i11 - i10, j11), true);
                if (iB == -1) {
                    j11 = 0;
                } else {
                    this.f72594g += iB;
                    j11 -= (long) iB;
                }
            }
            t9.c cVar = this.f72590c;
            int i12 = cVar.f72600e;
            int i13 = this.f72594g / i12;
            if (i13 > 0) {
                long jN0 = this.f72593f + p0.N0(this.f72595h, 1000000L, cVar.f72598c);
                int i14 = i13 * i12;
                int i15 = this.f72594g - i14;
                this.f72589b.e(jN0, 1, i14, i15, null);
                this.f72595h += (long) i13;
                this.f72594g = i15;
            }
            return j11 <= 0;
        }
    }

    private void e() {
        com.google.android.exoplayer2.util.a.i(this.f72568b);
        p0.j(this.f72567a);
    }

    public static l[] f() {
        return new l[]{new b()};
    }

    private void g(m mVar) throws ParserException {
        com.google.android.exoplayer2.util.a.g(mVar.getPosition() == 0);
        int i10 = this.f72572f;
        if (i10 != -1) {
            mVar.skipFully(i10);
            this.f72569c = 4;
        } else {
            if (!d.a(mVar)) {
                throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
            }
            mVar.skipFully((int) (mVar.getPeekPosition() - mVar.getPosition()));
            this.f72569c = 1;
        }
    }

    private void h(m mVar) throws ParserException {
        t9.c cVarB = d.b(mVar);
        int i10 = cVarB.f72596a;
        if (i10 == 17) {
            this.f72571e = new a(this.f72567a, this.f72568b, cVarB);
        } else if (i10 == 6) {
            this.f72571e = new c(this.f72567a, this.f72568b, cVarB, MimeTypes.AUDIO_ALAW, -1);
        } else if (i10 == 7) {
            this.f72571e = new c(this.f72567a, this.f72568b, cVarB, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int iA = i0.a(i10, cVarB.f72601f);
            if (iA == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + cVarB.f72596a);
            }
            this.f72571e = new c(this.f72567a, this.f72568b, cVarB, MimeTypes.AUDIO_RAW, iA);
        }
        this.f72569c = 3;
    }

    private void i(m mVar) {
        this.f72570d = d.c(mVar);
        this.f72569c = 2;
    }

    private int j(m mVar) {
        com.google.android.exoplayer2.util.a.g(this.f72573g != -1);
        return ((InterfaceC0889b) com.google.android.exoplayer2.util.a.e(this.f72571e)).c(mVar, this.f72573g - mVar.getPosition()) ? -1 : 0;
    }

    private void k(m mVar) throws ParserException {
        Pair pairE = d.e(mVar);
        this.f72572f = ((Long) pairE.first).intValue();
        long jLongValue = ((Long) pairE.second).longValue();
        long j10 = this.f72570d;
        if (j10 != -1 && jLongValue == 4294967295L) {
            jLongValue = j10;
        }
        this.f72573g = ((long) this.f72572f) + jLongValue;
        long length = mVar.getLength();
        if (length != -1 && this.f72573g > length) {
            s.i("WavExtractor", "Data exceeds input length: " + this.f72573g + ", " + length);
            this.f72573g = length;
        }
        ((InterfaceC0889b) com.google.android.exoplayer2.util.a.e(this.f72571e)).a(this.f72572f, this.f72573g);
        this.f72569c = 4;
    }

    @Override
    public void b(n nVar) {
        this.f72567a = nVar;
        this.f72568b = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override
    public boolean c(m mVar) {
        return d.a(mVar);
    }

    @Override
    public int d(m mVar, a0 a0Var) throws ParserException {
        e();
        int i10 = this.f72569c;
        if (i10 == 0) {
            g(mVar);
            return 0;
        }
        if (i10 == 1) {
            i(mVar);
            return 0;
        }
        if (i10 == 2) {
            h(mVar);
            return 0;
        }
        if (i10 == 3) {
            k(mVar);
            return 0;
        }
        if (i10 == 4) {
            return j(mVar);
        }
        throw new IllegalStateException();
    }

    @Override
    public void seek(long j10, long j11) {
        this.f72569c = j10 == 0 ? 0 : 4;
        InterfaceC0889b interfaceC0889b = this.f72571e;
        if (interfaceC0889b != null) {
            interfaceC0889b.b(j11);
        }
    }

    @Override
    public void release() {
    }
}

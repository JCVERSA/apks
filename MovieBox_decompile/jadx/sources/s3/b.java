package s3;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import h3.s;
import java.util.List;
import java.util.Map;
import k2.l0;
import k2.q;
import k2.r;
import k2.s0;
import k2.t;
import k2.w;
import k2.w0;
import k2.x;

public final class b implements r {

    public static final x f71482h = new x() {
        @Override
        public x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override
        public x b(int i10) {
            return w.b(this, i10);
        }

        @Override
        public r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override
        public final r[] createExtractors() {
            return b.h();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    private t f71483a;

    private s0 f71484b;

    private InterfaceC0879b f71487e;

    private int f71485c = 0;

    private long f71486d = -1;

    private int f71488f = -1;

    private long f71489g = -1;

    private static final class a implements InterfaceC0879b {

        private static final int[] f71490m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        private static final int[] f71491n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 130, 143, 157, 173, 190, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 230, 253, 279, 307, 337, 371, TTAdConstant.DOWNLOAD_URL_CODE, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        private final t f71492a;

        private final s0 f71493b;

        private final s3.c f71494c;

        private final int f71495d;

        private final byte[] f71496e;

        private final j0 f71497f;

        private final int f71498g;

        private final androidx.media3.common.r f71499h;

        private int f71500i;

        private long f71501j;

        private int f71502k;

        private long f71503l;

        public a(t tVar, s0 s0Var, s3.c cVar) throws ParserException {
            this.f71492a = tVar;
            this.f71493b = s0Var;
            this.f71494c = cVar;
            int iMax = Math.max(1, cVar.f71514c / 10);
            this.f71498g = iMax;
            j0 j0Var = new j0(cVar.f71518g);
            j0Var.z();
            int iZ = j0Var.z();
            this.f71495d = iZ;
            int i10 = cVar.f71513b;
            int i11 = (((cVar.f71516e - (i10 * 4)) * 8) / (cVar.f71517f * i10)) + 1;
            if (iZ == i11) {
                int iK = a1.k(iMax, iZ);
                this.f71496e = new byte[cVar.f71516e * iK];
                this.f71497f = new j0(iK * h(iZ, i10));
                int i12 = ((cVar.f71514c * cVar.f71516e) * 8) / iZ;
                this.f71499h = new androidx.media3.common.r.b().u0(MimeTypes.AUDIO_RAW).Q(i12).p0(i12).k0(h(iMax, i10)).R(cVar.f71513b).v0(cVar.f71514c).o0(2).N();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected frames per block: " + i11 + "; got: " + iZ, null);
        }

        private void d(byte[] bArr, int i10, j0 j0Var) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < this.f71494c.f71513b; i12++) {
                    e(bArr, i11, i12, j0Var.e());
                }
            }
            int iG = g(this.f71495d * i10);
            j0Var.W(0);
            j0Var.V(iG);
        }

        private void e(byte[] bArr, int i10, int i11, byte[] bArr2) {
            s3.c cVar = this.f71494c;
            int i12 = cVar.f71516e;
            int i13 = cVar.f71513b;
            int i14 = (i10 * i12) + (i11 * 4);
            int i15 = (i13 * 4) + i14;
            int i16 = (i12 / i13) - 4;
            int iP = (short) (((bArr[i14 + 1] & 255) << 8) | (bArr[i14] & 255));
            int iMin = Math.min(bArr[i14 + 2] & 255, 88);
            int i17 = f71491n[iMin];
            int i18 = ((i10 * this.f71495d * i13) + i11) * 2;
            bArr2[i18] = (byte) (iP & 255);
            bArr2[i18 + 1] = (byte) (iP >> 8);
            for (int i19 = 0; i19 < i16 * 2; i19++) {
                byte b10 = bArr[((i19 / 8) * i13 * 4) + i15 + ((i19 / 2) % 4)];
                int i20 = i19 % 2 == 0 ? b10 & 15 : (b10 & 255) >> 4;
                int i21 = ((((i20 & 7) * 2) + 1) * i17) >> 3;
                if ((i20 & 8) != 0) {
                    i21 = -i21;
                }
                iP = a1.p(iP + i21, -32768, 32767);
                i18 += i13 * 2;
                bArr2[i18] = (byte) (iP & 255);
                bArr2[i18 + 1] = (byte) (iP >> 8);
                int i22 = iMin + f71490m[i20];
                int[] iArr = f71491n;
                iMin = a1.p(i22, 0, iArr.length - 1);
                i17 = iArr[iMin];
            }
        }

        private int f(int i10) {
            return i10 / (this.f71494c.f71513b * 2);
        }

        private int g(int i10) {
            return h(i10, this.f71494c.f71513b);
        }

        private static int h(int i10, int i11) {
            return i10 * 2 * i11;
        }

        private void i(int i10) {
            long jE1 = this.f71501j + a1.e1(this.f71503l, 1000000L, this.f71494c.f71514c);
            int iG = g(i10);
            this.f71493b.b(jE1, 1, iG, this.f71502k - iG, null);
            this.f71503l += (long) i10;
            this.f71502k -= iG;
        }

        @Override
        public void a(int i10, long j10) {
            e eVar = new e(this.f71494c, this.f71495d, i10, j10);
            this.f71492a.d(eVar);
            this.f71493b.d(this.f71499h);
            this.f71493b.f(eVar.getDurationUs());
        }

        @Override
        public void b(long j10) {
            this.f71500i = 0;
            this.f71501j = j10;
            this.f71502k = 0;
            this.f71503l = 0L;
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
        public boolean c(k2.s r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.f71498g
                int r1 = r6.f71502k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f71495d
                int r0 = androidx.media3.common.util.a1.k(r0, r1)
                s3.c r1 = r6.f71494c
                int r1 = r1.f71516e
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
                int r3 = r6.f71500i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f71496e
                int r5 = r6.f71500i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f71500i
                int r4 = r4 + r3
                r6.f71500i = r4
                goto L1e
            L3e:
                int r7 = r6.f71500i
                s3.c r8 = r6.f71494c
                int r8 = r8.f71516e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f71496e
                androidx.media3.common.util.j0 r9 = r6.f71497f
                r6.d(r8, r7, r9)
                int r8 = r6.f71500i
                s3.c r9 = r6.f71494c
                int r9 = r9.f71516e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f71500i = r8
                androidx.media3.common.util.j0 r7 = r6.f71497f
                int r7 = r7.g()
                k2.s0 r8 = r6.f71493b
                androidx.media3.common.util.j0 r9 = r6.f71497f
                r8.c(r9, r7)
                int r8 = r6.f71502k
                int r8 = r8 + r7
                r6.f71502k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f71498g
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f71502k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: s3.b.a.c(k2.s, long):boolean");
        }
    }

    private interface InterfaceC0879b {
        void a(int i10, long j10);

        void b(long j10);

        boolean c(k2.s sVar, long j10);
    }

    private static final class c implements InterfaceC0879b {

        private final t f71504a;

        private final s0 f71505b;

        private final s3.c f71506c;

        private final androidx.media3.common.r f71507d;

        private final int f71508e;

        private long f71509f;

        private int f71510g;

        private long f71511h;

        public c(t tVar, s0 s0Var, s3.c cVar, String str, int i10) throws ParserException {
            this.f71504a = tVar;
            this.f71505b = s0Var;
            this.f71506c = cVar;
            int i11 = (cVar.f71513b * cVar.f71517f) / 8;
            if (cVar.f71516e == i11) {
                int i12 = cVar.f71514c;
                int i13 = i12 * i11 * 8;
                int iMax = Math.max(i11, (i12 * i11) / 10);
                this.f71508e = iMax;
                this.f71507d = new androidx.media3.common.r.b().U("audio/wav").u0(str).Q(i13).p0(i13).k0(iMax).R(cVar.f71513b).v0(cVar.f71514c).o0(i10).N();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected block size: " + i11 + "; got: " + cVar.f71516e, null);
        }

        @Override
        public void a(int i10, long j10) {
            e eVar = new e(this.f71506c, 1, i10, j10);
            this.f71504a.d(eVar);
            this.f71505b.d(this.f71507d);
            this.f71505b.f(eVar.getDurationUs());
        }

        @Override
        public void b(long j10) {
            this.f71509f = j10;
            this.f71510g = 0;
            this.f71511h = 0L;
        }

        @Override
        public boolean c(k2.s sVar, long j10) {
            int i10;
            int i11;
            long j11 = j10;
            while (j11 > 0 && (i10 = this.f71510g) < (i11 = this.f71508e)) {
                int iE = this.f71505b.e(sVar, (int) Math.min(i11 - i10, j11), true);
                if (iE == -1) {
                    j11 = 0;
                } else {
                    this.f71510g += iE;
                    j11 -= (long) iE;
                }
            }
            s3.c cVar = this.f71506c;
            int i12 = cVar.f71516e;
            int i13 = this.f71510g / i12;
            if (i13 > 0) {
                long jE1 = this.f71509f + a1.e1(this.f71511h, 1000000L, cVar.f71514c);
                int i14 = i13 * i12;
                int i15 = this.f71510g - i14;
                this.f71505b.b(jE1, 1, i14, i15, null);
                this.f71511h += (long) i13;
                this.f71510g = i15;
            }
            return j11 <= 0;
        }
    }

    private void g() {
        androidx.media3.common.util.a.i(this.f71484b);
        a1.i(this.f71483a);
    }

    public static r[] h() {
        return new r[]{new b()};
    }

    private void i(k2.s sVar) throws ParserException {
        androidx.media3.common.util.a.g(sVar.getPosition() == 0);
        int i10 = this.f71488f;
        if (i10 != -1) {
            sVar.skipFully(i10);
            this.f71485c = 4;
        } else {
            if (!d.a(sVar)) {
                throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
            }
            sVar.skipFully((int) (sVar.getPeekPosition() - sVar.getPosition()));
            this.f71485c = 1;
        }
    }

    private void j(k2.s sVar) throws ParserException {
        s3.c cVarB = d.b(sVar);
        int i10 = cVarB.f71512a;
        if (i10 == 17) {
            this.f71487e = new a(this.f71483a, this.f71484b, cVarB);
        } else if (i10 == 6) {
            this.f71487e = new c(this.f71483a, this.f71484b, cVarB, MimeTypes.AUDIO_ALAW, -1);
        } else if (i10 == 7) {
            this.f71487e = new c(this.f71483a, this.f71484b, cVarB, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int iA = w0.a(i10, cVarB.f71517f);
            if (iA == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + cVarB.f71512a);
            }
            this.f71487e = new c(this.f71483a, this.f71484b, cVarB, MimeTypes.AUDIO_RAW, iA);
        }
        this.f71485c = 3;
    }

    private void k(k2.s sVar) {
        this.f71486d = d.c(sVar);
        this.f71485c = 2;
    }

    private int l(k2.s sVar) {
        androidx.media3.common.util.a.g(this.f71489g != -1);
        return ((InterfaceC0879b) androidx.media3.common.util.a.e(this.f71487e)).c(sVar, this.f71489g - sVar.getPosition()) ? -1 : 0;
    }

    private void m(k2.s sVar) throws ParserException {
        Pair pairE = d.e(sVar);
        this.f71488f = ((Long) pairE.first).intValue();
        long jLongValue = ((Long) pairE.second).longValue();
        long j10 = this.f71486d;
        if (j10 != -1 && jLongValue == 4294967295L) {
            jLongValue = j10;
        }
        this.f71489g = ((long) this.f71488f) + jLongValue;
        long length = sVar.getLength();
        if (length != -1 && this.f71489g > length) {
            u.h("WavExtractor", "Data exceeds input length: " + this.f71489g + ", " + length);
            this.f71489g = length;
        }
        ((InterfaceC0879b) androidx.media3.common.util.a.e(this.f71487e)).a(this.f71488f, this.f71489g);
        this.f71485c = 4;
    }

    @Override
    public boolean b(k2.s sVar) {
        return d.a(sVar);
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        g();
        int i10 = this.f71485c;
        if (i10 == 0) {
            i(sVar);
            return 0;
        }
        if (i10 == 1) {
            k(sVar);
            return 0;
        }
        if (i10 == 2) {
            j(sVar);
            return 0;
        }
        if (i10 == 3) {
            m(sVar);
            return 0;
        }
        if (i10 == 4) {
            return l(sVar);
        }
        throw new IllegalStateException();
    }

    @Override
    public void e(t tVar) {
        this.f71483a = tVar;
        this.f71484b = tVar.track(0, 1);
        tVar.endTracks();
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f71485c = j10 == 0 ? 0 : 4;
        InterfaceC0879b interfaceC0879b = this.f71487e;
        if (interfaceC0879b != null) {
            interfaceC0879b.b(j11);
        }
    }

    @Override
    public void release() {
    }
}

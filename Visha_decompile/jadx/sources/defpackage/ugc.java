package defpackage;

import android.util.Pair;
import androidx.media3.muxer.MuxerUtil;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import com.hunantv.media.drm.IDrmSession;
import org.mozilla.classfile.ByteCode;

public final class ugc implements nk3 {
    public static final uk3 h = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return ugc.f();
        }
    };
    public qk3 a;
    public fva b;
    public b e;
    public int c = 0;
    public long d = -1;
    public int f = -1;
    public long g = -1;

    public static final class a implements b {
        public static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        public static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, ByteCode.LRETURN, ByteCode.ARRAYLENGTH, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        public final qk3 a;
        public final fva b;
        public final vgc c;
        public final int d;
        public final byte[] e;
        public final qw7 f;
        public final int g;
        public final k h;
        public int i;
        public long j;
        public int k;
        public long l;

        public a(qk3 qk3Var, fva fvaVar, vgc vgcVar) throws ParserException {
            this.a = qk3Var;
            this.b = fvaVar;
            this.c = vgcVar;
            int iMax = Math.max(1, vgcVar.c / 10);
            this.g = iMax;
            qw7 qw7Var = new qw7(vgcVar.g);
            qw7Var.u();
            int iU = qw7Var.u();
            this.d = iU;
            int i = vgcVar.b;
            int i2 = (((vgcVar.e - (i * 4)) * 8) / (vgcVar.f * i)) + 1;
            if (iU == i2) {
                int iL = blb.l(iMax, iU);
                this.e = new byte[vgcVar.e * iL];
                this.f = new qw7(iL * f(iU, i));
                int i3 = ((vgcVar.c * vgcVar.e) * 8) / iU;
                this.h = new k.b().e0("audio/raw").G(i3).Z(i3).W(f(iMax, i)).H(vgcVar.b).f0(vgcVar.c).Y(2).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected frames per block: " + i2 + "; got: " + iU, null);
        }

        public static int f(int i, int i2) {
            return i * 2 * i2;
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
        public boolean a(defpackage.pk3 r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.g
                int r1 = r6.k
                int r1 = r6.d(r1)
                int r0 = r0 - r1
                int r1 = r6.d
                int r0 = defpackage.blb.l(r0, r1)
                vgc r1 = r6.c
                int r1 = r1.e
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
                int r3 = r6.i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.e
                int r5 = r6.i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.i
                int r4 = r4 + r3
                r6.i = r4
                goto L1e
            L3e:
                int r7 = r6.i
                vgc r8 = r6.c
                int r8 = r8.e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.e
                qw7 r9 = r6.f
                r6.b(r8, r7, r9)
                int r8 = r6.i
                vgc r9 = r6.c
                int r9 = r9.e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.i = r8
                qw7 r7 = r6.f
                int r7 = r7.f()
                fva r8 = r6.b
                qw7 r9 = r6.f
                r8.d(r9, r7)
                int r8 = r6.k
                int r8 = r8 + r7
                r6.k = r8
                int r7 = r6.d(r8)
                int r8 = r6.g
                if (r7 < r8) goto L75
                r6.g(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.k
                int r7 = r6.d(r7)
                if (r7 <= 0) goto L82
                r6.g(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: ugc.a.a(pk3, long):boolean");
        }

        public final void b(byte[] bArr, int i, qw7 qw7Var) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.c.b; i3++) {
                    c(bArr, i2, i3, qw7Var.d());
                }
            }
            int iE = e(this.d * i);
            qw7Var.O(0);
            qw7Var.N(iE);
        }

        public final void c(byte[] bArr, int i, int i2, byte[] bArr2) {
            vgc vgcVar = this.c;
            int i3 = vgcVar.e;
            int i4 = vgcVar.b;
            int i5 = (i * i3) + (i2 * 4);
            int i6 = (i4 * 4) + i5;
            int i7 = (i3 / i4) - 4;
            int iP = (short) (((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255));
            int iMin = Math.min(bArr[i5 + 2] & 255, 88);
            int i8 = n[iMin];
            int i9 = ((i * this.d * i4) + i2) * 2;
            bArr2[i9] = (byte) (iP & 255);
            bArr2[i9 + 1] = (byte) (iP >> 8);
            for (int i10 = 0; i10 < i7 * 2; i10++) {
                byte b = bArr[((i10 / 8) * i4 * 4) + i6 + ((i10 / 2) % 4)];
                int i11 = i10 % 2 == 0 ? b & 15 : (b & 255) >> 4;
                int i12 = ((((i11 & 7) * 2) + 1) * i8) >> 3;
                if ((i11 & 8) != 0) {
                    i12 = -i12;
                }
                iP = blb.p(iP + i12, -32768, 32767);
                i9 += i4 * 2;
                bArr2[i9] = (byte) (iP & 255);
                bArr2[i9 + 1] = (byte) (iP >> 8);
                int i13 = iMin + m[i11];
                int[] iArr = n;
                iMin = blb.p(i13, 0, iArr.length - 1);
                i8 = iArr[iMin];
            }
        }

        public final int d(int i) {
            return i / (this.c.b * 2);
        }

        public final int e(int i) {
            return f(i, this.c.b);
        }

        public final void g(int i) {
            long jB0 = this.j + blb.B0(this.l, 1000000L, this.c.c);
            int iE = e(i);
            this.b.e(jB0, 1, iE, this.k - iE, null);
            this.l += (long) i;
            this.k -= iE;
        }

        @Override
        public void init(int i, long j) {
            this.a.d(new xgc(this.c, this.d, i, j));
            this.b.b(this.h);
        }

        @Override
        public void reset(long j) {
            this.i = 0;
            this.j = j;
            this.k = 0;
            this.l = 0L;
        }
    }

    public interface b {
        boolean a(pk3 pk3Var, long j);

        void init(int i, long j);

        void reset(long j);
    }

    public static final class c implements b {
        public final qk3 a;
        public final fva b;
        public final vgc c;
        public final k d;
        public final int e;
        public long f;
        public int g;
        public long h;

        public c(qk3 qk3Var, fva fvaVar, vgc vgcVar, String str, int i) throws ParserException {
            this.a = qk3Var;
            this.b = fvaVar;
            this.c = vgcVar;
            int i2 = (vgcVar.b * vgcVar.f) / 8;
            if (vgcVar.e == i2) {
                int i3 = vgcVar.c;
                int i4 = i3 * i2 * 8;
                int iMax = Math.max(i2, (i3 * i2) / 10);
                this.e = iMax;
                this.d = new k.b().e0(str).G(i4).Z(i4).W(iMax).H(vgcVar.b).f0(vgcVar.c).Y(i).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected block size: " + i2 + "; got: " + vgcVar.e, null);
        }

        @Override
        public boolean a(pk3 pk3Var, long j) {
            int i;
            int i2;
            long j2 = j;
            while (j2 > 0 && (i = this.g) < (i2 = this.e)) {
                int iC = this.b.c(pk3Var, (int) Math.min(i2 - i, j2), true);
                if (iC == -1) {
                    j2 = 0;
                } else {
                    this.g += iC;
                    j2 -= (long) iC;
                }
            }
            vgc vgcVar = this.c;
            int i3 = vgcVar.e;
            int i4 = this.g / i3;
            if (i4 > 0) {
                long jB0 = this.f + blb.B0(this.h, 1000000L, vgcVar.c);
                int i5 = i4 * i3;
                int i6 = this.g - i5;
                this.b.e(jB0, 1, i5, i6, null);
                this.h += (long) i4;
                this.g = i6;
            }
            return j2 <= 0;
        }

        @Override
        public void init(int i, long j) {
            this.a.d(new xgc(this.c, 1, i, j));
            this.b.b(this.d);
        }

        @Override
        public void reset(long j) {
            this.f = j;
            this.g = 0;
            this.h = 0L;
        }
    }

    private void e() {
        zi.i(this.b);
        blb.j(this.a);
    }

    public static nk3[] f() {
        return new nk3[]{new ugc()};
    }

    @Override
    public void a(qk3 qk3Var) {
        this.a = qk3Var;
        this.b = qk3Var.track(0, 1);
        qk3Var.endTracks();
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        e();
        int i = this.c;
        if (i == 0) {
            g(pk3Var);
            return 0;
        }
        if (i == 1) {
            i(pk3Var);
            return 0;
        }
        if (i == 2) {
            h(pk3Var);
            return 0;
        }
        if (i == 3) {
            k(pk3Var);
            return 0;
        }
        if (i == 4) {
            return j(pk3Var);
        }
        throw new IllegalStateException();
    }

    @Override
    public boolean c(pk3 pk3Var) {
        return wgc.a(pk3Var);
    }

    public final void g(pk3 pk3Var) throws ParserException {
        zi.g(pk3Var.getPosition() == 0);
        int i = this.f;
        if (i != -1) {
            pk3Var.skipFully(i);
            this.c = 4;
        } else {
            if (!wgc.a(pk3Var)) {
                throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
            }
            pk3Var.skipFully((int) (pk3Var.getPeekPosition() - pk3Var.getPosition()));
            this.c = 1;
        }
    }

    public final void h(pk3 pk3Var) throws ParserException {
        vgc vgcVarB = wgc.b(pk3Var);
        int i = vgcVarB.a;
        if (i == 17) {
            this.e = new a(this.a, this.b, vgcVarB);
        } else if (i == 6) {
            this.e = new c(this.a, this.b, vgcVarB, "audio/g711-alaw", -1);
        } else if (i == 7) {
            this.e = new c(this.a, this.b, vgcVarB, "audio/g711-mlaw", -1);
        } else {
            int iA = ygc.a(i, vgcVarB.f);
            if (iA == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + vgcVarB.a);
            }
            this.e = new c(this.a, this.b, vgcVarB, "audio/raw", iA);
        }
        this.c = 3;
    }

    public final void i(pk3 pk3Var) {
        this.d = wgc.c(pk3Var);
        this.c = 2;
    }

    public final int j(pk3 pk3Var) {
        zi.g(this.g != -1);
        return ((b) zi.e(this.e)).a(pk3Var, this.g - pk3Var.getPosition()) ? -1 : 0;
    }

    public final void k(pk3 pk3Var) throws ParserException {
        Pair pairE = wgc.e(pk3Var);
        this.f = ((Long) pairE.first).intValue();
        long jLongValue = ((Long) pairE.second).longValue();
        long j = this.d;
        if (j != -1 && jLongValue == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
            jLongValue = j;
        }
        this.g = ((long) this.f) + jLongValue;
        long length = pk3Var.getLength();
        if (length != -1 && this.g > length) {
            op5.i("WavExtractor", "Data exceeds input length: " + this.g + ", " + length);
            this.g = length;
        }
        ((b) zi.e(this.e)).init(this.f, this.g);
        this.c = 4;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        this.c = j == 0 ? 0 : 4;
        b bVar = this.e;
        if (bVar != null) {
            bVar.reset(j2);
        }
    }
}

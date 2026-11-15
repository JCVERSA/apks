package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.media3.muxer.MuxerUtil;
import com.hunantv.media.drm.IDrmSession;
import com.yandex.mobile.ads.impl.lj2;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;
import org.mozilla.classfile.ByteCode;

public final class lj2 implements z70 {
    private b80 a;
    private a62 b;
    private b e;
    private int c = 0;
    private long d = -1;
    private int f = -1;
    private long g = -1;

    public static final class a implements b {
        private static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        private static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, ByteCode.LRETURN, ByteCode.ARRAYLENGTH, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        private final b80 a;
        private final a62 b;
        private final mj2 c;
        private final int d;
        private final byte[] e;
        private final ag1 f;
        private final int g;
        private final jc0 h;
        private int i;
        private long j;
        private int k;
        private long l;

        public a(b80 b80Var, a62 a62Var, mj2 mj2Var) throws eg1 {
            this.a = b80Var;
            this.b = a62Var;
            this.c = mj2Var;
            int iMax = Math.max(1, mj2Var.c / 10);
            this.g = iMax;
            ag1 ag1Var = new ag1(mj2Var.f);
            ag1Var.o();
            int iO = ag1Var.o();
            this.d = iO;
            int i = mj2Var.b;
            int i2 = (((mj2Var.d - (i * 4)) * 8) / (mj2Var.e * i)) + 1;
            if (iO != i2) {
                throw eg1.a("Expected frames per block: " + i2 + "; got: " + iO, (Exception) null);
            }
            int iA = f92.a(iMax, iO);
            this.e = new byte[mj2Var.d * iA];
            this.f = new ag1(iA * a(iO, i));
            int i3 = ((mj2Var.c * mj2Var.d) * 8) / iO;
            this.h = new jc0.a().e("audio/raw").b(i3).j(i3).h(a(iMax, i)).c(mj2Var.b).l(mj2Var.c).i(2).a();
        }

        private static int a(int i, int i2) {
            return i * 2 * i2;
        }

        @Override
        public final void a(int i, long j) {
            this.a.a(new oj2(this.c, this.d, i, j));
            this.b.a(this.h);
        }

        @Override
        public final void a(long j) {
            this.i = 0;
            this.j = j;
            this.k = 0;
            this.l = 0L;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0042 A[LOOP:0: B:6:0x0027->B:12:0x0042, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:41:0x0048 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:43:0x0040 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0029  */
        /* JADX WARN: Code duplicated, block: B:9:0x002d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003e -> B:11:0x0040). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final boolean a(com.yandex.mobile.ads.impl.wz r21, long r22) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 449
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.lj2.a.a(com.yandex.mobile.ads.impl.wz, long):boolean");
        }
    }

    public interface b {
        void a(int i, long j) throws eg1;

        void a(long j);

        boolean a(wz wzVar, long j) throws IOException;
    }

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return lj2.a();
            }
        };
    }

    @Override
    public final void a(b80 b80Var) {
        this.a = b80Var;
        this.b = b80Var.a(0, 1);
        b80Var.a();
    }

    @Override
    public final void release() {
    }

    public static final class c implements b {
        private final b80 a;
        private final a62 b;
        private final mj2 c;
        private final jc0 d;
        private final int e;
        private long f;
        private int g;
        private long h;

        public c(b80 b80Var, a62 a62Var, mj2 mj2Var, String str, int i) throws eg1 {
            this.a = b80Var;
            this.b = a62Var;
            this.c = mj2Var;
            int i2 = (mj2Var.b * mj2Var.e) / 8;
            if (mj2Var.d != i2) {
                throw eg1.a("Expected block size: " + i2 + "; got: " + mj2Var.d, (Exception) null);
            }
            int i3 = mj2Var.c * i2;
            int i4 = i3 * 8;
            int iMax = Math.max(i2, i3 / 10);
            this.e = iMax;
            this.d = new jc0.a().e(str).b(i4).j(i4).h(iMax).c(mj2Var.b).l(mj2Var.c).i(i).a();
        }

        @Override
        public final void a(int i, long j) {
            this.a.a(new oj2(this.c, 1, i, j));
            this.b.a(this.d);
        }

        @Override
        public final void a(long j) {
            this.f = j;
            this.g = 0;
            this.h = 0L;
        }

        @Override
        public final boolean a(wz wzVar, long j) throws IOException {
            int i;
            int i2;
            long j2 = j;
            while (j2 > 0 && (i = this.g) < (i2 = this.e)) {
                int iB = this.b.b(wzVar, (int) Math.min(i2 - i, j2), true);
                if (iB == -1) {
                    j2 = 0;
                } else {
                    this.g += iB;
                    j2 -= (long) iB;
                }
            }
            mj2 mj2Var = this.c;
            int i3 = mj2Var.d;
            int i4 = this.g / i3;
            if (i4 > 0) {
                long jA = this.f + f92.a(this.h, 1000000L, mj2Var.c);
                int i5 = i4 * i3;
                int i6 = this.g - i5;
                this.b.a(jA, 1, i5, i6, null);
                this.h += (long) i4;
                this.g = i6;
            }
            return j2 <= 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0105  */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        int i;
        if (this.b != null) {
            int i2 = f92.a;
            int i3 = this.c;
            int iB = 4;
            if (i3 == 0) {
                wz wzVar = (wz) a80Var;
                if (wzVar.a() == 0) {
                    int i4 = this.f;
                    if (i4 != -1) {
                        wzVar.a(i4);
                        this.c = 4;
                    } else if (nj2.a(wzVar)) {
                        wzVar.a((int) (wzVar.d() - wzVar.a()));
                        this.c = 1;
                    } else {
                        throw eg1.a("Unsupported or unrecognized wav file type.", (Exception) null);
                    }
                    return 0;
                }
                throw new IllegalStateException();
            }
            long jL = -1;
            if (i3 == 1) {
                ag1 ag1Var = new ag1(8);
                wz wzVar2 = (wz) a80Var;
                nj2.a aVarA = nj2.a.a(wzVar2, ag1Var);
                if (aVarA.a != 1685272116) {
                    wzVar2.c();
                } else {
                    wzVar2.a(false, 8);
                    ag1Var.e(0);
                    wzVar2.b(ag1Var.c(), 0, 8, false);
                    jL = ag1Var.l();
                    wzVar2.a(((int) aVarA.b) + 8);
                }
                this.d = jL;
                this.c = 2;
                return 0;
            }
            if (i3 == 2) {
                mj2 mj2VarB = nj2.b((wz) a80Var);
                int i5 = mj2VarB.a;
                if (i5 == 17) {
                    this.e = new a(this.a, this.b, mj2VarB);
                } else if (i5 == 6) {
                    this.e = new c(this.a, this.b, mj2VarB, "audio/g711-alaw", -1);
                } else if (i5 == 7) {
                    this.e = new c(this.a, this.b, mj2VarB, "audio/g711-mlaw", -1);
                } else {
                    int i6 = mj2VarB.e;
                    if (i5 == 1) {
                        iB = f92.b(i6);
                        i = iB;
                    } else {
                        if (i5 != 3) {
                            if (i5 == 65534) {
                                iB = f92.b(i6);
                                i = iB;
                            }
                        } else if (i6 == 32) {
                            i = iB;
                        }
                        i = 0;
                    }
                    if (i != 0) {
                        this.e = new c(this.a, this.b, mj2VarB, "audio/raw", i);
                    } else {
                        throw eg1.a("Unsupported WAV format type: " + mj2VarB.a);
                    }
                }
                this.c = 3;
                return 0;
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    long j = this.g;
                    if (j != -1) {
                        wz wzVar3 = (wz) a80Var;
                        long jA = j - wzVar3.a();
                        b bVar = this.e;
                        bVar.getClass();
                        return bVar.a(wzVar3, jA) ? -1 : 0;
                    }
                    throw new IllegalStateException();
                }
                throw new IllegalStateException();
            }
            wz wzVar4 = (wz) a80Var;
            Pair pairC = nj2.c(wzVar4);
            this.f = ((Long) pairC.first).intValue();
            long jLongValue = ((Long) pairC.second).longValue();
            long j2 = this.d;
            if (j2 != -1 && jLongValue == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
                jLongValue = j2;
            }
            this.g = ((long) this.f) + jLongValue;
            long jB = wzVar4.b();
            if (jB != -1 && this.g > jB) {
                et0.d("WavExtractor", "Data exceeds input length: " + this.g + ", " + jB);
                this.g = jB;
            }
            b bVar2 = this.e;
            bVar2.getClass();
            bVar2.a(this.f, this.g);
            this.c = 4;
            return 0;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(long j, long j2) {
        this.c = j == 0 ? 0 : 4;
        b bVar = this.e;
        if (bVar != null) {
            bVar.a(j2);
        }
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        return nj2.a((wz) a80Var);
    }

    public static z70[] a() {
        return new z70[]{new lj2()};
    }
}

package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import org.bouncycastle.crypto.CryptoServicePurpose;

public abstract class er5 implements zj3, en6 {
    public static final long[] p = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};
    public final CryptoServicePurpose a;
    public byte[] b;
    public int c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public long[] n;
    public int o;

    public er5(er5 er5Var) {
        this.b = new byte[8];
        this.n = new long[80];
        this.a = er5Var.a;
        p(er5Var);
    }

    @Override
    public void b(byte b) {
        byte[] bArr = this.b;
        int i = this.c;
        int i2 = i + 1;
        this.c = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            t(bArr, 0);
            this.c = 0;
        }
        this.d++;
    }

    @Override
    public int h() {
        return 128;
    }

    public final long i(long j, long j2, long j3) {
        return ((~j) & j3) ^ (j2 & j);
    }

    public final long j(long j, long j2, long j3) {
        return ((j & j3) ^ (j & j2)) ^ (j2 & j3);
    }

    public final long k(long j) {
        return (j >>> 7) ^ (((j << 63) | (j >>> 1)) ^ ((j << 56) | (j >>> 8)));
    }

    public final long l(long j) {
        return (j >>> 6) ^ (((j << 45) | (j >>> 19)) ^ ((j << 3) | (j >>> 61)));
    }

    public final long m(long j) {
        return ((j >>> 39) | (j << 25)) ^ (((j << 36) | (j >>> 28)) ^ ((j << 30) | (j >>> 34)));
    }

    public final long n(long j) {
        return ((j >>> 41) | (j << 23)) ^ (((j << 50) | (j >>> 14)) ^ ((j << 46) | (j >>> 18)));
    }

    public final void o() {
        long j = this.d;
        if (j > 2305843009213693951L) {
            this.e += j >>> 61;
            this.d = j & 2305843009213693951L;
        }
    }

    public void p(er5 er5Var) {
        byte[] bArr = er5Var.b;
        System.arraycopy(bArr, 0, this.b, 0, bArr.length);
        this.c = er5Var.c;
        this.d = er5Var.d;
        this.e = er5Var.e;
        this.f = er5Var.f;
        this.g = er5Var.g;
        this.h = er5Var.h;
        this.i = er5Var.i;
        this.j = er5Var.j;
        this.k = er5Var.k;
        this.l = er5Var.l;
        this.m = er5Var.m;
        long[] jArr = er5Var.n;
        System.arraycopy(jArr, 0, this.n, 0, jArr.length);
        this.o = er5Var.o;
    }

    public void q() {
        o();
        long j = this.d << 3;
        long j2 = this.e;
        byte b = SocketData.CLAZZ_TYPE_END_SOCKET;
        while (true) {
            b(b);
            if (this.c == 0) {
                s(j, j2);
                r();
                return;
            }
            b = 0;
        }
    }

    public void r() {
        o();
        for (int i = 16; i <= 79; i++) {
            long[] jArr = this.n;
            long jL = l(jArr[i - 2]);
            long[] jArr2 = this.n;
            jArr[i] = jL + jArr2[i - 7] + k(jArr2[i - 15]) + this.n[i - 16];
        }
        long j = this.f;
        long j2 = this.g;
        long j3 = this.h;
        long j4 = this.i;
        long j5 = this.j;
        long j6 = this.k;
        long j7 = this.l;
        long j8 = j6;
        long j9 = j4;
        int i2 = 0;
        long jM = j2;
        long j10 = j3;
        long j11 = j5;
        int i3 = 0;
        long j12 = this.m;
        long j13 = j;
        long j14 = j7;
        while (i3 < 10) {
            long j15 = j11;
            long jN = n(j11) + i(j11, j8, j14);
            long[] jArr3 = p;
            int i4 = i2 + 1;
            long j16 = j12 + jN + jArr3[i2] + this.n[i2];
            long j17 = j9 + j16;
            long jM2 = j16 + m(j13) + j(j13, jM, j10);
            int i5 = i2 + 2;
            long jN2 = j14 + n(j17) + i(j17, j15, j8) + jArr3[i4] + this.n[i4];
            long j18 = j10 + jN2;
            long jM3 = jN2 + m(jM2) + j(jM2, j13, jM);
            int i6 = i2 + 3;
            long jN3 = j8 + n(j18) + i(j18, j17, j15) + jArr3[i5] + this.n[i5];
            long j19 = jM + jN3;
            long jM4 = jN3 + m(jM3) + j(jM3, jM2, j13);
            int i7 = i2 + 4;
            long jN4 = j15 + n(j19) + i(j19, j18, j17) + jArr3[i6] + this.n[i6];
            long j20 = j13 + jN4;
            long jM5 = jN4 + m(jM4) + j(jM4, jM3, jM2);
            int i8 = i2 + 5;
            long jN5 = j17 + n(j20) + i(j20, j19, j18) + jArr3[i7] + this.n[i7];
            long j21 = jM2 + jN5;
            long jM6 = jN5 + m(jM5) + j(jM5, jM4, jM3);
            int i9 = i2 + 6;
            long jN6 = j18 + n(j21) + i(j21, j20, j19) + jArr3[i8] + this.n[i8];
            long j22 = jM3 + jN6;
            long jM7 = jN6 + m(jM6) + j(jM6, jM5, jM4);
            j14 = j22;
            int i10 = i2 + 7;
            long jN7 = j19 + n(j22) + i(j22, j21, j20) + jArr3[i9] + this.n[i9];
            long j23 = jM4 + jN7;
            j8 = j23;
            jM = jN7 + m(jM7) + j(jM7, jM6, jM5);
            i2 += 8;
            long jN8 = j20 + n(j23) + i(j23, j14, j21) + jArr3[i10] + this.n[i10];
            long jM8 = jN8 + m(jM) + j(jM, jM7, jM6);
            i3++;
            j11 = jM5 + jN8;
            j10 = jM7;
            j12 = j21;
            j9 = jM6;
            j13 = jM8;
        }
        this.f += j13;
        this.g += jM;
        this.h += j10;
        this.i += j9;
        this.j += j11;
        this.k += j8;
        this.l += j14;
        this.m += j12;
        this.o = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            this.n[i11] = 0;
        }
    }

    @Override
    public void reset() {
        this.d = 0L;
        this.e = 0L;
        int i = 0;
        this.c = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = 0;
            i2++;
        }
        this.o = 0;
        while (true) {
            long[] jArr = this.n;
            if (i == jArr.length) {
                return;
            }
            jArr[i] = 0;
            i++;
        }
    }

    public void s(long j, long j2) {
        if (this.o > 14) {
            r();
        }
        long[] jArr = this.n;
        jArr[14] = j2;
        jArr[15] = j;
    }

    public void t(byte[] bArr, int i) {
        this.n[this.o] = cv7.b(bArr, i);
        int i2 = this.o + 1;
        this.o = i2;
        if (i2 == 16) {
            r();
        }
    }

    @Override
    public void update(byte[] bArr, int i, int i2) {
        while (this.c != 0 && i2 > 0) {
            b(bArr[i]);
            i++;
            i2--;
        }
        while (i2 >= this.b.length) {
            t(bArr, i);
            byte[] bArr2 = this.b;
            i += bArr2.length;
            i2 -= bArr2.length;
            this.d += (long) bArr2.length;
        }
        while (i2 > 0) {
            b(bArr[i]);
            i++;
            i2--;
        }
    }

    public er5(CryptoServicePurpose cryptoServicePurpose) {
        this.b = new byte[8];
        this.n = new long[80];
        this.a = cryptoServicePurpose;
        this.c = 0;
        reset();
    }
}

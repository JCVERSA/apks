package defpackage;

import androidx.media3.common.C;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Collections;
import java.util.List;

public final class wx3 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final long j;
    public final a k;
    public final Metadata l;

    public static class a {
        public final long[] a;
        public final long[] b;

        public a(long[] jArr, long[] jArr2) {
            this.a = jArr;
            this.b = jArr2;
        }
    }

    public wx3(byte[] bArr, int i) {
        pw7 pw7Var = new pw7(bArr);
        pw7Var.p(i * 8);
        this.a = pw7Var.h(16);
        this.b = pw7Var.h(16);
        this.c = pw7Var.h(24);
        this.d = pw7Var.h(24);
        int iH = pw7Var.h(20);
        this.e = iH;
        this.f = j(iH);
        this.g = pw7Var.h(3) + 1;
        int iH2 = pw7Var.h(5) + 1;
        this.h = iH2;
        this.i = e(iH2);
        this.j = pw7Var.j(36);
        this.k = null;
        this.l = null;
    }

    public static int e(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i != 20) {
            return i != 24 ? -1 : 6;
        }
        return 5;
    }

    public static int j(int i) {
        switch (i) {
            case 8000:
                return 4;
            case AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case OpusUtil.SAMPLE_RATE:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND:
                return 3;
            default:
                return -1;
        }
    }

    public wx3 a(List list) {
        return new wx3(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, this.k, h(new Metadata((List<? extends Metadata.Entry>) list)));
    }

    public wx3 b(a aVar) {
        return new wx3(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, aVar, this.l);
    }

    public wx3 c(List list) {
        return new wx3(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, this.k, h(agc.c(list)));
    }

    public long d() {
        long j;
        long j2;
        int i = this.d;
        if (i > 0) {
            j = (((long) i) + ((long) this.c)) / 2;
            j2 = 1;
        } else {
            int i2 = this.a;
            j = ((((i2 != this.b || i2 <= 0) ? 4096L : i2) * ((long) this.g)) * ((long) this.h)) / 8;
            j2 = 64;
        }
        return j + j2;
    }

    public long f() {
        long j = this.j;
        return j == 0 ? C.TIME_UNSET : (j * 1000000) / ((long) this.e);
    }

    public k g(byte[] bArr, Metadata metadata) {
        bArr[4] = SocketData.CLAZZ_TYPE_END_SOCKET;
        int i = this.d;
        if (i <= 0) {
            i = -1;
        }
        return new k.b().e0("audio/flac").W(i).H(this.g).f0(this.e).T(Collections.singletonList(bArr)).X(h(metadata)).E();
    }

    public Metadata h(Metadata metadata) {
        Metadata metadata2 = this.l;
        return metadata2 == null ? metadata : metadata2.copyWithAppendedEntriesFrom(metadata);
    }

    public long i(long j) {
        return blb.q((j * ((long) this.e)) / 1000000, 0L, this.j - 1);
    }

    public wx3(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, a aVar, Metadata metadata) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = j(i5);
        this.g = i6;
        this.h = i7;
        this.i = e(i7);
        this.j = j;
        this.k = aVar;
        this.l = metadata;
    }
}

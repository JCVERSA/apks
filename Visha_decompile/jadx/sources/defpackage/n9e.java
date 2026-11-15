package defpackage;

import androidx.media3.common.C;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.OpusUtil;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Collections;
import java.util.List;

public final class n9e {
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
    public final m9e k;
    public final hre l;

    public n9e(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, m9e m9eVar, hre hreVar) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i(i5);
        this.g = i6;
        this.h = i7;
        this.i = h(i7);
        this.j = j;
        this.k = m9eVar;
        this.l = hreVar;
    }

    public static int h(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 20) {
            return 5;
        }
        if (i != 24) {
            return i != 32 ? -1 : 7;
        }
        return 6;
    }

    public static int i(int i) {
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

    public final long a() {
        long j = this.j;
        return j == 0 ? C.TIME_UNSET : (j * 1000000) / ((long) this.e);
    }

    public final long b(long j) {
        int i = kfh.a;
        return Math.max(0L, Math.min((j * ((long) this.e)) / 1000000, this.j - 1));
    }

    public final erj c(byte[] bArr, hre hreVar) {
        bArr[4] = SocketData.CLAZZ_TYPE_END_SOCKET;
        hre hreVarD = d(hreVar);
        gpj gpjVar = new gpj();
        gpjVar.E("audio/flac");
        int i = this.d;
        if (i <= 0) {
            i = -1;
        }
        gpjVar.t(i);
        gpjVar.b(this.g);
        gpjVar.F(this.e);
        gpjVar.x(kfh.I(this.h));
        gpjVar.p(Collections.singletonList(bArr));
        gpjVar.w(hreVarD);
        return gpjVar.K();
    }

    public final hre d(hre hreVar) {
        hre hreVar2 = this.l;
        return hreVar2 == null ? hreVar : hreVar2.d(hreVar);
    }

    public final n9e e(List list) {
        return new n9e(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, this.k, d(new hre(list)));
    }

    public final n9e f(m9e m9eVar) {
        return new n9e(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, m9eVar, this.l);
    }

    public final n9e g(List list) {
        return new n9e(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, this.k, d(xae.b(list)));
    }

    public n9e(byte[] bArr, int i) {
        p3h p3hVar = new p3h(bArr, bArr.length);
        p3hVar.l(i * 8);
        this.a = p3hVar.d(16);
        this.b = p3hVar.d(16);
        this.c = p3hVar.d(24);
        this.d = p3hVar.d(24);
        int iD = p3hVar.d(20);
        this.e = iD;
        this.f = i(iD);
        this.g = p3hVar.d(3) + 1;
        int iD2 = p3hVar.d(5) + 1;
        this.h = iD2;
        this.i = h(iD2);
        this.j = p3hVar.e(36);
        this.k = null;
        this.l = null;
    }
}

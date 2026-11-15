package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.AacUtil;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import com.transsion.socket.pkgdata.SocketData;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

public final class yae implements c9e {
    public static final int[] p = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final int[] q = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    public static final byte[] r;
    public static final byte[] s;
    public final rae b;
    public boolean c;
    public long d;
    public int e;
    public int f;
    public int h;
    public long i;
    public f9e j;
    public rae k;
    public rae l;
    public kae m;
    public long n;
    public boolean o;
    public final byte[] a = new byte[1];
    public int g = -1;

    static {
        int i = kfh.a;
        Charset charset = StandardCharsets.UTF_8;
        r = "#!AMR\n".getBytes(charset);
        s = "#!AMR-WB\n".getBytes(charset);
    }

    public yae(int i) {
        s8e s8eVar = new s8e();
        this.b = s8eVar;
        this.l = s8eVar;
    }

    public static boolean c(d9e d9eVar, byte[] bArr) {
        d9eVar.zzj();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        d9eVar.i(bArr2, 0, length);
        return Arrays.equals(bArr2, bArr);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0028  */
    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    public final int a(d9e d9eVar) throws zzaz {
        int i = this.f;
        if (i == 0) {
            try {
                d9eVar.zzj();
                byte[] bArr = this.a;
                d9eVar.i(bArr, 0, 1);
                byte b = bArr[0];
                if ((b & SocketData.CLAZZ_TYPE_CONNECT_CHECK) > 0) {
                    throw zzaz.zza("Invalid padding bits for frame header " + ((int) b), null);
                }
                boolean z = this.c;
                int i2 = (b >> 3) & 15;
                if (!z) {
                    if (!z) {
                        if (i2 >= 12 && i2 <= 14) {
                        }
                    }
                    throw zzaz.zza("Illegal AMR " + (true != z ? "NB" : "WB") + " frame type " + i2, null);
                }
                if (i2 >= 10 && i2 <= 13) {
                    if (!z) {
                        if (i2 >= 12) {
                        }
                    }
                    if (true != z) {
                    }
                    throw zzaz.zza("Illegal AMR " + (true != z ? "NB" : "WB") + " frame type " + i2, null);
                }
                i = z ? q[i2] : p[i2];
                this.e = i;
                this.f = i;
                int i3 = this.g;
                if (i3 == -1) {
                    this.g = i;
                    i3 = i;
                }
                if (i3 == i) {
                    this.h++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iA = this.l.a(d9eVar, i, true);
        if (iA == -1) {
            return -1;
        }
        int i4 = this.f - iA;
        this.f = i4;
        if (i4 > 0) {
            return 0;
        }
        this.l.g(this.d, 1, this.e, 0, null);
        this.d += 20000;
        return 0;
    }

    @Override
    public final void b(long j, long j2) {
        this.d = 0L;
        this.e = 0;
        this.f = 0;
        this.n = j2;
        this.i = 0L;
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        n7g.b(this.k);
        int i = kfh.a;
        if (d9eVar.zzf() == 0 && !g(d9eVar)) {
            throw zzaz.zza("Could not find AMR header.", null);
        }
        if (!this.o) {
            this.o = true;
            boolean z = this.c;
            String str = true != z ? MimeTypes.AUDIO_AMR : "audio/amr-wb";
            String str2 = true != z ? "audio/3gpp" : "audio/amr-wb";
            int i2 = true != z ? 8000 : AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
            int i3 = z ? q[8] : p[7];
            rae raeVar = this.k;
            gpj gpjVar = new gpj();
            gpjVar.e(str);
            gpjVar.E(str2);
            gpjVar.t(i3);
            gpjVar.b(1);
            gpjVar.F(i2);
            raeVar.f(gpjVar.K());
        }
        int iA = a(d9eVar);
        if (this.m == null) {
            jae jaeVar = new jae(C.TIME_UNSET, 0L);
            this.m = jaeVar;
            this.j.i(jaeVar);
        }
        return iA == -1 ? -1 : 0;
    }

    @Override
    public final boolean e(d9e d9eVar) {
        return g(d9eVar);
    }

    @Override
    public final void f(f9e f9eVar) {
        this.j = f9eVar;
        rae raeVarJ = f9eVar.j(0, 1);
        this.k = raeVarJ;
        this.l = raeVarJ;
        f9eVar.zzG();
    }

    public final boolean g(d9e d9eVar) {
        byte[] bArr = r;
        if (c(d9eVar, bArr)) {
            this.c = false;
            d9eVar.f(bArr.length);
            return true;
        }
        byte[] bArr2 = s;
        if (!c(d9eVar, bArr2)) {
            return false;
        }
        this.c = true;
        d9eVar.f(bArr2.length);
        return true;
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}

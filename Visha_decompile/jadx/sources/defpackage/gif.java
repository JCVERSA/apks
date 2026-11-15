package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzfwz;
import java.util.Map;

public final class gif implements v9i {
    public final v9i a;
    public final long b;
    public final v9i c;
    public long d;
    public Uri e;

    public gif(v9i v9iVar, int i, v9i v9iVar2) {
        this.a = v9iVar;
        this.b = i;
        this.c = v9iVar2;
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.d;
        long j2 = this.b;
        if (j < j2) {
            int iB = this.a.b(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.d + ((long) iB);
            this.d = j3;
            i3 = iB;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j < j2) {
            return i3;
        }
        int iB2 = this.c.b(bArr, i + i3, i2 - i3);
        int i4 = i3 + iB2;
        this.d += (long) iB2;
        return i4;
    }

    @Override
    public final void c(ixi ixiVar) {
    }

    @Override
    public final long j(cfi cfiVar) {
        cfi cfiVar2;
        Uri uri = cfiVar.a;
        this.e = uri;
        long j = cfiVar.e;
        long j2 = this.b;
        cfi cfiVar3 = null;
        if (j >= j2) {
            cfiVar2 = null;
        } else {
            long j3 = cfiVar.f;
            long j4 = j2 - j;
            cfiVar2 = new cfi(uri, j, j3 != -1 ? Math.min(j3, j4) : j4, null);
        }
        long j5 = cfiVar.f;
        if (j5 == -1 || j + j5 > j2) {
            cfiVar3 = new cfi(uri, Math.max(j2, j), j5 != -1 ? Math.min(j5, (j + j5) - j2) : -1L, null);
        }
        long j6 = cfiVar2 != null ? this.a.j(cfiVar2) : 0L;
        long j7 = cfiVar3 != null ? this.c.j(cfiVar3) : 0L;
        this.d = j;
        if (j6 == -1 || j7 == -1) {
            return -1L;
        }
        return j6 + j7;
    }

    @Override
    public final Uri zzc() {
        return this.e;
    }

    @Override
    public final void zzd() {
        this.a.zzd();
        this.c.zzd();
    }

    @Override
    public final Map zze() {
        return zzfwz.zzd();
    }
}

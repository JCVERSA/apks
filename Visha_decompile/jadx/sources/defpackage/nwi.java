package defpackage;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

public final class nwi implements v9i {
    public final v9i a;
    public long b;
    public Uri c = Uri.EMPTY;
    public Map d = Collections.emptyMap();

    public nwi(v9i v9iVar) {
        this.a = v9iVar;
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) {
        int iB = this.a.b(bArr, i, i2);
        if (iB != -1) {
            this.b += (long) iB;
        }
        return iB;
    }

    @Override
    public final void c(ixi ixiVar) {
        ixiVar.getClass();
        this.a.c(ixiVar);
    }

    @Override
    public final long j(cfi cfiVar) {
        this.c = cfiVar.a;
        this.d = Collections.emptyMap();
        try {
            long j = this.a.j(cfiVar);
            if (zzc() != null) {
            }
            return j;
        } finally {
            Uri uriZzc = zzc();
            if (uriZzc != null) {
                this.c = uriZzc;
            }
            this.d = zze();
        }
    }

    public final long k() {
        return this.b;
    }

    public final Uri l() {
        return this.c;
    }

    public final Map m() {
        return this.d;
    }

    @Override
    public final Uri zzc() {
        return this.a.zzc();
    }

    @Override
    public final void zzd() {
        this.a.zzd();
    }

    @Override
    public final Map zze() {
        return this.a.zze();
    }
}

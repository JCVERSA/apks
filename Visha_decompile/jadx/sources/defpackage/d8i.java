package defpackage;

import android.net.Uri;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzgf;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

public final class d8i extends p4i {
    public cfi e;
    public byte[] f;
    public int g;
    public int h;

    public d8i() {
        super(false);
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        byte[] bArr2 = this.f;
        int i4 = kfh.a;
        System.arraycopy(bArr2, this.g, bArr, i, iMin);
        this.g += iMin;
        this.h -= iMin;
        zzg(iMin);
        return iMin;
    }

    @Override
    public final long j(cfi cfiVar) throws zzgf, zzaz {
        l(cfiVar);
        this.e = cfiVar;
        Uri uriNormalizeScheme = cfiVar.a.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        n7g.e("data".equals(scheme), "Unsupported scheme: ".concat(String.valueOf(scheme)));
        String schemeSpecificPart = uriNormalizeScheme.getSchemeSpecificPart();
        int i = kfh.a;
        String[] strArrSplit = schemeSpecificPart.split(StringUtils.COMMA, -1);
        if (strArrSplit.length != 2) {
            throw zzaz.zzb("Unexpected URI format: ".concat(String.valueOf(uriNormalizeScheme)), null);
        }
        String str = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                throw zzaz.zzb("Error while parsing Base64 encoded string: ".concat(String.valueOf(str)), e);
            }
        } else {
            this.f = URLDecoder.decode(str, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
        }
        long j = cfiVar.e;
        int length = this.f.length;
        if (j > length) {
            this.f = null;
            throw new zzgf(2008);
        }
        int i2 = (int) j;
        this.g = i2;
        int i3 = length - i2;
        this.h = i3;
        long j2 = cfiVar.f;
        if (j2 != -1) {
            this.h = (int) Math.min(i3, j2);
        }
        m(cfiVar);
        return j2 != -1 ? j2 : this.h;
    }

    @Override
    public final Uri zzc() {
        cfi cfiVar = this.e;
        if (cfiVar != null) {
            return cfiVar.a;
        }
        return null;
    }

    @Override
    public final void zzd() {
        if (this.f != null) {
            this.f = null;
            k();
        }
        this.e = null;
    }
}

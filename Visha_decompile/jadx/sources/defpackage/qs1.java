package defpackage;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.b;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URLDecoder;

public final class qs1 extends u90 {
    public b e;
    public byte[] f;
    public int g;
    public int h;

    public qs1() {
        super(false);
    }

    @Override
    public long a(b bVar) throws DataSourceException, ParserException {
        e(bVar);
        this.e = bVar;
        Uri uri = bVar.a;
        String scheme = uri.getScheme();
        zi.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrF0 = blb.F0(uri.getSchemeSpecificPart(), StringUtils.COMMA);
        if (strArrF0.length != 2) {
            throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + uri, null);
        }
        String str = strArrF0[1];
        if (strArrF0[0].contains(";base64")) {
            try {
                this.f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e);
            }
        } else {
            this.f = blb.f0(URLDecoder.decode(str, rv0.a.name()));
        }
        long j = bVar.g;
        byte[] bArr = this.f;
        if (j > bArr.length) {
            this.f = null;
            throw new DataSourceException(2008);
        }
        int i = (int) j;
        this.g = i;
        int length = bArr.length - i;
        this.h = length;
        long j2 = bVar.h;
        if (j2 != -1) {
            this.h = (int) Math.min(length, j2);
        }
        f(bVar);
        long j3 = bVar.h;
        return j3 != -1 ? j3 : this.h;
    }

    @Override
    public void close() {
        if (this.f != null) {
            this.f = null;
            d();
        }
        this.e = null;
    }

    @Override
    public Uri getUri() {
        b bVar = this.e;
        if (bVar != null) {
            return bVar.a;
        }
        return null;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        System.arraycopy(blb.j(this.f), this.g, bArr, i, iMin);
        this.g += iMin;
        this.h -= iMin;
        c(iMin);
        return iMin;
    }
}

package w1;

import android.net.Uri;
import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.DataSourceException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

public final class c extends a {

    private h f74087e;

    private byte[] f74088f;

    private int f74089g;

    private int f74090h;

    public c() {
        super(false);
    }

    @Override
    public long a(h hVar) throws ParserException, DataSourceException {
        f(hVar);
        this.f74087e = hVar;
        Uri uriNormalizeScheme = hVar.f74097a.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        androidx.media3.common.util.a.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrO1 = a1.o1(uriNormalizeScheme.getSchemeSpecificPart(), ",");
        if (strArrO1.length != 2) {
            throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + uriNormalizeScheme, null);
        }
        String str = strArrO1[1];
        if (strArrO1[0].contains(";base64")) {
            try {
                this.f74088f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e10) {
                throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e10);
            }
        } else {
            this.f74088f = a1.u0(URLDecoder.decode(str, StandardCharsets.US_ASCII.name()));
        }
        long j10 = hVar.f74103g;
        byte[] bArr = this.f74088f;
        if (j10 > bArr.length) {
            this.f74088f = null;
            throw new DataSourceException(2008);
        }
        int i10 = (int) j10;
        this.f74089g = i10;
        int length = bArr.length - i10;
        this.f74090h = length;
        long j11 = hVar.f74104h;
        if (j11 != -1) {
            this.f74090h = (int) Math.min(length, j11);
        }
        g(hVar);
        long j12 = hVar.f74104h;
        return j12 != -1 ? j12 : this.f74090h;
    }

    @Override
    public void close() {
        if (this.f74088f != null) {
            this.f74088f = null;
            e();
        }
        this.f74087e = null;
    }

    @Override
    public Uri getUri() {
        h hVar = this.f74087e;
        if (hVar != null) {
            return hVar.f74097a;
        }
        return null;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f74090h;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        System.arraycopy(a1.i(this.f74088f), this.f74089g, bArr, i10, iMin);
        this.f74089g += iMin;
        this.f74090h -= iMin;
        d(iMin);
        return iMin;
    }
}

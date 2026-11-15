package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import java.net.URLDecoder;

public final class h extends f {

    private n f26635e;

    private byte[] f26636f;

    private int f26637g;

    private int f26638h;

    public h() {
        super(false);
    }

    @Override
    public long a(n nVar) throws DataSourceException, ParserException {
        j(nVar);
        this.f26635e = nVar;
        Uri uri = nVar.f26665a;
        String scheme = uri.getScheme();
        com.google.android.exoplayer2.util.a.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrS0 = p0.S0(uri.getSchemeSpecificPart(), ",");
        if (strArrS0.length != 2) {
            throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + uri, null);
        }
        String str = strArrS0[1];
        if (strArrS0[0].contains(";base64")) {
            try {
                this.f26636f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e10) {
                throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e10);
            }
        } else {
            this.f26636f = p0.n0(URLDecoder.decode(str, com.google.common.base.c.f29401a.name()));
        }
        long j10 = nVar.f26671g;
        byte[] bArr = this.f26636f;
        if (j10 > bArr.length) {
            this.f26636f = null;
            throw new DataSourceException(2008);
        }
        int i10 = (int) j10;
        this.f26637g = i10;
        int length = bArr.length - i10;
        this.f26638h = length;
        long j11 = nVar.f26672h;
        if (j11 != -1) {
            this.f26638h = (int) Math.min(length, j11);
        }
        k(nVar);
        long j12 = nVar.f26672h;
        return j12 != -1 ? j12 : this.f26638h;
    }

    @Override
    public void close() {
        if (this.f26636f != null) {
            this.f26636f = null;
            i();
        }
        this.f26635e = null;
    }

    @Override
    public Uri getUri() {
        n nVar = this.f26635e;
        if (nVar != null) {
            return nVar.f26665a;
        }
        return null;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f26638h;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        System.arraycopy(p0.j(this.f26636f), this.f26637g, bArr, i10, iMin);
        this.f26637g += iMin;
        this.f26638h -= iMin;
        h(iMin);
        return iMin;
    }
}

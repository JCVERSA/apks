package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;

public class v implements z {

    private final int f26759a;

    public v() {
        this(-1);
    }

    @Override
    public int a(int i10) {
        int i11 = this.f26759a;
        if (i11 == -1) {
            return i10 == 7 ? 6 : 3;
        }
        return i11;
    }

    @Override
    public void b(long j10) {
        y.a(this, j10);
    }

    @Override
    public long c(z.c cVar) {
        IOException iOException = cVar.f26772c;
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource$CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException) || DataSourceException.isCausedByPositionOutOfRange(iOException)) ? C.TIME_UNSET : Math.min((cVar.f26773d - 1) * 1000, 5000);
    }

    @Override
    public z.b d(z.a aVar, z.c cVar) {
        if (!e(cVar.f26772c)) {
            return null;
        }
        if (aVar.a(1)) {
            return new z.b(1, 300000L);
        }
        if (aVar.a(2)) {
            return new z.b(2, 60000L);
        }
        return null;
    }

    protected boolean e(IOException iOException) {
        if (!(iOException instanceof HttpDataSource$InvalidResponseCodeException)) {
            return false;
        }
        int i10 = ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode;
        return i10 == 403 || i10 == 404 || i10 == 410 || i10 == 416 || i10 == 500 || i10 == 503;
    }

    public v(int i10) {
        this.f26759a = i10;
    }
}

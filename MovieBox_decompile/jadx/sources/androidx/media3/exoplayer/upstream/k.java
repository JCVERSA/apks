package androidx.media3.exoplayer.upstream;

import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;

public class k implements m {

    private final int f12691a;

    public k() {
        this(-1);
    }

    @Override
    public int a(int i10) {
        int i11 = this.f12691a;
        if (i11 == -1) {
            return i10 == 7 ? 6 : 3;
        }
        return i11;
    }

    @Override
    public void b(long j10) {
        l.a(this, j10);
    }

    @Override
    public long c(m.c cVar) {
        IOException iOException = cVar.f12700c;
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource.CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException) || DataSourceException.isCausedByPositionOutOfRange(iOException)) ? C.TIME_UNSET : Math.min((cVar.f12701d - 1) * 1000, 5000);
    }

    @Override
    public m.b d(m.a aVar, m.c cVar) {
        if (!e(cVar.f12700c)) {
            return null;
        }
        if (aVar.a(1)) {
            return new m.b(1, 300000L);
        }
        if (aVar.a(2)) {
            return new m.b(2, 60000L);
        }
        return null;
    }

    protected boolean e(IOException iOException) {
        if (!(iOException instanceof HttpDataSource.InvalidResponseCodeException)) {
            return false;
        }
        int i10 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode;
        return i10 == 403 || i10 == 404 || i10 == 410 || i10 == 416 || i10 == 500 || i10 == 503;
    }

    public k(int i10) {
        this.f12691a = i10;
    }
}

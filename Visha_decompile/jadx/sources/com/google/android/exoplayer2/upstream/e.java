package com.google.android.exoplayer2.upstream;

import androidx.media3.common.C;
import com.google.android.exoplayer2.ParserException;
import java.io.FileNotFoundException;
import java.io.IOException;

public class e implements f {
    public final int a;

    public e() {
        this(-1);
    }

    @Override
    public long a(f.a aVar) {
        IOException iOException = aVar.c;
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource$CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException) || DataSourceException.isCausedByPositionOutOfRange(iOException)) ? C.TIME_UNSET : Math.min((aVar.d - 1) * 1000, 5000);
    }

    @Override
    public int getMinimumLoadableRetryCount(int i) {
        int i2 = this.a;
        if (i2 == -1) {
            return i == 7 ? 6 : 3;
        }
        return i2;
    }

    public e(int i) {
        this.a = i;
    }
}

package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

public class HttpDataSource$HttpDataSourceException extends DataSourceException {
    public static final int TYPE_CLOSE = 3;
    public static final int TYPE_OPEN = 1;
    public static final int TYPE_READ = 2;
    public final n dataSpec;
    public final int type;

    @Deprecated
    public HttpDataSource$HttpDataSourceException(n nVar, int i10) {
        this(nVar, 2000, i10);
    }

    private static int assignErrorCode(int i10, int i11) {
        if (i10 == 2000 && i11 == 1) {
            return 2001;
        }
        return i10;
    }

    public static HttpDataSource$HttpDataSourceException createForIOException(final IOException iOException, final n nVar, int i10) {
        int i11;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i11 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i11 = 1004;
        } else {
            i11 = (message == null || !com.google.common.base.a.e(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        }
        return i11 == 2007 ? new HttpDataSource$HttpDataSourceException(iOException, nVar) {
        } : new HttpDataSource$HttpDataSourceException(iOException, nVar, i11, i10);
    }

    public HttpDataSource$HttpDataSourceException(n nVar, int i10, int i11) {
        super(assignErrorCode(i10, i11));
        this.dataSpec = nVar;
        this.type = i11;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(String str, n nVar, int i10) {
        this(str, nVar, 2000, i10);
    }

    public HttpDataSource$HttpDataSourceException(String str, n nVar, int i10, int i11) {
        super(str, assignErrorCode(i10, i11));
        this.dataSpec = nVar;
        this.type = i11;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(IOException iOException, n nVar, int i10) {
        this(iOException, nVar, 2000, i10);
    }

    public HttpDataSource$HttpDataSourceException(IOException iOException, n nVar, int i10, int i11) {
        super(iOException, assignErrorCode(i10, i11));
        this.dataSpec = nVar;
        this.type = i11;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(String str, IOException iOException, n nVar, int i10) {
        this(str, iOException, nVar, 2000, i10);
    }

    public HttpDataSource$HttpDataSourceException(String str, @Nullable IOException iOException, n nVar, int i10, int i11) {
        super(str, iOException, assignErrorCode(i10, i11));
        this.dataSpec = nVar;
        this.type = i11;
    }
}

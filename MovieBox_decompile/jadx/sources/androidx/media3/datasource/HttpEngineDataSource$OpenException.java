package androidx.media3.datasource;

import java.io.IOException;
import w1.h;

public final class HttpEngineDataSource$OpenException extends HttpDataSource.HttpDataSourceException {
    public final int httpEngineConnectionStatus;

    public HttpEngineDataSource$OpenException(IOException iOException, h hVar, int i10, int i11) {
        super(iOException, hVar, i10, 1);
        this.httpEngineConnectionStatus = i11;
    }

    public HttpEngineDataSource$OpenException(String str, h hVar, int i10, int i11) {
        super(str, hVar, i10, 1);
        this.httpEngineConnectionStatus = i11;
    }

    public HttpEngineDataSource$OpenException(h hVar, int i10, int i11) {
        super(hVar, i10, 1);
        this.httpEngineConnectionStatus = i11;
    }
}

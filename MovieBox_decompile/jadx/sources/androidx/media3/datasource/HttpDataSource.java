package androidx.media3.datasource;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import w1.h;

public interface HttpDataSource extends androidx.media3.datasource.a {

    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        public CleartextNotPermittedException(IOException iOException, h hVar) {
            super("Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted", iOException, hVar, 2007, 1);
        }
    }

    public static class HttpDataSourceException extends DataSourceException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final h dataSpec;
        public final int type;

        @Deprecated
        public HttpDataSourceException(h hVar, int i10) {
            this(hVar, 2000, i10);
        }

        private static int assignErrorCode(int i10, int i11) {
            if (i10 == 2000 && i11 == 1) {
                return 2001;
            }
            return i10;
        }

        public static HttpDataSourceException createForIOException(IOException iOException, h hVar, int i10) {
            int i11;
            String message = iOException.getMessage();
            if (iOException instanceof SocketTimeoutException) {
                i11 = 2002;
            } else if (iOException instanceof InterruptedIOException) {
                i11 = 1004;
            } else {
                i11 = (message == null || !com.google.common.base.a.e(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
            }
            return i11 == 2007 ? new CleartextNotPermittedException(iOException, hVar) : new HttpDataSourceException(iOException, hVar, i11, i10);
        }

        public HttpDataSourceException(h hVar, int i10, int i11) {
            super(assignErrorCode(i10, i11));
            this.dataSpec = hVar;
            this.type = i11;
        }

        @Deprecated
        public HttpDataSourceException(String str, h hVar, int i10) {
            this(str, hVar, 2000, i10);
        }

        public HttpDataSourceException(String str, h hVar, int i10, int i11) {
            super(str, assignErrorCode(i10, i11));
            this.dataSpec = hVar;
            this.type = i11;
        }

        @Deprecated
        public HttpDataSourceException(IOException iOException, h hVar, int i10) {
            this(iOException, hVar, 2000, i10);
        }

        public HttpDataSourceException(IOException iOException, h hVar, int i10, int i11) {
            super(iOException, assignErrorCode(i10, i11));
            this.dataSpec = hVar;
            this.type = i11;
        }

        @Deprecated
        public HttpDataSourceException(String str, IOException iOException, h hVar, int i10) {
            this(str, iOException, hVar, 2000, i10);
        }

        public HttpDataSourceException(String str, @Nullable IOException iOException, h hVar, int i10, int i11) {
            super(str, iOException, assignErrorCode(i10, i11));
            this.dataSpec = hVar;
            this.type = i11;
        }
    }

    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, h hVar) {
            super("Invalid content type: " + str, hVar, 2003, 1);
            this.contentType = str;
        }
    }

    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final byte[] responseBody;
        public final int responseCode;

        @Nullable
        public final String responseMessage;

        public InvalidResponseCodeException(int i10, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, h hVar, byte[] bArr) {
            super("Response code: " + i10, iOException, hVar, 2004, 1);
            this.responseCode = i10;
            this.responseMessage = str;
            this.headerFields = map;
            this.responseBody = bArr;
        }
    }

    public interface a extends androidx.media3.datasource.a.InterfaceC0085a {
        @Override
        HttpDataSource createDataSource();
    }

    public static final class b {

        private final Map f10389a = new HashMap();

        private Map f10390b;

        public synchronized void a(Map map) {
            this.f10390b = null;
            this.f10389a.clear();
            this.f10389a.putAll(map);
        }

        public synchronized Map b() {
            try {
                if (this.f10390b == null) {
                    this.f10390b = Collections.unmodifiableMap(new HashMap(this.f10389a));
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return this.f10390b;
        }
    }
}

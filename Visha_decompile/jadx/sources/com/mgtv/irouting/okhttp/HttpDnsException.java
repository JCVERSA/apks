package com.mgtv.irouting.okhttp;

import java.io.IOException;

public class HttpDnsException extends IOException {
    public static final int ERROR_Connect = -5;
    public static final int ERROR_No_route_To_Host = -4;
    public static final int ERROR_OBJECT_NULL = -1001;
    public static final int ERROR_SSLHandshake = -6;
    public static final int ERROR_SocketTimeout = -2;
    public static final int ERROR_UNKown = -1;
    public static final int ERROR_Unkown_host = -3;
    public static int OK_HTTP200 = 200;

    public HttpDnsException() {
    }

    public class HttpBusinessException extends Exception {
        public HttpBusinessException() {
        }

        public HttpBusinessException(String str) {
            super(str);
        }

        public HttpBusinessException(String str, Throwable th) {
            super(str, th);
        }

        public HttpBusinessException(Throwable th) {
            super(th);
        }
    }

    public class HttpFormatException extends Exception {
        public HttpFormatException() {
        }

        public HttpFormatException(String str) {
            super(str);
        }

        public HttpFormatException(String str, Throwable th) {
            super(str, th);
        }

        public HttpFormatException(Throwable th) {
            super(th);
        }
    }

    public HttpDnsException(String str) {
        super(str);
    }

    public HttpDnsException(String str, Throwable th) {
        super(str, th);
    }

    public HttpDnsException(Throwable th) {
        super(th);
    }
}

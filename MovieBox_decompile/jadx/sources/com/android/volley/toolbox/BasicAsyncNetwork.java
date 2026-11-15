package com.android.volley.toolbox;

import com.android.volley.Request;
import com.android.volley.RequestTask;
import com.android.volley.VolleyError;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public abstract class BasicAsyncNetwork extends com.android.volley.b {

    private class InvokeRetryPolicyTask<T> extends RequestTask<T> {
        final com.android.volley.b.a callback;
        final Request request;
        final l.b retryInfo;
        final BasicAsyncNetwork this$0;

        InvokeRetryPolicyTask(BasicAsyncNetwork basicAsyncNetwork, Request request, l.b bVar, com.android.volley.b.a aVar) {
            super(request);
            this.request = request;
            this.retryInfo = bVar;
            this.callback = aVar;
        }

        @Override
        public void run() {
            try {
                l.a(this.request, this.retryInfo);
                throw null;
            } catch (VolleyError e10) {
                this.callback.a(e10);
            }
        }
    }

    private class ResponseParsingTask<T> extends RequestTask<T> {
        com.android.volley.b.a callback;
        e httpResponse;
        InputStream inputStream;
        Request request;
        long requestStartMs;
        List<com.android.volley.e> responseHeaders;
        int statusCode;
        final BasicAsyncNetwork this$0;

        ResponseParsingTask(BasicAsyncNetwork basicAsyncNetwork, InputStream inputStream, e eVar, Request request, com.android.volley.b.a aVar, long j10, List<com.android.volley.e> list, int i10) {
            super(request);
            this.inputStream = inputStream;
            this.httpResponse = eVar;
            this.request = request;
            this.callback = aVar;
            this.requestStartMs = j10;
            this.responseHeaders = list;
            this.statusCode = i10;
        }

        @Override
        public void run() throws Throwable {
            try {
                BasicAsyncNetwork.d(null, this.requestStartMs, this.statusCode, this.httpResponse, this.request, this.callback, this.responseHeaders, l.c(this.inputStream, this.httpResponse.b(), BasicAsyncNetwork.c(null)));
            } catch (IOException e10) {
                BasicAsyncNetwork.b(null, this.request, this.callback, e10, this.requestStartMs, this.httpResponse, null);
            }
        }
    }

    static void b(BasicAsyncNetwork basicAsyncNetwork, Request request, com.android.volley.b.a aVar, IOException iOException, long j10, e eVar, byte[] bArr) {
        throw null;
    }

    static ByteArrayPool c(BasicAsyncNetwork basicAsyncNetwork) {
        throw null;
    }

    static void d(BasicAsyncNetwork basicAsyncNetwork, long j10, int i10, e eVar, Request request, com.android.volley.b.a aVar, List list, byte[] bArr) {
        throw null;
    }
}

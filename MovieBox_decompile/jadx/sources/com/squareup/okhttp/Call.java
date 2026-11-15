package com.squareup.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.c;
import com.squareup.okhttp.internal.http.RequestException;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.g;
import com.squareup.okhttp.internal.http.n;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.logging.Level;

public class Call {
    volatile boolean canceled;
    private final OkHttpClient client;
    g engine;
    private boolean executed;
    Request originalRequest;

    class ApplicationInterceptorChain implements Interceptor.Chain {
        private final boolean forWebSocket;
        private final int index;
        private final Request request;

        ApplicationInterceptorChain(int i10, Request request, boolean z10) {
            this.index = i10;
            this.request = request;
            this.forWebSocket = z10;
        }

        @Override
        public Connection connection() {
            return null;
        }

        @Override
        public Response proceed(Request request) throws IOException {
            if (this.index >= Call.this.client.interceptors().size()) {
                return Call.this.getResponse(request, this.forWebSocket);
            }
            ApplicationInterceptorChain applicationInterceptorChain = Call.this.new ApplicationInterceptorChain(this.index + 1, request, this.forWebSocket);
            Interceptor interceptor = Call.this.client.interceptors().get(this.index);
            Response responseIntercept = interceptor.intercept(applicationInterceptorChain);
            if (responseIntercept != null) {
                return responseIntercept;
            }
            throw new NullPointerException("application interceptor " + interceptor + " returned null");
        }

        @Override
        public Request request() {
            return this.request;
        }
    }

    final class AsyncCall extends NamedRunnable {
        private final boolean forWebSocket;
        private final Callback responseCallback;

        void cancel() {
            Call.this.cancel();
        }

        @Override
        protected void execute() {
            boolean z10;
            IOException e10;
            try {
                try {
                    Response responseWithInterceptorChain = Call.this.getResponseWithInterceptorChain(this.forWebSocket);
                    z10 = true;
                    try {
                        if (Call.this.canceled) {
                            this.responseCallback.onFailure(Call.this.originalRequest, new IOException("Canceled"));
                        } else {
                            this.responseCallback.onResponse(responseWithInterceptorChain);
                        }
                    } catch (IOException e11) {
                        e10 = e11;
                        if (z10) {
                            c.logger.log(Level.INFO, "Callback failure for " + Call.this.toLoggableString(), (Throwable) e10);
                        } else {
                            Call call = Call.this;
                            g gVar = call.engine;
                            this.responseCallback.onFailure(gVar == null ? call.originalRequest : gVar.l(), e10);
                        }
                    }
                } finally {
                    Call.this.client.getDispatcher().finished(this);
                }
            } catch (IOException e12) {
                z10 = false;
                e10 = e12;
            }
        }

        Call get() {
            return Call.this;
        }

        String host() {
            return Call.this.originalRequest.httpUrl().host();
        }

        Request request() {
            return Call.this.originalRequest;
        }

        Object tag() {
            return Call.this.originalRequest.tag();
        }

        private AsyncCall(Callback callback, boolean z10) {
            super("OkHttp %s", Call.this.originalRequest.urlString());
            this.responseCallback = callback;
            this.forWebSocket = z10;
        }
    }

    protected Call(OkHttpClient okHttpClient, Request request) {
        this.client = okHttpClient.copyWithDefaults();
        this.originalRequest = request;
    }

    public Response getResponseWithInterceptorChain(boolean z10) throws IOException {
        return new ApplicationInterceptorChain(0, this.originalRequest, z10).proceed(this.originalRequest);
    }

    public String toLoggableString() {
        return (this.canceled ? "canceled call" : "call") + " to " + this.originalRequest.httpUrl().resolve("/...");
    }

    public void cancel() {
        this.canceled = true;
        g gVar = this.engine;
        if (gVar != null) {
            gVar.e();
        }
    }

    public void enqueue(Callback callback) {
        enqueue(callback, false);
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        try {
            this.client.getDispatcher().executed(this);
            Response responseWithInterceptorChain = getResponseWithInterceptorChain(false);
            if (responseWithInterceptorChain == null) {
                throw new IOException("Canceled");
            }
            this.client.getDispatcher().finished(this);
            return responseWithInterceptorChain;
        } catch (Throwable th2) {
            this.client.getDispatcher().finished(this);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00ee  */
    Response getResponse(Request request, boolean z10) throws Throwable {
        Throwable th2;
        n nVar;
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            Request.Builder builderNewBuilder = request.newBuilder();
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                builderNewBuilder.header(HttpHeaders.CONTENT_TYPE, mediaTypeContentType.toString());
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                builderNewBuilder.header(HttpHeaders.CONTENT_LENGTH, Long.toString(jContentLength));
                builderNewBuilder.removeHeader("Transfer-Encoding");
            } else {
                builderNewBuilder.header("Transfer-Encoding", "chunked");
                builderNewBuilder.removeHeader(HttpHeaders.CONTENT_LENGTH);
            }
            request = builderNewBuilder.build();
        }
        this.engine = new g(this.client, request, false, false, z10, null, null, null);
        int i10 = 0;
        while (!this.canceled) {
            boolean z11 = true;
            try {
                try {
                    try {
                        this.engine.y();
                        this.engine.s();
                        Response responseM = this.engine.m();
                        Request requestJ = this.engine.j();
                        if (requestJ == null) {
                            if (!z10) {
                                this.engine.w();
                            }
                            return responseM;
                        }
                        n nVarF = this.engine.f();
                        i10++;
                        if (i10 > 20) {
                            nVarF.o();
                            throw new ProtocolException("Too many follow-up requests: " + i10);
                        }
                        if (this.engine.x(requestJ.httpUrl())) {
                            nVar = nVarF;
                        } else {
                            nVarF.o();
                            nVar = null;
                        }
                        this.engine = new g(this.client, requestJ, false, false, z10, nVar, null, responseM);
                    } catch (Throwable th3) {
                        th2 = th3;
                        if (z11) {
                            this.engine.f().o();
                        }
                        throw th2;
                    }
                } catch (RouteException e10) {
                    g gVarU = this.engine.u(e10);
                    if (gVarU == null) {
                        throw e10.getLastConnectException();
                    }
                    this.engine = gVarU;
                }
            } catch (RequestException e11) {
                throw e11.getCause();
            } catch (IOException e12) {
                g gVarV = this.engine.v(e12, null);
                if (gVarV == null) {
                    throw e12;
                }
                try {
                    this.engine = gVarV;
                } catch (Throwable th4) {
                    z11 = false;
                    th2 = th4;
                    if (z11) {
                        this.engine.f().o();
                    }
                    throw th2;
                }
            }
        }
        this.engine.w();
        throw new IOException("Canceled");
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public synchronized boolean isExecuted() {
        return this.executed;
    }

    Object tag() {
        return this.originalRequest.tag();
    }

    void enqueue(Callback callback, boolean z10) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        this.client.getDispatcher().enqueue(new AsyncCall(callback, z10));
    }
}

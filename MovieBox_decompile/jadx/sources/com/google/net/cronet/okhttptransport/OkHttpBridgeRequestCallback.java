package com.google.net.cronet.okhttptransport;

import com.google.common.base.m;
import com.google.common.util.concurrent.r;
import com.google.common.util.concurrent.y;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Buffer;
import okio.Source;
import okio.Timeout;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

class OkHttpBridgeRequestCallback extends UrlRequest.Callback {

    private final y f31926a = y.s();

    private final AtomicBoolean f31927b = new AtomicBoolean(false);

    private final AtomicBoolean f31928c = new AtomicBoolean(false);

    private final BlockingQueue f31929d = new ArrayBlockingQueue(2);

    private final y f31930e = y.s();

    private final long f31931f;

    private final com.google.net.cronet.okhttptransport.c f31932g;

    private volatile UrlRequest f31933h;

    private enum CallbackStep {
        ON_READ_COMPLETED,
        ON_SUCCESS,
        ON_FAILED,
        ON_CANCELED
    }

    static class a {

        static final int[] f31934a;

        static {
            int[] iArr = new int[CallbackStep.values().length];
            f31934a = iArr;
            try {
                iArr[CallbackStep.ON_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31934a[CallbackStep.ON_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31934a[CallbackStep.ON_CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31934a[CallbackStep.ON_READ_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static class b {

        private final CallbackStep f31935a;

        private final ByteBuffer f31936b;

        private final CronetException f31937c;

        b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException, a aVar) {
            this(callbackStep, byteBuffer, cronetException);
        }

        private b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException) {
            this.f31935a = callbackStep;
            this.f31936b = byteBuffer;
            this.f31937c = cronetException;
        }
    }

    OkHttpBridgeRequestCallback(long j10, com.google.net.cronet.okhttptransport.c cVar) {
        m.d(j10 >= 0);
        if (j10 == 0) {
            this.f31931f = 2147483647L;
        } else {
            this.f31931f = j10;
        }
        this.f31932g = cVar;
    }

    r f() {
        return this.f31926a;
    }

    r g() {
        return this.f31930e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f31928c.set(true);
        this.f31929d.add(new b(CallbackStep.ON_CANCELED, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
        IOException iOException = new IOException("The request was canceled!");
        this.f31930e.setException(iOException);
        this.f31926a.setException(iOException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        if (this.f31930e.setException(cronetException) && this.f31926a.setException(cronetException)) {
            return;
        }
        this.f31929d.add(new b(CallbackStep.ON_FAILED, null, cronetException, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        this.f31929d.add(new b(CallbackStep.ON_READ_COMPLETED, byteBuffer, null, 0 == true ? 1 : 0));
    }

    @Override
    public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        if (!this.f31932g.b()) {
            m.u(this.f31930e.set(urlResponseInfo));
            m.u(this.f31926a.set(new Buffer()));
            urlRequest.cancel();
        } else {
            if (urlResponseInfo.getUrlChain().size() <= this.f31932g.c()) {
                urlRequest.followRedirect();
                return;
            }
            urlRequest.cancel();
            ProtocolException protocolException = new ProtocolException("Too many follow-up requests: " + (this.f31932g.c() + 1));
            this.f31930e.setException(protocolException);
            this.f31926a.setException(protocolException);
        }
    }

    @Override
    public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f31933h = urlRequest;
        m.u(this.f31930e.set(urlResponseInfo));
        m.u(this.f31926a.set(new c(this, null)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f31929d.add(new b(CallbackStep.ON_SUCCESS, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
    }

    private class c implements Source {

        private ByteBuffer f31938a;

        private volatile boolean f31939b;

        private c() {
            this.f31938a = ByteBuffer.allocateDirect(32768);
            this.f31939b = false;
        }

        @Override
        public void close() {
            if (this.f31939b) {
                return;
            }
            this.f31939b = true;
            if (OkHttpBridgeRequestCallback.this.f31927b.get()) {
                return;
            }
            OkHttpBridgeRequestCallback.this.f31933h.cancel();
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            b bVar;
            if (OkHttpBridgeRequestCallback.this.f31928c.get()) {
                throw new IOException("The request was canceled!");
            }
            m.e(buffer != null, "sink == null");
            m.h(j10 >= 0, "byteCount < 0: %s", j10);
            m.v(!this.f31939b, "closed");
            if (OkHttpBridgeRequestCallback.this.f31927b.get()) {
                return -1L;
            }
            if (j10 < this.f31938a.limit()) {
                this.f31938a.limit((int) j10);
            }
            OkHttpBridgeRequestCallback.this.f31933h.read(this.f31938a);
            try {
                bVar = (b) OkHttpBridgeRequestCallback.this.f31929d.poll(OkHttpBridgeRequestCallback.this.f31931f, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                bVar = null;
            }
            if (bVar == null) {
                OkHttpBridgeRequestCallback.this.f31933h.cancel();
                throw new CronetTimeoutException();
            }
            int i10 = a.f31934a[bVar.f31935a.ordinal()];
            if (i10 == 1) {
                OkHttpBridgeRequestCallback.this.f31927b.set(true);
                this.f31938a = null;
                throw new IOException(bVar.f31937c);
            }
            if (i10 == 2) {
                OkHttpBridgeRequestCallback.this.f31927b.set(true);
                this.f31938a = null;
                return -1L;
            }
            if (i10 == 3) {
                this.f31938a = null;
                throw new IOException("The request was canceled!");
            }
            if (i10 != 4) {
                throw new AssertionError("The switch block above is exhaustive!");
            }
            bVar.f31936b.flip();
            int iWrite = buffer.write(bVar.f31936b);
            bVar.f31936b.clear();
            return iWrite;
        }

        @Override
        public Timeout timeout() {
            return Timeout.NONE;
        }

        c(OkHttpBridgeRequestCallback okHttpBridgeRequestCallback, a aVar) {
            this();
        }
    }
}

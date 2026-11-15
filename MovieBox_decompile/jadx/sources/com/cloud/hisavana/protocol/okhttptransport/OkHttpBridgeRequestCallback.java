package com.cloud.hisavana.protocol.okhttptransport;

import com.google.common.base.m;
import com.google.common.util.concurrent.r;
import com.google.common.util.concurrent.y;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
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

    private final long f20830f;

    private final com.cloud.hisavana.protocol.okhttptransport.c f20832h;

    private volatile UrlRequest f20833i;

    private final y f20825a = y.s();

    private final AtomicBoolean f20826b = new AtomicBoolean(false);

    private final AtomicBoolean f20827c = new AtomicBoolean(false);

    private final BlockingQueue f20828d = new ArrayBlockingQueue(2);

    private final y f20829e = y.s();

    private final List f20831g = new ArrayList();

    private enum CallbackStep {
        ON_READ_COMPLETED,
        ON_SUCCESS,
        ON_FAILED,
        ON_CANCELED
    }

    static class a {

        static final int[] f20834a;

        static {
            int[] iArr = new int[CallbackStep.values().length];
            f20834a = iArr;
            try {
                iArr[CallbackStep.ON_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20834a[CallbackStep.ON_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20834a[CallbackStep.ON_CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20834a[CallbackStep.ON_READ_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static class b {

        private final CallbackStep f20835a;

        private final ByteBuffer f20836b;

        private final CronetException f20837c;

        b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException, a aVar) {
            this(callbackStep, byteBuffer, cronetException);
        }

        private b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException) {
            this.f20835a = callbackStep;
            this.f20836b = byteBuffer;
            this.f20837c = cronetException;
        }
    }

    OkHttpBridgeRequestCallback(long j10, com.cloud.hisavana.protocol.okhttptransport.c cVar) {
        m.d(j10 >= 0);
        if (j10 == 0) {
            this.f20830f = 2147483647L;
        } else {
            this.f20830f = j10;
        }
        this.f20832h = cVar;
    }

    r f() {
        return this.f20825a;
    }

    r g() {
        return this.f20829e;
    }

    List h() {
        return Collections.unmodifiableList(this.f20831g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f20827c.set(true);
        this.f20828d.add(new b(CallbackStep.ON_CANCELED, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
        IOException iOException = new IOException("The request was canceled!");
        this.f20829e.setException(iOException);
        this.f20825a.setException(iOException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        if (this.f20829e.setException(cronetException) && this.f20825a.setException(cronetException)) {
            return;
        }
        this.f20828d.add(new b(CallbackStep.ON_FAILED, null, cronetException, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        this.f20828d.add(new b(CallbackStep.ON_READ_COMPLETED, byteBuffer, null, 0 == true ? 1 : 0));
    }

    @Override
    public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        if (!this.f20832h.b()) {
            m.u(this.f20829e.set(urlResponseInfo));
            m.u(this.f20825a.set(new Buffer()));
            urlRequest.cancel();
            return;
        }
        this.f20831g.add(urlResponseInfo);
        if (urlResponseInfo.getUrlChain().size() <= this.f20832h.c()) {
            urlRequest.followRedirect();
            return;
        }
        urlRequest.cancel();
        ProtocolException protocolException = new ProtocolException("Too many follow-up requests: " + (this.f20832h.c() + 1));
        this.f20829e.setException(protocolException);
        this.f20825a.setException(protocolException);
    }

    @Override
    public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f20833i = urlRequest;
        m.u(this.f20829e.set(urlResponseInfo));
        m.u(this.f20825a.set(new c(this, null)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.f20828d.add(new b(CallbackStep.ON_SUCCESS, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
    }

    private class c implements Source {

        private ByteBuffer f20838a;

        private volatile boolean f20839b;

        private c() {
            this.f20838a = ByteBuffer.allocateDirect(32768);
            this.f20839b = false;
        }

        @Override
        public void close() {
            if (this.f20839b) {
                return;
            }
            this.f20839b = true;
            if (OkHttpBridgeRequestCallback.this.f20826b.get()) {
                return;
            }
            OkHttpBridgeRequestCallback.this.f20833i.cancel();
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            b bVar;
            if (OkHttpBridgeRequestCallback.this.f20827c.get()) {
                throw new IOException("The request was canceled!");
            }
            m.e(buffer != null, "sink == null");
            m.h(j10 >= 0, "byteCount < 0: %s", j10);
            m.v(!this.f20839b, "closed");
            if (OkHttpBridgeRequestCallback.this.f20826b.get()) {
                return -1L;
            }
            if (j10 < this.f20838a.limit()) {
                this.f20838a.limit((int) j10);
            }
            OkHttpBridgeRequestCallback.this.f20833i.read(this.f20838a);
            try {
                bVar = (b) OkHttpBridgeRequestCallback.this.f20828d.poll(OkHttpBridgeRequestCallback.this.f20830f, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                bVar = null;
            }
            if (bVar == null) {
                OkHttpBridgeRequestCallback.this.f20833i.cancel();
                throw new CronetTimeoutException();
            }
            int i10 = a.f20834a[bVar.f20835a.ordinal()];
            if (i10 == 1) {
                OkHttpBridgeRequestCallback.this.f20826b.set(true);
                this.f20838a = null;
                throw new IOException(bVar.f20837c);
            }
            if (i10 == 2) {
                OkHttpBridgeRequestCallback.this.f20826b.set(true);
                this.f20838a = null;
                return -1L;
            }
            if (i10 == 3) {
                this.f20838a = null;
                throw new IOException("The request was canceled!");
            }
            if (i10 != 4) {
                throw new AssertionError("The switch block above is exhaustive!");
            }
            bVar.f20836b.flip();
            int iWrite = buffer.write(bVar.f20836b);
            bVar.f20836b.clear();
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

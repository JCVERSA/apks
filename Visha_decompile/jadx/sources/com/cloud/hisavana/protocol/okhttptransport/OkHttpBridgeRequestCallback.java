package com.cloud.hisavana.protocol.okhttptransport;

import com.google.common.util.concurrent.g;
import defpackage.im5;
import defpackage.kp8;
import defpackage.xd8;
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

public class OkHttpBridgeRequestCallback extends UrlRequest.Callback {
    public final long f;
    public final kp8 h;
    public volatile UrlRequest i;
    public final g a = g.o();
    public final AtomicBoolean b = new AtomicBoolean(false);
    public final AtomicBoolean c = new AtomicBoolean(false);
    public final BlockingQueue d = new ArrayBlockingQueue(2);
    public final g e = g.o();
    public final List g = new ArrayList();

    public enum CallbackStep {
        ON_READ_COMPLETED,
        ON_SUCCESS,
        ON_FAILED,
        ON_CANCELED
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[CallbackStep.values().length];
            a = iArr;
            try {
                iArr[CallbackStep.ON_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CallbackStep.ON_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CallbackStep.ON_CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[CallbackStep.ON_READ_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class b {
        public final CallbackStep a;
        public final ByteBuffer b;
        public final CronetException c;

        public b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException, a aVar) {
            this(callbackStep, byteBuffer, cronetException);
        }

        public b(CallbackStep callbackStep, ByteBuffer byteBuffer, CronetException cronetException) {
            this.a = callbackStep;
            this.b = byteBuffer;
            this.c = cronetException;
        }
    }

    public OkHttpBridgeRequestCallback(long j, kp8 kp8Var) {
        xd8.d(j >= 0);
        if (j == 0) {
            this.f = 2147483647L;
        } else {
            this.f = j;
        }
        this.h = kp8Var;
    }

    public im5 f() {
        return this.a;
    }

    public im5 g() {
        return this.e;
    }

    public List h() {
        return Collections.unmodifiableList(this.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.c.set(true);
        this.d.add(new b(CallbackStep.ON_CANCELED, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
        IOException iOException = new IOException("The request was canceled!");
        this.e.setException(iOException);
        this.a.setException(iOException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        if (this.e.setException(cronetException) && this.a.setException(cronetException)) {
            return;
        }
        this.d.add(new b(CallbackStep.ON_FAILED, null, cronetException, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        this.d.add(new b(CallbackStep.ON_READ_COMPLETED, byteBuffer, null, 0 == true ? 1 : 0));
    }

    @Override
    public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        if (!this.h.b()) {
            xd8.u(this.e.set(urlResponseInfo));
            xd8.u(this.a.set(new Buffer()));
            urlRequest.cancel();
            return;
        }
        this.g.add(urlResponseInfo);
        if (urlResponseInfo.getUrlChain().size() <= this.h.c()) {
            urlRequest.followRedirect();
            return;
        }
        urlRequest.cancel();
        ProtocolException protocolException = new ProtocolException("Too many follow-up requests: " + (this.h.c() + 1));
        this.e.setException(protocolException);
        this.a.setException(protocolException);
    }

    @Override
    public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.i = urlRequest;
        xd8.u(this.e.set(urlResponseInfo));
        xd8.u(this.a.set(new c(this, null)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.d.add(new b(CallbackStep.ON_SUCCESS, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0));
    }

    public class c implements Source {
        public ByteBuffer b;
        public volatile boolean c;

        public c() {
            this.b = ByteBuffer.allocateDirect(32768);
            this.c = false;
        }

        @Override
        public void close() {
            if (this.c) {
                return;
            }
            this.c = true;
            if (OkHttpBridgeRequestCallback.this.b.get()) {
                return;
            }
            OkHttpBridgeRequestCallback.this.i.cancel();
        }

        @Override
        public long read(Buffer buffer, long j) throws IOException {
            b bVar;
            if (OkHttpBridgeRequestCallback.this.c.get()) {
                throw new IOException("The request was canceled!");
            }
            xd8.e(buffer != null, "sink == null");
            xd8.h(j >= 0, "byteCount < 0: %s", j);
            xd8.v(!this.c, "closed");
            if (OkHttpBridgeRequestCallback.this.b.get()) {
                return -1L;
            }
            if (j < this.b.limit()) {
                this.b.limit((int) j);
            }
            OkHttpBridgeRequestCallback.this.i.read(this.b);
            try {
                bVar = (b) OkHttpBridgeRequestCallback.this.d.poll(OkHttpBridgeRequestCallback.this.f, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                bVar = null;
            }
            if (bVar == null) {
                OkHttpBridgeRequestCallback.this.i.cancel();
                throw new CronetTimeoutException();
            }
            int i = a.a[bVar.a.ordinal()];
            if (i == 1) {
                OkHttpBridgeRequestCallback.this.b.set(true);
                this.b = null;
                throw new IOException(bVar.c);
            }
            if (i == 2) {
                OkHttpBridgeRequestCallback.this.b.set(true);
                this.b = null;
                return -1L;
            }
            if (i == 3) {
                this.b = null;
                throw new IOException("The request was canceled!");
            }
            if (i != 4) {
                throw new AssertionError("The switch block above is exhaustive!");
            }
            bVar.b.flip();
            int iWrite = buffer.write(bVar.b);
            bVar.b.clear();
            return iWrite;
        }

        @Override
        public Timeout getTimeout() {
            return Timeout.NONE;
        }

        public c(OkHttpBridgeRequestCallback okHttpBridgeRequestCallback, a aVar) {
            this();
        }
    }
}

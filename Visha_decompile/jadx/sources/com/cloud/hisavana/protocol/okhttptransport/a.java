package com.cloud.hisavana.protocol.okhttptransport;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.im5;
import defpackage.j94;
import defpackage.mob;
import defpackage.pm5;
import defpackage.wfb;
import defpackage.ys8;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.Okio;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

public final class a implements ys8 {
    public final b a;
    public final c b;

    public static class C0033a {
        public static final int[] a;

        static {
            int[] iArr = new int[UploadBodyDataBroker.ReadResult.values().length];
            a = iArr;
            try {
                iArr[UploadBodyDataBroker.ReadResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[UploadBodyDataBroker.ReadResult.END_OF_BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class b implements ys8 {

        public class C0034a extends UploadDataProvider {
            public volatile boolean b = false;
            public final Buffer c = new Buffer();
            public final long d;
            public final RequestBody e;

            public C0034a(long j, RequestBody requestBody) {
                this.d = j;
                this.e = requestBody;
            }

            @Override
            public long getLength() {
                return this.d;
            }

            @Override
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                if (!this.b) {
                    this.e.writeTo(this.c);
                    this.c.flush();
                    this.b = true;
                    long length = getLength();
                    long size = this.c.size();
                    if (size != length) {
                        throw new IOException("Expected " + length + " bytes but got " + size);
                    }
                }
                if (this.c.read(byteBuffer) == -1) {
                    throw new IllegalStateException("The source has been exhausted but we expected more!");
                }
                uploadDataSink.onReadSucceeded(false);
            }

            @Override
            public void rewind(UploadDataSink uploadDataSink) {
                uploadDataSink.onRewindError(new UnsupportedOperationException());
            }
        }

        @Override
        public UploadDataProvider a(RequestBody requestBody, int i) throws IOException {
            long jContentLength = requestBody.contentLength();
            if (jContentLength >= 0 && jContentLength <= 1048576) {
                return new C0034a(jContentLength, requestBody);
            }
            throw new IOException("Expected definite length less than 1048576but got " + jContentLength);
        }
    }

    public static final class c implements ys8 {
        public final ExecutorService a;

        public static class C0035a extends UploadDataProvider {
            public final RequestBody b;
            public final UploadBodyDataBroker c;
            public final pm5 d;
            public final long e;
            public im5 f;
            public long g;

            public class C0036a implements j94 {
                public C0036a() {
                }

                @Override
                public void onFailure(Throwable th) {
                    C0035a.this.c.e(th);
                }

                @Override
                public void onSuccess(Object obj) {
                }
            }

            public C0035a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j, C0033a c0033a) {
                this(requestBody, uploadBodyDataBroker, executorService, j);
            }

            public static IOException h(long j, long j2) {
                return new IOException("Expected " + j + " bytes but got at least " + j2);
            }

            public final void d() {
                if (this.f == null) {
                    im5 im5VarSubmit = this.d.submit(new Callable() {
                        @Override
                        public final Object call() {
                            return this.b.g();
                        }
                    });
                    this.f = im5VarSubmit;
                    Futures.a(im5VarSubmit, new C0036a(), MoreExecutors.a());
                }
            }

            public final void e(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                int iPosition = byteBuffer.position();
                byteBuffer.position(0);
                if (!k(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY)) {
                    throw h(getLength(), this.g);
                }
                mob.a(byteBuffer.position() == 0, "END_OF_BODY reads shouldn't write anything to the buffer", new Object[0]);
                byteBuffer.position(iPosition);
                uploadDataSink.onReadSucceeded(false);
            }

            public final Void g() throws IOException {
                BufferedSink bufferedSinkBuffer = Okio.buffer(this.c);
                this.b.writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.flush();
                this.c.d();
                return null;
            }

            @Override
            public long getLength() {
                return this.b.contentLength();
            }

            public final UploadBodyDataBroker.ReadResult k(ByteBuffer byteBuffer) {
                int iPosition = byteBuffer.position();
                UploadBodyDataBroker.ReadResult readResult = (UploadBodyDataBroker.ReadResult) wfb.b(this.c.a(byteBuffer), this.e, TimeUnit.MILLISECONDS);
                this.g += (long) (byteBuffer.position() - iPosition);
                return readResult;
            }

            public final void n(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
                try {
                    UploadBodyDataBroker.ReadResult readResultK = k(byteBuffer);
                    if (this.g > getLength()) {
                        throw h(getLength(), this.g);
                    }
                    if (this.g >= getLength()) {
                        e(uploadDataSink, byteBuffer);
                        return;
                    }
                    int i = C0033a.a[readResultK.ordinal()];
                    if (i == 1) {
                        uploadDataSink.onReadSucceeded(false);
                    } else if (i == 2) {
                        throw new IOException("The source has been exhausted but we expected more data!");
                    }
                } catch (ExecutionException | TimeoutException e) {
                    this.f.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                }
            }

            public final void o(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
                try {
                    uploadDataSink.onReadSucceeded(k(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY));
                } catch (ExecutionException | TimeoutException e) {
                    this.f.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                }
            }

            @Override
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
                d();
                if (getLength() == -1) {
                    o(uploadDataSink, byteBuffer);
                } else {
                    n(uploadDataSink, byteBuffer);
                }
            }

            @Override
            public void rewind(UploadDataSink uploadDataSink) {
                uploadDataSink.onRewindError(new UnsupportedOperationException("Rewind is not supported!"));
            }

            public C0035a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j) {
                this.b = requestBody;
                this.c = uploadBodyDataBroker;
                if (executorService instanceof pm5) {
                    this.d = (pm5) executorService;
                } else {
                    this.d = MoreExecutors.b(executorService);
                }
                this.e = j == 0 ? 2147483647L : j;
            }
        }

        public c(ExecutorService executorService) {
            this.a = executorService;
        }

        @Override
        public UploadDataProvider a(RequestBody requestBody, int i) {
            return new C0035a(requestBody, new UploadBodyDataBroker(), this.a, i, null);
        }
    }

    public a(b bVar, c cVar) {
        this.a = bVar;
        this.b = cVar;
    }

    public static a b(ExecutorService executorService) {
        return new a(new b(), new c(executorService));
    }

    @Override
    public UploadDataProvider a(RequestBody requestBody, int i) throws IOException {
        long jContentLength = requestBody.contentLength();
        return (jContentLength == -1 || jContentLength > 1048576) ? this.b.a(requestBody, i) : this.a.a(requestBody, i);
    }
}

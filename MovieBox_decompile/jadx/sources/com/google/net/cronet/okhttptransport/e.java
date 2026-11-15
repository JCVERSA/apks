package com.google.net.cronet.okhttptransport;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.common.base.s;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.m;
import com.google.common.util.concurrent.r;
import com.google.common.util.concurrent.t;
import com.google.common.util.concurrent.z;
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

final class e implements d {

    private final b f31951a;

    private final c f31952b;

    static class a {

        static final int[] f31953a;

        static {
            int[] iArr = new int[UploadBodyDataBroker.ReadResult.values().length];
            f31953a = iArr;
            try {
                iArr[UploadBodyDataBroker.ReadResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31953a[UploadBodyDataBroker.ReadResult.END_OF_BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static final class b implements d {

        class a extends UploadDataProvider {

            private volatile boolean f31954a = false;

            private final Buffer f31955b = new Buffer();

            final long f31956c;

            final RequestBody f31957d;

            a(long j10, RequestBody requestBody) {
                this.f31956c = j10;
                this.f31957d = requestBody;
            }

            @Override
            public long getLength() {
                return this.f31956c;
            }

            @Override
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                if (!this.f31954a) {
                    this.f31957d.writeTo(this.f31955b);
                    this.f31955b.flush();
                    this.f31954a = true;
                    long length = getLength();
                    long size = this.f31955b.size();
                    if (size != length) {
                        throw new IOException("Expected " + length + " bytes but got " + size);
                    }
                }
                if (this.f31955b.read(byteBuffer) == -1) {
                    throw new IllegalStateException("The source has been exhausted but we expected more!");
                }
                uploadDataSink.onReadSucceeded(false);
            }

            @Override
            public void rewind(UploadDataSink uploadDataSink) {
                uploadDataSink.onRewindError(new UnsupportedOperationException());
            }
        }

        b() {
        }

        @Override
        public UploadDataProvider a(RequestBody requestBody, int i10) throws IOException {
            long jContentLength = requestBody.contentLength();
            if (jContentLength >= 0 && jContentLength <= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
                return new a(jContentLength, requestBody);
            }
            throw new IOException("Expected definite length less than 1048576but got " + jContentLength);
        }
    }

    static final class c implements d {

        private final ExecutorService f31959a;

        static class a extends UploadDataProvider {

            private final RequestBody f31960a;

            private final UploadBodyDataBroker f31961b;

            private final t f31962c;

            private final long f31963d;

            private r f31964e;

            private long f31965f;

            class C0427a implements m {
                C0427a() {
                }

                @Override
                public void onFailure(Throwable th2) {
                    a.this.f31961b.j(th2);
                }

                @Override
                public void onSuccess(Object obj) {
                }
            }

            a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j10, a aVar) {
                this(requestBody, uploadBodyDataBroker, executorService, j10);
            }

            private void h() {
                if (this.f31964e == null) {
                    r rVarSubmit = this.f31962c.submit(new Callable() {
                        @Override
                        public final Object call() {
                            return this.f31967a.k();
                        }
                    });
                    this.f31964e = rVarSubmit;
                    Futures.a(rVarSubmit, new C0427a(), MoreExecutors.a());
                }
            }

            private void j(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                int iPosition = byteBuffer.position();
                byteBuffer.position(0);
                if (!m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY)) {
                    throw l(getLength(), this.f31965f);
                }
                s.a(byteBuffer.position() == 0, "END_OF_BODY reads shouldn't write anything to the buffer", new Object[0]);
                byteBuffer.position(iPosition);
                uploadDataSink.onReadSucceeded(false);
            }

            public Void k() throws IOException {
                BufferedSink bufferedSinkBuffer = Okio.buffer(this.f31961b);
                this.f31960a.writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.flush();
                this.f31961b.h();
                return null;
            }

            private static IOException l(long j10, long j11) {
                return new IOException("Expected " + j10 + " bytes but got at least " + j11);
            }

            private UploadBodyDataBroker.ReadResult m(ByteBuffer byteBuffer) {
                int iPosition = byteBuffer.position();
                UploadBodyDataBroker.ReadResult readResult = (UploadBodyDataBroker.ReadResult) z.b(this.f31961b.b(byteBuffer), this.f31963d, TimeUnit.MILLISECONDS);
                this.f31965f += (long) (byteBuffer.position() - iPosition);
                return readResult;
            }

            private void n(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                try {
                    UploadBodyDataBroker.ReadResult readResultM = m(byteBuffer);
                    if (this.f31965f > getLength()) {
                        throw l(getLength(), this.f31965f);
                    }
                    if (this.f31965f >= getLength()) {
                        j(uploadDataSink, byteBuffer);
                        return;
                    }
                    int i10 = a.f31953a[readResultM.ordinal()];
                    if (i10 == 1) {
                        uploadDataSink.onReadSucceeded(false);
                    } else if (i10 == 2) {
                        throw new IOException("The source has been exhausted but we expected more data!");
                    }
                } catch (ExecutionException e10) {
                    e = e10;
                    this.f31964e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                } catch (TimeoutException e11) {
                    e = e11;
                    this.f31964e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                }
            }

            private void o(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
                try {
                    uploadDataSink.onReadSucceeded(m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY));
                } catch (ExecutionException | TimeoutException e10) {
                    this.f31964e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e10));
                }
            }

            @Override
            public long getLength() {
                return this.f31960a.contentLength();
            }

            @Override
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                h();
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

            private a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j10) {
                this.f31960a = requestBody;
                this.f31961b = uploadBodyDataBroker;
                if (executorService instanceof t) {
                    this.f31962c = (t) executorService;
                } else {
                    this.f31962c = MoreExecutors.b(executorService);
                }
                this.f31963d = j10 == 0 ? 2147483647L : j10;
            }
        }

        c(ExecutorService executorService) {
            this.f31959a = executorService;
        }

        @Override
        public UploadDataProvider a(RequestBody requestBody, int i10) {
            return new a(requestBody, new UploadBodyDataBroker(), this.f31959a, i10, null);
        }
    }

    e(b bVar, c cVar) {
        this.f31951a = bVar;
        this.f31952b = cVar;
    }

    static e b(ExecutorService executorService) {
        return new e(new b(), new c(executorService));
    }

    @Override
    public UploadDataProvider a(RequestBody requestBody, int i10) throws IOException {
        long jContentLength = requestBody.contentLength();
        return (jContentLength == -1 || jContentLength > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) ? this.f31952b.a(requestBody, i10) : this.f31951a.a(requestBody, i10);
    }
}

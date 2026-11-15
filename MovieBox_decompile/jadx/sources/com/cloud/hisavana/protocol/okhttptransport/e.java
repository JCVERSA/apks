package com.cloud.hisavana.protocol.okhttptransport;

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

    private final b f20851a;

    private final c f20852b;

    static class a {

        static final int[] f20853a;

        static {
            int[] iArr = new int[UploadBodyDataBroker.ReadResult.values().length];
            f20853a = iArr;
            try {
                iArr[UploadBodyDataBroker.ReadResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20853a[UploadBodyDataBroker.ReadResult.END_OF_BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static final class b implements d {

        class a extends UploadDataProvider {

            private volatile boolean f20854a = false;

            private final Buffer f20855b = new Buffer();

            final long f20856c;

            final RequestBody f20857d;

            a(long j10, RequestBody requestBody) {
                this.f20856c = j10;
                this.f20857d = requestBody;
            }

            @Override
            public long getLength() {
                return this.f20856c;
            }

            @Override
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                if (!this.f20854a) {
                    this.f20857d.writeTo(this.f20855b);
                    this.f20855b.flush();
                    this.f20854a = true;
                    long length = getLength();
                    long size = this.f20855b.size();
                    if (size != length) {
                        throw new IOException("Expected " + length + " bytes but got " + size);
                    }
                }
                if (this.f20855b.read(byteBuffer) == -1) {
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

        private final ExecutorService f20859a;

        static class a extends UploadDataProvider {

            private final RequestBody f20860a;

            private final UploadBodyDataBroker f20861b;

            private final t f20862c;

            private final long f20863d;

            private r f20864e;

            private long f20865f;

            a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j10, a aVar) {
                this(requestBody, uploadBodyDataBroker, executorService, j10);
            }

            private void h() {
                if (this.f20864e == null) {
                    r rVarSubmit = this.f20862c.submit(new Callable() {
                        @Override
                        public final Object call() {
                            return this.f20867a.k();
                        }
                    });
                    this.f20864e = rVarSubmit;
                    Futures.a(rVarSubmit, new C0275a(), MoreExecutors.a());
                }
            }

            private void j(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                int iPosition = byteBuffer.position();
                byteBuffer.position(0);
                if (!m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY)) {
                    throw l(getLength(), this.f20865f);
                }
                s.a(byteBuffer.position() == 0, "END_OF_BODY reads shouldn't write anything to the buffer", new Object[0]);
                byteBuffer.position(iPosition);
                uploadDataSink.onReadSucceeded(false);
            }

            public Void k() throws IOException {
                BufferedSink bufferedSinkBuffer = Okio.buffer(this.f20861b);
                this.f20860a.writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.flush();
                this.f20861b.h();
                return null;
            }

            private static IOException l(long j10, long j11) {
                return new IOException("Expected " + j10 + " bytes but got at least " + j11);
            }

            private UploadBodyDataBroker.ReadResult m(ByteBuffer byteBuffer) {
                int iPosition = byteBuffer.position();
                UploadBodyDataBroker.ReadResult readResult = (UploadBodyDataBroker.ReadResult) z.b(this.f20861b.b(byteBuffer), this.f20863d, TimeUnit.MILLISECONDS);
                this.f20865f += (long) (byteBuffer.position() - iPosition);
                return readResult;
            }

            private void n(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                try {
                    UploadBodyDataBroker.ReadResult readResultM = m(byteBuffer);
                    if (this.f20865f > getLength()) {
                        throw l(getLength(), this.f20865f);
                    }
                    if (this.f20865f >= getLength()) {
                        j(uploadDataSink, byteBuffer);
                        return;
                    }
                    int i10 = a.f20853a[readResultM.ordinal()];
                    if (i10 == 1) {
                        uploadDataSink.onReadSucceeded(false);
                    } else if (i10 == 2) {
                        throw new IOException("The source has been exhausted but we expected more data!");
                    }
                } catch (ExecutionException e10) {
                    e = e10;
                    this.f20864e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                } catch (TimeoutException e11) {
                    e = e11;
                    this.f20864e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                }
            }

            private void o(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
                try {
                    uploadDataSink.onReadSucceeded(m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY));
                } catch (ExecutionException | TimeoutException e10) {
                    this.f20864e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e10));
                }
            }

            @Override
            public long getLength() {
                return this.f20860a.contentLength();
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
                this.f20860a = requestBody;
                this.f20861b = uploadBodyDataBroker;
                if (executorService instanceof t) {
                    this.f20862c = (t) executorService;
                } else {
                    this.f20862c = MoreExecutors.b(executorService);
                }
                this.f20863d = j10 == 0 ? 2147483647L : j10;
            }

            class C0275a implements m {
                C0275a() {
                }

                @Override
                public void onFailure(Throwable th2) {
                    a.this.f20861b.j(th2);
                }

                @Override
                public void onSuccess(Object obj) {
                }
            }
        }

        c(ExecutorService executorService) {
            this.f20859a = executorService;
        }

        @Override
        public UploadDataProvider a(RequestBody requestBody, int i10) {
            return new a(requestBody, new UploadBodyDataBroker(), this.f20859a, i10, null);
        }
    }

    e(b bVar, c cVar) {
        this.f20851a = bVar;
        this.f20852b = cVar;
    }

    static e b(ExecutorService executorService) {
        return new e(new b(), new c(executorService));
    }

    @Override
    public UploadDataProvider a(RequestBody requestBody, int i10) throws IOException {
        long jContentLength = requestBody.contentLength();
        return (jContentLength == -1 || jContentLength > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) ? this.f20852b.a(requestBody, i10) : this.f20851a.a(requestBody, i10);
    }
}

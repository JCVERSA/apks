package com.lzy.okgo.request.base;

import com.lzy.okgo.model.Progress;
import defpackage.ie7;
import defpackage.uq0;
import defpackage.ut4;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

public class ProgressRequestBody extends RequestBody {
    public RequestBody a;
    public b b;

    public final class a extends ForwardingSink {
        public Progress f;

        public class C0154a implements Progress.a {
            public C0154a() {
            }

            @Override
            public void a(Progress progress) {
                if (ProgressRequestBody.this.b != null) {
                    ProgressRequestBody.this.b.a(progress);
                } else {
                    ProgressRequestBody.this.d(progress);
                }
            }
        }

        public a(Sink sink) {
            super(sink);
            Progress progress = new Progress();
            this.f = progress;
            progress.totalSize = ProgressRequestBody.this.contentLength();
        }

        @Override
        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            Progress.changeProgress(this.f, j, new C0154a());
        }
    }

    public interface b {
        void a(Progress progress);
    }

    public ProgressRequestBody(RequestBody requestBody, uq0 uq0Var) {
        this.a = requestBody;
    }

    public static uq0 c(ProgressRequestBody progressRequestBody) {
        progressRequestBody.getClass();
        return null;
    }

    @Override
    public long contentLength() {
        try {
            return this.a.contentLength();
        } catch (IOException e) {
            ie7.a(e);
            return -1L;
        }
    }

    @Override
    public MediaType getContentType() {
        return this.a.getContentType();
    }

    public final void d(final Progress progress) {
        ut4.k(new Runnable() {
            @Override
            public void run() {
                ProgressRequestBody.c(ProgressRequestBody.this);
            }
        });
    }

    public void e(b bVar) {
        this.b = bVar;
    }

    @Override
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        BufferedSink bufferedSinkBuffer = Okio.buffer(new a(bufferedSink));
        this.a.writeTo(bufferedSinkBuffer);
        bufferedSinkBuffer.flush();
    }
}

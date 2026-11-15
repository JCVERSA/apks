package retrofit2;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

final class w implements d {

    private final i0 f71158a;

    private final Object f71159b;

    private final Object[] f71160c;

    private final Call.Factory f71161d;

    private final k f71162e;

    private volatile boolean f71163f;

    private Call f71164g;

    private Throwable f71165h;

    private boolean f71166i;

    class a implements Callback {

        final f f71167a;

        a(f fVar) {
            this.f71167a = fVar;
        }

        private void a(Throwable th2) {
            try {
                this.f71167a.a(w.this, th2);
            } catch (Throwable th3) {
                o0.t(th3);
                th3.printStackTrace();
            }
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            a(iOException);
        }

        @Override
        public void onResponse(Call call, Response response) {
            try {
                try {
                    this.f71167a.b(w.this, w.this.d(response));
                } catch (Throwable th2) {
                    o0.t(th2);
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                o0.t(th3);
                a(th3);
            }
        }
    }

    static final class b extends ResponseBody {

        private final ResponseBody f71169a;

        private final BufferedSource f71170b;

        IOException f71171c;

        class a extends ForwardingSource {
            a(Source source) {
                super(source);
            }

            @Override
            public long read(Buffer buffer, long j10) throws IOException {
                try {
                    return super.read(buffer, j10);
                } catch (IOException e10) {
                    b.this.f71171c = e10;
                    throw e10;
                }
            }
        }

        b(ResponseBody responseBody) {
            this.f71169a = responseBody;
            this.f71170b = Okio.buffer(new a(responseBody.getSource()));
        }

        @Override
        public void close() {
            this.f71169a.close();
        }

        @Override
        public long getContentLength() {
            return this.f71169a.getContentLength();
        }

        @Override
        public MediaType get$contentType() {
            return this.f71169a.get$contentType();
        }

        @Override
        public BufferedSource getSource() {
            return this.f71170b;
        }

        void throwIfCaught() throws IOException {
            IOException iOException = this.f71171c;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    static final class c extends ResponseBody {

        private final MediaType f71173a;

        private final long f71174b;

        c(MediaType mediaType, long j10) {
            this.f71173a = mediaType;
            this.f71174b = j10;
        }

        @Override
        public long getContentLength() {
            return this.f71174b;
        }

        @Override
        public MediaType get$contentType() {
            return this.f71173a;
        }

        @Override
        public BufferedSource getSource() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    w(i0 i0Var, Object obj, Object[] objArr, Call.Factory factory, k kVar) {
        this.f71158a = i0Var;
        this.f71159b = obj;
        this.f71160c = objArr;
        this.f71161d = factory;
        this.f71162e = kVar;
    }

    private Call b() {
        Call callNewCall = this.f71161d.newCall(this.f71158a.a(this.f71159b, this.f71160c));
        if (callNewCall != null) {
            return callNewCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    private Call c() throws IOException {
        Call call = this.f71164g;
        if (call != null) {
            return call;
        }
        Throwable th2 = this.f71165h;
        if (th2 != null) {
            if (th2 instanceof IOException) {
                throw ((IOException) th2);
            }
            if (th2 instanceof RuntimeException) {
                throw ((RuntimeException) th2);
            }
            throw ((Error) th2);
        }
        try {
            Call callB = b();
            this.f71164g = callB;
            return callB;
        } catch (IOException | Error | RuntimeException e10) {
            o0.t(e10);
            this.f71165h = e10;
            throw e10;
        }
    }

    @Override
    public w clone() {
        return new w(this.f71158a, this.f71159b, this.f71160c, this.f71161d, this.f71162e);
    }

    @Override
    public void cancel() {
        Call call;
        this.f71163f = true;
        synchronized (this) {
            call = this.f71164g;
        }
        if (call != null) {
            call.cancel();
        }
    }

    j0 d(Response response) throws IOException {
        ResponseBody responseBodyBody = response.body();
        Response responseBuild = response.newBuilder().body(new c(responseBodyBody.get$contentType(), responseBodyBody.getContentLength())).build();
        int iCode = responseBuild.code();
        if (iCode < 200 || iCode >= 300) {
            try {
                return j0.c(o0.a(responseBodyBody), responseBuild);
            } finally {
                responseBodyBody.close();
            }
        }
        if (iCode == 204 || iCode == 205) {
            responseBodyBody.close();
            return j0.g(null, responseBuild);
        }
        b bVar = new b(responseBodyBody);
        try {
            return j0.g(this.f71162e.convert(bVar), responseBuild);
        } catch (RuntimeException e10) {
            bVar.throwIfCaught();
            throw e10;
        }
    }

    @Override
    public j0 execute() {
        Call callC;
        synchronized (this) {
            if (this.f71166i) {
                throw new IllegalStateException("Already executed.");
            }
            this.f71166i = true;
            callC = c();
        }
        if (this.f71163f) {
            callC.cancel();
        }
        return d(FirebasePerfOkHttpClient.execute(callC));
    }

    @Override
    public void f(f fVar) {
        Call call;
        Throwable th2;
        Objects.requireNonNull(fVar, "callback == null");
        synchronized (this) {
            try {
                if (this.f71166i) {
                    throw new IllegalStateException("Already executed.");
                }
                this.f71166i = true;
                call = this.f71164g;
                th2 = this.f71165h;
                if (call == null && th2 == null) {
                    try {
                        Call callB = b();
                        this.f71164g = callB;
                        call = callB;
                    } catch (Throwable th3) {
                        th2 = th3;
                        o0.t(th2);
                        this.f71165h = th2;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        if (th2 != null) {
            fVar.a(this, th2);
            return;
        }
        if (this.f71163f) {
            call.cancel();
        }
        FirebasePerfOkHttpClient.enqueue(call, new a(fVar));
    }

    @Override
    public boolean isCanceled() {
        boolean z10 = true;
        if (this.f71163f) {
            return true;
        }
        synchronized (this) {
            try {
                Call call = this.f71164g;
                if (call == null || !call.getCanceled()) {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    @Override
    public synchronized Request request() {
        try {
        } catch (IOException e10) {
            throw new RuntimeException("Unable to create request.", e10);
        }
        return c().request();
    }
}

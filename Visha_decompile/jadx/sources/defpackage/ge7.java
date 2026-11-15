package defpackage;

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

public final class ge7 implements jq0 {
    public final et8 b;
    public final Object c;
    public final Object[] d;
    public final Call.Factory e;
    public final si1 f;
    public volatile boolean g;
    public Call h;
    public Throwable i;
    public boolean j;

    public class a implements Callback {
        public final tq0 b;

        public a(tq0 tq0Var) {
            this.b = tq0Var;
        }

        public final void a(Throwable th) {
            try {
                this.b.onFailure(ge7.this, th);
            } catch (Throwable th2) {
                ulb.t(th2);
                th2.printStackTrace();
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
                    this.b.onResponse(ge7.this, ge7.this.e(response));
                } catch (Throwable th) {
                    ulb.t(th);
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                ulb.t(th2);
                a(th2);
            }
        }
    }

    public static final class b extends ResponseBody {
        public final ResponseBody b;
        public final BufferedSource c;
        public IOException d;

        public class a extends ForwardingSource {
            public a(Source source) {
                super(source);
            }

            @Override
            public long read(Buffer buffer, long j) throws IOException {
                try {
                    return super.read(buffer, j);
                } catch (IOException e) {
                    b.this.d = e;
                    throw e;
                }
            }
        }

        public b(ResponseBody responseBody) {
            this.b = responseBody;
            this.c = Okio.buffer(new a(responseBody.getBodySource()));
        }

        public void b() throws IOException {
            IOException iOException = this.d;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override
        public void close() {
            this.b.close();
        }

        @Override
        public long getContentLength() {
            return this.b.getContentLength();
        }

        @Override
        public MediaType get$contentType() {
            return this.b.get$contentType();
        }

        @Override
        public BufferedSource getBodySource() {
            return this.c;
        }
    }

    public static final class c extends ResponseBody {
        public final MediaType b;
        public final long c;

        public c(MediaType mediaType, long j) {
            this.b = mediaType;
            this.c = j;
        }

        @Override
        public long getContentLength() {
            return this.c;
        }

        @Override
        public MediaType get$contentType() {
            return this.b;
        }

        @Override
        public BufferedSource getBodySource() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public ge7(et8 et8Var, Object obj, Object[] objArr, Call.Factory factory, si1 si1Var) {
        this.b = et8Var;
        this.c = obj;
        this.d = objArr;
        this.e = factory;
        this.f = si1Var;
    }

    @Override
    public ge7 clone() {
        return new ge7(this.b, this.c, this.d, this.e, this.f);
    }

    public final Call c() {
        Call callNewCall = this.e.newCall(this.b.a(this.c, this.d));
        if (callNewCall != null) {
            return callNewCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    @Override
    public void cancel() {
        Call call;
        this.g = true;
        synchronized (this) {
            call = this.h;
        }
        if (call != null) {
            call.cancel();
        }
    }

    public final Call d() throws IOException {
        Call call = this.h;
        if (call != null) {
            return call;
        }
        Throwable th = this.i;
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw ((Error) th);
        }
        try {
            Call callC = c();
            this.h = callC;
            return callC;
        } catch (IOException | Error | RuntimeException e) {
            ulb.t(e);
            this.i = e;
            throw e;
        }
    }

    public gu8 e(Response response) throws IOException {
        ResponseBody responseBodyBody = response.body();
        Response responseBuild = response.newBuilder().body(new c(responseBodyBody.get$contentType(), responseBodyBody.getContentLength())).build();
        int iCode = responseBuild.code();
        if (iCode < 200 || iCode >= 300) {
            try {
                return gu8.c(ulb.a(responseBodyBody), responseBuild);
            } finally {
                responseBodyBody.close();
            }
        }
        if (iCode == 204 || iCode == 205) {
            responseBodyBody.close();
            return gu8.g(null, responseBuild);
        }
        b bVar = new b(responseBodyBody);
        try {
            return gu8.g(this.f.convert(bVar), responseBuild);
        } catch (RuntimeException e) {
            bVar.b();
            throw e;
        }
    }

    @Override
    public void enqueue(tq0 tq0Var) {
        Call call;
        Throwable th;
        Objects.requireNonNull(tq0Var, "callback == null");
        synchronized (this) {
            try {
                if (this.j) {
                    throw new IllegalStateException("Already executed.");
                }
                this.j = true;
                call = this.h;
                th = this.i;
                if (call == null && th == null) {
                    try {
                        Call callC = c();
                        this.h = callC;
                        call = callC;
                    } catch (Throwable th2) {
                        th = th2;
                        ulb.t(th);
                        this.i = th;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (th != null) {
            tq0Var.onFailure(this, th);
            return;
        }
        if (this.g) {
            call.cancel();
        }
        call.enqueue(new a(tq0Var));
    }

    @Override
    public gu8 execute() {
        Call callD;
        synchronized (this) {
            if (this.j) {
                throw new IllegalStateException("Already executed.");
            }
            this.j = true;
            callD = d();
        }
        if (this.g) {
            callD.cancel();
        }
        return e(callD.execute());
    }

    @Override
    public boolean isCanceled() {
        boolean z = true;
        if (this.g) {
            return true;
        }
        synchronized (this) {
            try {
                Call call = this.h;
                if (call == null || !call.getCanceled()) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override
    public synchronized boolean isExecuted() {
        return this.j;
    }

    @Override
    public synchronized Request request() {
        try {
        } catch (IOException e) {
            throw new RuntimeException("Unable to create request.", e);
        }
        return d().request();
    }
}

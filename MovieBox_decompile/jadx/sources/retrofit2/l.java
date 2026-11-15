package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.Request;

final class l extends e.a {

    private final Executor f71122a;

    class a implements e {

        final Type f71123a;

        final Executor f71124b;

        a(Type type, Executor executor) {
            this.f71123a = type;
            this.f71124b = executor;
        }

        @Override
        public Type a() {
            return this.f71123a;
        }

        @Override
        public d b(d dVar) {
            Executor executor = this.f71124b;
            return executor == null ? dVar : new b(executor, dVar);
        }
    }

    static final class b implements d {

        final Executor f71126a;

        final d f71127b;

        class a implements f {

            final f f71128a;

            a(f fVar) {
                this.f71128a = fVar;
            }

            public void e(f fVar, Throwable th2) {
                fVar.a(b.this, th2);
            }

            public void f(f fVar, j0 j0Var) {
                if (b.this.f71127b.isCanceled()) {
                    fVar.a(b.this, new IOException("Canceled"));
                } else {
                    fVar.b(b.this, j0Var);
                }
            }

            @Override
            public void a(d dVar, final Throwable th2) {
                Executor executor = b.this.f71126a;
                final f fVar = this.f71128a;
                executor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f71133a.e(fVar, th2);
                    }
                });
            }

            @Override
            public void b(d dVar, final j0 j0Var) {
                Executor executor = b.this.f71126a;
                final f fVar = this.f71128a;
                executor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f71130a.f(fVar, j0Var);
                    }
                });
            }
        }

        b(Executor executor, d dVar) {
            this.f71126a = executor;
            this.f71127b = dVar;
        }

        @Override
        public void cancel() {
            this.f71127b.cancel();
        }

        @Override
        public j0 execute() {
            return this.f71127b.execute();
        }

        @Override
        public void f(f fVar) {
            Objects.requireNonNull(fVar, "callback == null");
            this.f71127b.f(new a(fVar));
        }

        @Override
        public boolean isCanceled() {
            return this.f71127b.isCanceled();
        }

        @Override
        public Request request() {
            return this.f71127b.request();
        }

        @Override
        public d clone() {
            return new b(this.f71126a, this.f71127b.clone());
        }
    }

    l(Executor executor) {
        this.f71122a = executor;
    }

    @Override
    public e a(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (e.a.c(type) != d.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new a(o0.g(0, (ParameterizedType) type), o0.l(annotationArr, m0.class) ? null : this.f71122a);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}

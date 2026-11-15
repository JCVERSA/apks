package defpackage;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.Request;

public final class i02 extends lq0.a {
    public final Executor a;

    public class a implements lq0 {
        public final Type a;
        public final Executor b;

        public a(Type type, Executor executor) {
            this.a = type;
            this.b = executor;
        }

        @Override
        public jq0 adapt(jq0 jq0Var) {
            Executor executor = this.b;
            return executor == null ? jq0Var : new b(executor, jq0Var);
        }

        @Override
        public Type responseType() {
            return this.a;
        }
    }

    public static final class b implements jq0 {
        public final Executor b;
        public final jq0 c;

        public class a implements tq0 {
            public final tq0 b;

            public a(tq0 tq0Var) {
                this.b = tq0Var;
            }

            public final void c(tq0 tq0Var, Throwable th) {
                tq0Var.onFailure(b.this, th);
            }

            public final void d(tq0 tq0Var, gu8 gu8Var) {
                if (b.this.c.isCanceled()) {
                    tq0Var.onFailure(b.this, new IOException("Canceled"));
                } else {
                    tq0Var.onResponse(b.this, gu8Var);
                }
            }

            @Override
            public void onFailure(jq0 jq0Var, final Throwable th) {
                Executor executor = b.this.b;
                final tq0 tq0Var = this.b;
                executor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.c(tq0Var, th);
                    }
                });
            }

            @Override
            public void onResponse(jq0 jq0Var, final gu8 gu8Var) {
                Executor executor = b.this.b;
                final tq0 tq0Var = this.b;
                executor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.d(tq0Var, gu8Var);
                    }
                });
            }
        }

        public b(Executor executor, jq0 jq0Var) {
            this.b = executor;
            this.c = jq0Var;
        }

        @Override
        public void cancel() {
            this.c.cancel();
        }

        @Override
        public void enqueue(tq0 tq0Var) {
            Objects.requireNonNull(tq0Var, "callback == null");
            this.c.enqueue(new a(tq0Var));
        }

        @Override
        public gu8 execute() {
            return this.c.execute();
        }

        @Override
        public boolean isCanceled() {
            return this.c.isCanceled();
        }

        @Override
        public boolean isExecuted() {
            return this.c.isExecuted();
        }

        @Override
        public Request request() {
            return this.c.request();
        }

        @Override
        public jq0 clone() {
            return new b(this.b, this.c.clone());
        }
    }

    public i02(Executor executor) {
        this.a = executor;
    }

    @Override
    public lq0 get(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        if (lq0.a.getRawType(type) != jq0.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new a(ulb.g(0, (ParameterizedType) type), ulb.l(annotationArr, kp9.class) ? null : this.a);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}

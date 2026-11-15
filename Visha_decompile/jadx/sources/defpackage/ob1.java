package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import retrofit2.HttpException;

public final class ob1 extends lq0.a {

    public static final class a implements lq0 {
        public final Type a;

        public class C0430a implements tq0 {
            public final CompletableFuture b;

            public C0430a(CompletableFuture completableFuture) {
                this.b = completableFuture;
            }

            @Override
            public void onFailure(jq0 jq0Var, Throwable th) {
                this.b.completeExceptionally(th);
            }

            @Override
            public void onResponse(jq0 jq0Var, gu8 gu8Var) {
                if (gu8Var.e()) {
                    this.b.complete(gu8Var.a());
                } else {
                    this.b.completeExceptionally(new HttpException(gu8Var));
                }
            }
        }

        public a(Type type) {
            this.a = type;
        }

        @Override
        public CompletableFuture adapt(jq0 jq0Var) {
            b bVar = new b(jq0Var);
            jq0Var.enqueue(new C0430a(bVar));
            return bVar;
        }

        @Override
        public Type responseType() {
            return this.a;
        }
    }

    public static final class b extends CompletableFuture {
        public final jq0 b;

        public b(jq0 jq0Var) {
            this.b = jq0Var;
        }

        @Override
        public boolean cancel(boolean z) {
            if (z) {
                this.b.cancel();
            }
            return super.cancel(z);
        }
    }

    public static final class c implements lq0 {
        public final Type a;

        public class a implements tq0 {
            public final CompletableFuture b;

            public a(CompletableFuture completableFuture) {
                this.b = completableFuture;
            }

            @Override
            public void onFailure(jq0 jq0Var, Throwable th) {
                this.b.completeExceptionally(th);
            }

            @Override
            public void onResponse(jq0 jq0Var, gu8 gu8Var) {
                this.b.complete(gu8Var);
            }
        }

        public c(Type type) {
            this.a = type;
        }

        @Override
        public CompletableFuture adapt(jq0 jq0Var) {
            b bVar = new b(jq0Var);
            jq0Var.enqueue(new a(bVar));
            return bVar;
        }

        @Override
        public Type responseType() {
            return this.a;
        }
    }

    @Override
    public lq0 get(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        if (lq0.a.getRawType(type) != CompletableFuture.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
        }
        Type parameterUpperBound = lq0.a.getParameterUpperBound(0, (ParameterizedType) type);
        if (lq0.a.getRawType(parameterUpperBound) != gu8.class) {
            return new a(parameterUpperBound);
        }
        if (parameterUpperBound instanceof ParameterizedType) {
            return new c(lq0.a.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound));
        }
        throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
    }
}

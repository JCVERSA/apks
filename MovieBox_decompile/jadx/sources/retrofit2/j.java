package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;

final class j extends e.a {

    private static final class a implements e {

        private final Type f71094a;

        private class C0871a implements f {

            private final CompletableFuture f71095a;

            public C0871a(CompletableFuture completableFuture) {
                this.f71095a = completableFuture;
            }

            @Override
            public void a(d dVar, Throwable th2) {
                this.f71095a.completeExceptionally(th2);
            }

            @Override
            public void b(d dVar, j0 j0Var) {
                if (j0Var.e()) {
                    this.f71095a.complete(j0Var.a());
                } else {
                    this.f71095a.completeExceptionally(new HttpException(j0Var));
                }
            }
        }

        a(Type type) {
            this.f71094a = type;
        }

        @Override
        public Type a() {
            return this.f71094a;
        }

        @Override
        public CompletableFuture b(d dVar) {
            b bVar = new b(dVar);
            dVar.f(new C0871a(bVar));
            return bVar;
        }
    }

    private static final class b extends CompletableFuture {

        private final d f71097a;

        b(d dVar) {
            this.f71097a = dVar;
        }

        @Override
        public boolean cancel(boolean z10) {
            if (z10) {
                this.f71097a.cancel();
            }
            return super.cancel(z10);
        }
    }

    private static final class c implements e {

        private final Type f71098a;

        private class a implements f {

            private final CompletableFuture f71099a;

            public a(CompletableFuture completableFuture) {
                this.f71099a = completableFuture;
            }

            @Override
            public void a(d dVar, Throwable th2) {
                this.f71099a.completeExceptionally(th2);
            }

            @Override
            public void b(d dVar, j0 j0Var) {
                this.f71099a.complete(j0Var);
            }
        }

        c(Type type) {
            this.f71098a = type;
        }

        @Override
        public Type a() {
            return this.f71098a;
        }

        @Override
        public CompletableFuture b(d dVar) {
            b bVar = new b(dVar);
            dVar.f(new a(bVar));
            return bVar;
        }
    }

    j() {
    }

    @Override
    public e a(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (e.a.c(type) != g.a()) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
        }
        Type typeB = e.a.b(0, (ParameterizedType) type);
        if (e.a.c(typeB) != j0.class) {
            return new a(typeB);
        }
        if (typeB instanceof ParameterizedType) {
            return new c(e.a.b(0, (ParameterizedType) typeB));
        }
        throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
    }
}

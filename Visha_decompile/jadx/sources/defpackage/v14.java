package defpackage;

public final class v14 extends r14 {
    public final mc7 c;

    public static final class a implements pd7, f2a {
        public final d2a b;
        public rc2 c;

        public a(d2a d2aVar) {
            this.b = d2aVar;
        }

        @Override
        public void cancel() {
            this.c.dispose();
        }

        @Override
        public void onComplete() {
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override
        public void onNext(Object obj) {
            this.b.onNext(obj);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.c = rc2Var;
            this.b.onSubscribe(this);
        }

        @Override
        public void request(long j) {
        }
    }

    public v14(mc7 mc7Var) {
        this.c = mc7Var;
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.subscribe(new a(d2aVar));
    }
}

package defpackage;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

public final class s14 extends b96 {
    public final r14 b;
    public final long c;

    public static final class a implements y14, rc2 {
        public final k96 b;
        public final long c;
        public f2a d;
        public long e;
        public boolean f;

        public a(k96 k96Var, long j) {
            this.b = k96Var;
            this.c = j;
        }

        @Override
        public void dispose() {
            this.d.cancel();
            this.d = SubscriptionHelper.CANCELLED;
        }

        @Override
        public boolean isDisposed() {
            return this.d == SubscriptionHelper.CANCELLED;
        }

        @Override
        public void onComplete() {
            this.d = SubscriptionHelper.CANCELLED;
            if (this.f) {
                return;
            }
            this.f = true;
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            if (this.f) {
                yw8.s(th);
                return;
            }
            this.f = true;
            this.d = SubscriptionHelper.CANCELLED;
            this.b.onError(th);
        }

        @Override
        public void onNext(Object obj) {
            if (this.f) {
                return;
            }
            long j = this.e;
            if (j != this.c) {
                this.e = j + 1;
                return;
            }
            this.f = true;
            this.d.cancel();
            this.d = SubscriptionHelper.CANCELLED;
            this.b.onSuccess(obj);
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.d, f2aVar)) {
                this.d = f2aVar;
                this.b.onSubscribe(this);
                f2aVar.request(Long.MAX_VALUE);
            }
        }
    }

    public s14(r14 r14Var, long j) {
        this.b = r14Var;
        this.c = j;
    }

    @Override
    public void j(k96 k96Var) {
        this.b.p(new a(k96Var, this.c));
    }
}

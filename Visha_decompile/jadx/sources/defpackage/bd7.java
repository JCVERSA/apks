package defpackage;

public final class bd7 extends n3 {
    public final t74 c;

    public static final class a extends id0 {
        public final t74 g;

        public a(pd7 pd7Var, t74 t74Var) {
            super(pd7Var);
            this.g = t74Var;
        }

        @Override
        public void onNext(Object obj) {
            if (this.e) {
                return;
            }
            if (this.f != 0) {
                this.b.onNext(null);
                return;
            }
            try {
                this.b.onNext(ac7.d(this.g.apply(obj), "The mapper function returned a null value."));
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override
        public Object poll() {
            Object objPoll = this.d.poll();
            if (objPoll != null) {
                return ac7.d(this.g.apply(objPoll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override
        public int requestFusion(int i) {
            return d(i);
        }
    }

    public bd7(ld7 ld7Var, t74 t74Var) {
        super(ld7Var);
        this.c = t74Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var, this.c));
    }
}

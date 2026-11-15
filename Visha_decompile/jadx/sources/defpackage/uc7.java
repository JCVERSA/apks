package defpackage;

public final class uc7 extends n3 {
    public final ie8 c;

    public static final class a extends id0 {
        public final ie8 g;

        public a(pd7 pd7Var, ie8 ie8Var) {
            super(pd7Var);
            this.g = ie8Var;
        }

        @Override
        public void onNext(Object obj) {
            if (this.f != 0) {
                this.b.onNext(null);
                return;
            }
            try {
                if (this.g.test(obj)) {
                    this.b.onNext(obj);
                }
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override
        public Object poll() {
            Object objPoll;
            do {
                objPoll = this.d.poll();
                if (objPoll == null) {
                    break;
                }
            } while (!this.g.test(objPoll));
            return objPoll;
        }

        @Override
        public int requestFusion(int i) {
            return d(i);
        }
    }

    public uc7(ld7 ld7Var, ie8 ie8Var) {
        super(ld7Var);
        this.c = ie8Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var, this.c));
    }
}

package defpackage;

public final class vc7 extends mc7 {
    public final Object[] b;

    public static final class a extends jd0 {
        public final pd7 b;
        public final Object[] c;
        public int d;
        public boolean e;
        public volatile boolean f;

        public a(pd7 pd7Var, Object[] objArr) {
            this.b = pd7Var;
            this.c = objArr;
        }

        public void a() {
            Object[] objArr = this.c;
            int length = objArr.length;
            for (int i = 0; i < length && !isDisposed(); i++) {
                Object obj = objArr[i];
                if (obj == null) {
                    this.b.onError(new NullPointerException("The element at index " + i + " is null"));
                    return;
                }
                this.b.onNext(obj);
            }
            if (isDisposed()) {
                return;
            }
            this.b.onComplete();
        }

        @Override
        public void clear() {
            this.d = this.c.length;
        }

        @Override
        public void dispose() {
            this.f = true;
        }

        @Override
        public boolean isDisposed() {
            return this.f;
        }

        @Override
        public boolean isEmpty() {
            return this.d == this.c.length;
        }

        @Override
        public Object poll() {
            int i = this.d;
            Object[] objArr = this.c;
            if (i == objArr.length) {
                return null;
            }
            this.d = i + 1;
            return ac7.d(objArr[i], "The array element is null");
        }

        @Override
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.e = true;
            return 1;
        }
    }

    public vc7(Object[] objArr) {
        this.b = objArr;
    }

    @Override
    public void c0(pd7 pd7Var) {
        a aVar = new a(pd7Var, this.b);
        pd7Var.onSubscribe(aVar);
        if (aVar.e) {
            return;
        }
        aVar.a();
    }
}

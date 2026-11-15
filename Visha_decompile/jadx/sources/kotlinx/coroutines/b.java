package kotlinx.coroutines;

import defpackage.e74;
import defpackage.qt1;
import defpackage.w17;

public interface b extends w17 {

    public static final class a implements b {
        public final e74 b;

        public a(e74 e74Var) {
            this.b = e74Var;
        }

        @Override
        public void a(Throwable th) {
            this.b.invoke(th);
        }

        public String toString() {
            return "CancelHandler.UserSupplied[" + qt1.a(this.b) + '@' + qt1.b(this) + ']';
        }
    }

    void a(Throwable th);
}

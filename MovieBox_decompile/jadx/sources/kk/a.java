package kk;

import android.content.Context;

public interface a {

    public static final class C0793a {
        public static void a(a aVar, boolean z10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkFissionConfig");
            }
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            aVar.i(z10);
        }
    }

    void a(String str);

    void b(boolean z10);

    void c(boolean z10);

    String d();

    void e(Context context);

    boolean enable();

    void f(int i10);

    boolean g();

    String h();

    void i(boolean z10);
}

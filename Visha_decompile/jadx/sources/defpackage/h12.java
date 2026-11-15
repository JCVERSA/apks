package defpackage;

import kotlinx.coroutines.DefaultExecutor;
import kotlinx.coroutines.e;

public abstract class h12 {
    public static final boolean a = naa.f("kotlinx.coroutines.main.delay", false);
    public static final e b = b();

    public static final e a() {
        return b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final e b() {
        if (!a) {
            return DefaultExecutor.INSTANCE;
        }
        rx5 rx5VarC = mc2.c();
        return (ux5.c(rx5VarC) || !(rx5VarC instanceof e)) ? DefaultExecutor.INSTANCE : (e) rx5VarC;
    }
}

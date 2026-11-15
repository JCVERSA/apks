package defpackage;

import kotlinx.coroutines.c;

public abstract class rx5 extends c {
    public abstract rx5 b();

    public final String k() {
        rx5 rx5VarB;
        rx5 rx5VarC = mc2.c();
        if (this == rx5VarC) {
            return "Dispatchers.Main";
        }
        try {
            rx5VarB = rx5VarC.b();
        } catch (UnsupportedOperationException unused) {
            rx5VarB = null;
        }
        if (this == rx5VarB) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override
    public c limitedParallelism(int i, String str) {
        bl5.a(i);
        return bl5.b(this, str);
    }
}

package defpackage;

import com.google.android.gms.internal.ads.g8;
import java.util.Set;

public final class h7i extends f7i {
    public h7i(i7i i7iVar) {
        super(null);
    }

    @Override
    public final int a(g8 g8Var) {
        int i;
        synchronized (g8Var) {
            i = g8Var.c - 1;
            g8Var.c = i;
        }
        return i;
    }

    @Override
    public final void b(g8 g8Var, Set set, Set set2) {
        synchronized (g8Var) {
            try {
                if (g8Var.b == null) {
                    g8Var.b = set2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

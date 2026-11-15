package defpackage;

import com.google.android.gms.internal.ads.m9;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;

public final class oji {
    public final Class a;
    public List b = new ArrayList();
    public nhi c;

    public oji(Class cls, rji rjiVar) {
        this.a = cls;
    }

    public final oji a(b9i b9iVar, m9 m9Var) throws GeneralSecurityException {
        d(b9iVar, m9Var, false);
        return this;
    }

    public final oji b(b9i b9iVar, m9 m9Var) throws GeneralSecurityException {
        d(b9iVar, m9Var, true);
        return this;
    }

    public final sji c() {
        List list = this.b;
        if (list == null) {
            throw new IllegalStateException("build cannot be called twice");
        }
        sji sjiVar = new sji(new qji(list, this.c), this.a, null);
        this.b = null;
        return sjiVar;
    }

    public final oji d(b9i b9iVar, m9 m9Var, boolean z) throws GeneralSecurityException {
        if (this.b == null) {
            throw new IllegalStateException("addEntry cannot be called after build");
        }
        if (m9Var.k0() != 3) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        pji pjiVar = new pji(d9i.b, m9Var.b0(), b9iVar, z, null);
        this.b.add(pjiVar);
        if (z) {
            if (this.c != null) {
                throw new IllegalStateException("you cannot set two primary primitives");
            }
            this.c = pjiVar;
        }
        return this;
    }
}

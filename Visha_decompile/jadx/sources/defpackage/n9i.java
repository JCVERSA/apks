package defpackage;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class n9i {
    public static final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public static m9i a(String str) throws GeneralSecurityException {
        Iterator it = a.iterator();
        if (!it.hasNext()) {
            throw new GeneralSecurityException("No KMS client does support: ".concat(String.valueOf(str)));
        }
        ubc.a(it.next());
        throw null;
    }
}

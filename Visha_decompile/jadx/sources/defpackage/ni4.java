package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class ni4 {
    public static volatile ni4 b;
    public final Set a = new HashSet();

    public static ni4 a() {
        ni4 ni4Var = b;
        if (ni4Var == null) {
            synchronized (ni4.class) {
                try {
                    ni4Var = b;
                    if (ni4Var == null) {
                        ni4Var = new ni4();
                        b = ni4Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return ni4Var;
    }

    public Set b() {
        Set setUnmodifiableSet;
        synchronized (this.a) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.a);
        }
        return setUnmodifiableSet;
    }
}

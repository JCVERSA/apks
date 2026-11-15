package zc;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class d {

    private static volatile d f76771b;

    private final Set f76772a = new HashSet();

    d() {
    }

    public static d a() {
        d dVar = f76771b;
        if (dVar == null) {
            synchronized (d.class) {
                try {
                    dVar = f76771b;
                    if (dVar == null) {
                        dVar = new d();
                        f76771b = dVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return dVar;
    }

    Set b() {
        Set setUnmodifiableSet;
        synchronized (this.f76772a) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.f76772a);
        }
        return setUnmodifiableSet;
    }
}

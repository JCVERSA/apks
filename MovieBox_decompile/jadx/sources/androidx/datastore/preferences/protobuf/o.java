package androidx.datastore.preferences.protobuf;

import java.util.Collections;
import java.util.Map;
import okhttp3.internal.http2.Settings;

public class o {

    private static volatile o f8562b;

    static final o f8563c = new o(true);

    private final Map f8564a = Collections.emptyMap();

    private static final class a {

        private final Object f8565a;

        private final int f8566b;

        a(Object obj, int i10) {
            this.f8565a = obj;
            this.f8566b = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f8565a == aVar.f8565a && this.f8566b == aVar.f8566b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f8565a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f8566b;
        }
    }

    o(boolean z10) {
    }

    public static o b() {
        if (x0.f8619d) {
            return f8563c;
        }
        o oVarA = f8562b;
        if (oVarA == null) {
            synchronized (o.class) {
                try {
                    oVarA = f8562b;
                    if (oVarA == null) {
                        oVarA = n.a();
                        f8562b = oVarA;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oVarA;
    }

    public GeneratedMessageLite.d a(n0 n0Var, int i10) {
        android.support.v4.media.session.c.a(this.f8564a.get(new a(n0Var, i10)));
        return null;
    }
}

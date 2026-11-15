package defpackage;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class qe1 {
    public static final a a = new a(null);
    public static volatile se1 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final se1 a(Context context) {
            se1 se1Var;
            y45.j(context, "context");
            se1 se1Var2 = qe1.b;
            if (se1Var2 != null) {
                return se1Var2;
            }
            synchronized (this) {
                se1Var = qe1.b;
                if (se1Var == null) {
                    se1Var = new se1(context);
                    qe1.b = se1Var;
                }
            }
            return se1Var;
        }

        public a() {
        }
    }
}

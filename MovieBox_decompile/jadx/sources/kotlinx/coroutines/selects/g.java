package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.internal.z;

public abstract class g {

    private static final Function3 f64991a = a.f64997a;

    private static final z f64992b = new z("STATE_REG");

    private static final z f64993c = new z("STATE_COMPLETED");

    private static final z f64994d = new z("STATE_CANCELLED");

    private static final z f64995e = new z("NO_RESULT");

    private static final z f64996f = new z("PARAM_CLAUSE_0");

    static final class a implements Function3 {

        public static final a f64997a = new a();

        a() {
        }

        @Override
        public final Void invoke(Object obj, Object obj2, Object obj3) {
            return null;
        }
    }
}

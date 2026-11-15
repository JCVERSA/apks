package kotlinx.coroutines;

public abstract class x1 {

    private static final kotlinx.coroutines.internal.z f65036a = new kotlinx.coroutines.internal.z("COMPLETING_ALREADY");

    public static final kotlinx.coroutines.internal.z f65037b = new kotlinx.coroutines.internal.z("COMPLETING_WAITING_CHILDREN");

    private static final kotlinx.coroutines.internal.z f65038c = new kotlinx.coroutines.internal.z("COMPLETING_RETRY");

    private static final kotlinx.coroutines.internal.z f65039d = new kotlinx.coroutines.internal.z("TOO_LATE_TO_CANCEL");

    private static final kotlinx.coroutines.internal.z f65040e = new kotlinx.coroutines.internal.z("SEALED");

    private static final d1 f65041f = new d1(false);

    private static final d1 f65042g = new d1(true);

    public static final Object g(Object obj) {
        return obj instanceof p1 ? new q1((p1) obj) : obj;
    }

    public static final Object h(Object obj) {
        p1 p1Var;
        q1 q1Var = obj instanceof q1 ? (q1) obj : null;
        return (q1Var == null || (p1Var = q1Var.f64941a) == null) ? obj : p1Var;
    }
}

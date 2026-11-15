package kotlin;

import defpackage.c74;
import defpackage.hb0;
import defpackage.y45;
import defpackage.yi5;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class b {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[LazyThreadSafetyMode.values().length];
            try {
                iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static yi5 a(c74 c74Var) {
        y45.j(c74Var, "initializer");
        DefaultConstructorMarker defaultConstructorMarker = null;
        return new SynchronizedLazyImpl(c74Var, defaultConstructorMarker, 2, defaultConstructorMarker);
    }

    public static yi5 b(LazyThreadSafetyMode lazyThreadSafetyMode, c74 c74Var) {
        y45.j(lazyThreadSafetyMode, hb0.KEY_NAME_MODE);
        y45.j(c74Var, "initializer");
        int i = a.a[lazyThreadSafetyMode.ordinal()];
        int i2 = 2;
        if (i == 1) {
            DefaultConstructorMarker defaultConstructorMarker = null;
            return new SynchronizedLazyImpl(c74Var, defaultConstructorMarker, i2, defaultConstructorMarker);
        }
        if (i == 2) {
            return new SafePublicationLazyImpl(c74Var);
        }
        if (i == 3) {
            return new UnsafeLazyImpl(c74Var);
        }
        throw new NoWhenBranchMatchedException();
    }
}

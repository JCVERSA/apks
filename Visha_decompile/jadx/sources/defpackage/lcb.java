package defpackage;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KVariance;

public abstract class lcb implements hf5 {
    public static final a b = new a(null);

    public static final class a {

        public class C0421a {
            public static final int[] a;

            static {
                int[] iArr = new int[KVariance.values().length];
                try {
                    iArr[KVariance.INVARIANT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[KVariance.IN.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[KVariance.OUT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(hf5 hf5Var) {
            y45.j(hf5Var, "typeParameter");
            StringBuilder sb = new StringBuilder();
            int i = C0421a.a[hf5Var.h().ordinal()];
            if (i == 1) {
                zfb zfbVar = zfb.a;
            } else if (i == 2) {
                sb.append("in ");
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                sb.append("out ");
            }
            sb.append(hf5Var.getName());
            return sb.toString();
        }

        public a() {
        }
    }
}

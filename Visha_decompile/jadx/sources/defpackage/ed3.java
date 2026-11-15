package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

public interface ed3 {
    public static final ed3 a = new a();

    public static class a implements ed3 {
        public static void c(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = "unresolvedSuperClasses";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1";
            if (i != 2) {
                objArr[2] = "reportIncompleteHierarchy";
            } else {
                objArr[2] = "reportCannotInferVisibility";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public void a(CallableMemberDescriptor callableMemberDescriptor) {
            if (callableMemberDescriptor == null) {
                c(2);
            }
        }

        @Override
        public void b(qw0 qw0Var, List list) {
            if (qw0Var == null) {
                c(0);
            }
            if (list == null) {
                c(1);
            }
        }
    }

    void a(CallableMemberDescriptor callableMemberDescriptor);

    void b(qw0 qw0Var, List list);
}

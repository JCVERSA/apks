package defpackage;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;

public abstract class v82 {

    public static class a extends q17 {
        public final ed3 a;
        public final Set b;
        public final boolean c;

        public class C0452a implements e74 {
            public C0452a() {
            }

            private static void a(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "descriptor", "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1", "invoke"));
            }

            @Override
            public zfb invoke(CallableMemberDescriptor callableMemberDescriptor) {
                if (callableMemberDescriptor == null) {
                    a(0);
                }
                a.this.a.a(callableMemberDescriptor);
                return zfb.a;
            }
        }

        public a(ed3 ed3Var, Set set, boolean z) {
            this.a = ed3Var;
            this.b = set;
            this.c = z;
        }

        private static void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "fromSuper";
            } else if (i == 2) {
                objArr[0] = "fromCurrent";
            } else if (i == 3) {
                objArr[0] = "member";
            } else if (i != 4) {
                objArr[0] = "fakeOverride";
            } else {
                objArr[0] = "overridden";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1";
            if (i == 1 || i == 2) {
                objArr[2] = "conflict";
            } else if (i == 3 || i == 4) {
                objArr[2] = "setOverriddenDescriptors";
            } else {
                objArr[2] = "addFakeOverride";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public void a(CallableMemberDescriptor callableMemberDescriptor) {
            if (callableMemberDescriptor == null) {
                f(0);
            }
            OverridingUtil.K(callableMemberDescriptor, new C0452a());
            this.b.add(callableMemberDescriptor);
        }

        @Override
        public void d(CallableMemberDescriptor callableMemberDescriptor, Collection collection) {
            if (callableMemberDescriptor == null) {
                f(3);
            }
            if (collection == null) {
                f(4);
            }
            if (!this.c || callableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                super.d(callableMemberDescriptor, collection);
            }
        }

        @Override
        public void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
            if (callableMemberDescriptor == null) {
                f(1);
            }
            if (callableMemberDescriptor2 == null) {
                f(2);
            }
        }
    }

    public static void a(int i) {
        String str = i != 18 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 18 ? 3 : 2];
        switch (i) {
            case 1:
            case 7:
            case 13:
                objArr[0] = "membersFromSupertypes";
                break;
            case 2:
            case 8:
            case 14:
                objArr[0] = "membersFromCurrent";
                break;
            case 3:
            case 9:
            case 15:
                objArr[0] = "classDescriptor";
                break;
            case 4:
            case 10:
            case 16:
                objArr[0] = "errorReporter";
                break;
            case 5:
            case 11:
            case 17:
                objArr[0] = "overridingUtil";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "name";
                break;
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
                break;
            case 20:
                objArr[0] = "annotationClass";
                break;
        }
        if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
        } else {
            objArr[1] = "resolveOverrides";
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "resolveOverridesForStaticMembers";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "resolveOverrides";
                break;
            case 18:
                break;
            case 19:
            case 20:
                objArr[2] = "getAnnotationParameterByName";
                break;
            default:
                objArr[2] = "resolveOverridesForNonStaticMembers";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i == 18) {
            throw new IllegalStateException(str2);
        }
    }

    public static h b(by6 by6Var, qw0 qw0Var) {
        if (by6Var == null) {
            a(19);
        }
        if (qw0Var == null) {
            a(20);
        }
        Collection collectionN = qw0Var.n();
        if (collectionN.size() != 1) {
            return null;
        }
        for (h hVar : ((b) collectionN.iterator().next()).f()) {
            if (hVar.getName().equals(by6Var)) {
                return hVar;
            }
        }
        return null;
    }

    public static Collection c(by6 by6Var, Collection collection, Collection collection2, qw0 qw0Var, ed3 ed3Var, OverridingUtil overridingUtil, boolean z) {
        if (by6Var == null) {
            a(12);
        }
        if (collection == null) {
            a(13);
        }
        if (collection2 == null) {
            a(14);
        }
        if (qw0Var == null) {
            a(15);
        }
        if (ed3Var == null) {
            a(16);
        }
        if (overridingUtil == null) {
            a(17);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        overridingUtil.v(by6Var, collection, collection2, qw0Var, new a(ed3Var, linkedHashSet, z));
        return linkedHashSet;
    }

    public static Collection d(by6 by6Var, Collection collection, Collection collection2, qw0 qw0Var, ed3 ed3Var, OverridingUtil overridingUtil) {
        if (by6Var == null) {
            a(0);
        }
        if (collection == null) {
            a(1);
        }
        if (collection2 == null) {
            a(2);
        }
        if (qw0Var == null) {
            a(3);
        }
        if (ed3Var == null) {
            a(4);
        }
        if (overridingUtil == null) {
            a(5);
        }
        return c(by6Var, collection, collection2, qw0Var, ed3Var, overridingUtil, false);
    }

    public static Collection e(by6 by6Var, Collection collection, Collection collection2, qw0 qw0Var, ed3 ed3Var, OverridingUtil overridingUtil) {
        if (by6Var == null) {
            a(6);
        }
        if (collection == null) {
            a(7);
        }
        if (collection2 == null) {
            a(8);
        }
        if (qw0Var == null) {
            a(9);
        }
        if (ed3Var == null) {
            a(10);
        }
        if (overridingUtil == null) {
            a(11);
        }
        return c(by6Var, collection, collection2, qw0Var, ed3Var, overridingUtil, true);
    }
}

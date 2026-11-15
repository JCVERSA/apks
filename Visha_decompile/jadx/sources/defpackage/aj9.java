package defpackage;

import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

public interface aj9 {
    public static final aj9 a = new a();

    public static class a implements aj9 {
        public static void c(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                    objArr[0] = "owner";
                    break;
                case 2:
                    objArr[0] = "returnType";
                    break;
                case 3:
                    objArr[0] = "valueParameters";
                    break;
                case 4:
                    objArr[0] = "typeParameters";
                    break;
                case 5:
                    objArr[0] = "descriptor";
                    break;
                case 6:
                    objArr[0] = "signatureErrors";
                    break;
                default:
                    objArr[0] = "method";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1";
            if (i == 5 || i == 6) {
                objArr[2] = "reportSignatureErrors";
            } else {
                objArr[2] = "resolvePropagatedSignature";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public void a(CallableMemberDescriptor callableMemberDescriptor, List list) {
            if (callableMemberDescriptor == null) {
                c(5);
            }
            if (list == null) {
                c(6);
            }
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override
        public b b(s75 s75Var, qw0 qw0Var, eh5 eh5Var, eh5 eh5Var2, List list, List list2) {
            if (s75Var == null) {
                c(0);
            }
            if (qw0Var == null) {
                c(1);
            }
            if (eh5Var == null) {
                c(2);
            }
            if (list == null) {
                c(3);
            }
            if (list2 == null) {
                c(4);
            }
            return new b(eh5Var, eh5Var2, list, list2, Collections.emptyList(), false);
        }
    }

    public static class b {
        public final eh5 a;
        public final eh5 b;
        public final List c;
        public final List d;
        public final List e;
        public final boolean f;

        public b(eh5 eh5Var, eh5 eh5Var2, List list, List list2, List list3, boolean z) {
            if (eh5Var == null) {
                a(0);
            }
            if (list == null) {
                a(1);
            }
            if (list2 == null) {
                a(2);
            }
            if (list3 == null) {
                a(3);
            }
            this.a = eh5Var;
            this.b = eh5Var2;
            this.c = list;
            this.d = list2;
            this.e = list3;
            this.f = z;
        }

        public static void a(int i) {
            String str = (i == 4 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 4 || i == 5 || i == 6 || i == 7) ? 2 : 3];
            switch (i) {
                case 1:
                    objArr[0] = "valueParameters";
                    break;
                case 2:
                    objArr[0] = "typeParameters";
                    break;
                case 3:
                    objArr[0] = "signatureErrors";
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
                    break;
                default:
                    objArr[0] = "returnType";
                    break;
            }
            if (i == 4) {
                objArr[1] = "getReturnType";
            } else if (i == 5) {
                objArr[1] = "getValueParameters";
            } else if (i == 6) {
                objArr[1] = "getTypeParameters";
            } else if (i != 7) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
            } else {
                objArr[1] = "getErrors";
            }
            if (i != 4 && i != 5 && i != 6 && i != 7) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i != 4 && i != 5 && i != 6 && i != 7) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public List b() {
            List list = this.e;
            if (list == null) {
                a(7);
            }
            return list;
        }

        public eh5 c() {
            return this.b;
        }

        public eh5 d() {
            eh5 eh5Var = this.a;
            if (eh5Var == null) {
                a(4);
            }
            return eh5Var;
        }

        public List e() {
            List list = this.d;
            if (list == null) {
                a(6);
            }
            return list;
        }

        public List f() {
            List list = this.c;
            if (list == null) {
                a(5);
            }
            return list;
        }

        public boolean g() {
            return this.f;
        }
    }

    void a(CallableMemberDescriptor callableMemberDescriptor, List list);

    b b(s75 s75Var, qw0 qw0Var, eh5 eh5Var, eh5 eh5Var2, List list, List list2);
}

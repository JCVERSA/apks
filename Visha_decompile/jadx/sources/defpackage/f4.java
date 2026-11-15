package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class f4 extends au1 implements hcb {
    public final Variance f;
    public final boolean g;
    public final int h;
    public final x17 i;
    public final x17 j;
    public final vx9 k;

    public class a implements c74 {
        public final vx9 b;
        public final t6a c;

        public a(vx9 vx9Var, t6a t6aVar) {
            this.b = vx9Var;
            this.c = t6aVar;
        }

        @Override
        public sbb invoke() {
            return new c(f4.this, this.b, this.c);
        }
    }

    public class b implements c74 {
        public final by6 b;

        public class a implements c74 {
            public a() {
            }

            @Override
            public MemberScope invoke() {
                return TypeIntersectionScope.j("Scope for type parameter " + b.this.b.b(), f4.this.getUpperBounds());
            }
        }

        public b(by6 by6Var) {
            this.b = by6Var;
        }

        @Override
        public sm9 invoke() {
            return KotlinTypeFactory.k(j.c.h(), f4.this.m(), Collections.emptyList(), false, new LazyScopeAdapter(new a()));
        }
    }

    public class c extends AbstractTypeConstructor {
        public final t6a d;
        public final f4 e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(f4 f4Var, vx9 vx9Var, t6a t6aVar) {
            super(vx9Var);
            if (vx9Var == null) {
                u(0);
            }
            this.e = f4Var;
            this.d = t6aVar;
        }

        private static void u(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 8) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
                    break;
                case 6:
                    objArr[0] = "type";
                    break;
                case 7:
                    objArr[0] = "supertypes";
                    break;
                case 9:
                    objArr[0] = "classifier";
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (i == 1) {
                objArr[1] = "computeSupertypes";
            } else if (i == 2) {
                objArr[1] = "getParameters";
            } else if (i == 3) {
                objArr[1] = "getDeclarationDescriptor";
            } else if (i == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i == 5) {
                objArr[1] = "getSupertypeLoopChecker";
            } else if (i != 8) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
            } else {
                objArr[1] = "processSupertypesWithoutCycles";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    break;
                case 6:
                    objArr[2] = "reportSupertypeLoopError";
                    break;
                case 7:
                    objArr[2] = "processSupertypesWithoutCycles";
                    break;
                case 9:
                    objArr[2] = "isSameClassifier";
                    break;
                default:
                    objArr[2] = MethodDecl.initName;
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5 && i != 8) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override
        public px0 c() {
            f4 f4Var = this.e;
            if (f4Var == null) {
                u(3);
            }
            return f4Var;
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public boolean g(px0 px0Var) {
            if (px0Var == null) {
                u(9);
            }
            return (px0Var instanceof hcb) && DescriptorEquivalenceForOverrides.a.h(this.e, (hcb) px0Var, true);
        }

        @Override
        public List getParameters() {
            List listEmptyList = Collections.emptyList();
            if (listEmptyList == null) {
                u(2);
            }
            return listEmptyList;
        }

        @Override
        public Collection j() {
            List listG0 = this.e.G0();
            if (listG0 == null) {
                u(1);
            }
            return listG0;
        }

        @Override
        public eh5 l() {
            return id3.d(ErrorTypeKind.CYCLIC_UPPER_BOUNDS, new String[0]);
        }

        @Override
        public d o() {
            d dVarJ = DescriptorUtilsKt.j(this.e);
            if (dVarJ == null) {
                u(4);
            }
            return dVarJ;
        }

        @Override
        public t6a p() {
            t6a t6aVar = this.d;
            if (t6aVar == null) {
                u(5);
            }
            return t6aVar;
        }

        @Override
        public List r(List list) {
            if (list == null) {
                u(7);
            }
            List listC0 = this.e.C0(list);
            if (listC0 == null) {
                u(8);
            }
            return listC0;
        }

        @Override
        public void t(eh5 eh5Var) {
            if (eh5Var == null) {
                u(6);
            }
            this.e.F0(eh5Var);
        }

        public String toString() {
            return this.e.getName().toString();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f4(vx9 vx9Var, xt1 xt1Var, md mdVar, by6 by6Var, Variance variance, boolean z, int i, yt9 yt9Var, t6a t6aVar) {
        super(xt1Var, mdVar, by6Var, yt9Var);
        if (vx9Var == null) {
            Q(0);
        }
        if (xt1Var == null) {
            Q(1);
        }
        if (mdVar == null) {
            Q(2);
        }
        if (by6Var == null) {
            Q(3);
        }
        if (variance == null) {
            Q(4);
        }
        if (yt9Var == null) {
            Q(5);
        }
        if (t6aVar == null) {
            Q(6);
        }
        this.f = variance;
        this.g = z;
        this.h = i;
        this.i = vx9Var.c(new a(vx9Var, t6aVar));
        this.j = vx9Var.c(new b(by6Var));
        this.k = vx9Var;
    }

    private static void Q(int i) {
        String str;
        int i2;
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                i2 = 2;
                break;
            case 12:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 12:
                objArr[0] = "bounds";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 7:
                objArr[1] = "getVariance";
                break;
            case 8:
                objArr[1] = "getUpperBounds";
                break;
            case 9:
                objArr[1] = "getTypeConstructor";
                break;
            case 10:
                objArr[1] = "getDefaultType";
                break;
            case 11:
                objArr[1] = "getOriginal";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 13:
                objArr[1] = "processBoundsWithoutCycles";
                break;
            case 14:
                objArr[1] = "getStorageManager";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                break;
            case 12:
                objArr[2] = "processBoundsWithoutCycles";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                throw new IllegalStateException(str2);
            case 12:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override
    public boolean A() {
        return false;
    }

    public List C0(List list) {
        if (list == null) {
            Q(12);
        }
        if (list == null) {
            Q(13);
        }
        return list;
    }

    public abstract void F0(eh5 eh5Var);

    public abstract List G0();

    @Override
    public vx9 a0() {
        vx9 vx9Var = this.k;
        if (vx9Var == null) {
            Q(14);
        }
        return vx9Var;
    }

    @Override
    public int getIndex() {
        return this.h;
    }

    @Override
    public List getUpperBounds() {
        List listK = ((c) m()).k();
        if (listK == null) {
            Q(8);
        }
        return listK;
    }

    @Override
    public Variance h() {
        Variance variance = this.f;
        if (variance == null) {
            Q(7);
        }
        return variance;
    }

    @Override
    public final sbb m() {
        sbb sbbVar = (sbb) this.i.invoke();
        if (sbbVar == null) {
            Q(9);
        }
        return sbbVar;
    }

    @Override
    public sm9 q() {
        sm9 sm9Var = (sm9) this.j.invoke();
        if (sm9Var == null) {
            Q(10);
        }
        return sm9Var;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.m(this, obj);
    }

    @Override
    public boolean u() {
        return this.g;
    }

    @Override
    public hcb a() {
        hcb hcbVar = (hcb) super.a();
        if (hcbVar == null) {
            Q(11);
        }
        return hcbVar;
    }
}

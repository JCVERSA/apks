package kotlin.reflect.jvm.internal.impl.resolve;

import defpackage.e74;
import defpackage.ebb;
import defpackage.eh5;
import defpackage.hcb;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.ti8;
import defpackage.xt1;
import defpackage.y82;
import defpackage.zfb;
import java.util.Comparator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.renderer.AnnotationArgumentsRenderingPolicy;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererModifier;
import kotlin.reflect.jvm.internal.impl.renderer.b;

public class MemberComparator implements Comparator<xt1> {
    static final boolean $assertionsDisabled = false;
    public static final MemberComparator INSTANCE = new MemberComparator();
    private static final DescriptorRenderer RENDERER = DescriptorRenderer.a.b(new a());

    public static class NameAndTypeMemberComparator implements Comparator<xt1> {
        public static final NameAndTypeMemberComparator INSTANCE = new NameAndTypeMemberComparator();

        private NameAndTypeMemberComparator() {
        }

        public static Integer compareInternal(xt1 xt1Var, xt1 xt1Var2) {
            int declarationPriority = getDeclarationPriority(xt1Var2) - getDeclarationPriority(xt1Var);
            if (declarationPriority != 0) {
                return Integer.valueOf(declarationPriority);
            }
            if (y82.B(xt1Var) && y82.B(xt1Var2)) {
                return 0;
            }
            int iCompareTo = xt1Var.getName().compareTo(xt1Var2.getName());
            if (iCompareTo != 0) {
                return Integer.valueOf(iCompareTo);
            }
            return null;
        }

        private static int getDeclarationPriority(xt1 xt1Var) {
            if (y82.B(xt1Var)) {
                return 8;
            }
            if (xt1Var instanceof c) {
                return 7;
            }
            if (xt1Var instanceof ti8) {
                return ((ti8) xt1Var).b0() == null ? 6 : 5;
            }
            if (xt1Var instanceof e) {
                return ((e) xt1Var).b0() == null ? 4 : 3;
            }
            if (xt1Var instanceof qw0) {
                return 2;
            }
            return xt1Var instanceof ebb ? 1 : 0;
        }

        @Override
        public int compare(xt1 xt1Var, xt1 xt1Var2) {
            Integer numCompareInternal = compareInternal(xt1Var, xt1Var2);
            if (numCompareInternal != null) {
                return numCompareInternal.intValue();
            }
            return 0;
        }
    }

    public static class a implements e74 {
        @Override
        public zfb invoke(b bVar) {
            bVar.l(false);
            bVar.h(true);
            bVar.p(AnnotationArgumentsRenderingPolicy.UNLESS_EMPTY);
            bVar.g(DescriptorRendererModifier.ALL);
            return zfb.a;
        }
    }

    private MemberComparator() {
    }

    @Override
    public int compare(xt1 xt1Var, xt1 xt1Var2) {
        Integer numCompareInternal = NameAndTypeMemberComparator.compareInternal(xt1Var, xt1Var2);
        if (numCompareInternal != null) {
            return numCompareInternal.intValue();
        }
        if ((xt1Var instanceof ebb) && (xt1Var2 instanceof ebb)) {
            DescriptorRenderer descriptorRenderer = RENDERER;
            int iCompareTo = descriptorRenderer.y(((ebb) xt1Var).w0()).compareTo(descriptorRenderer.y(((ebb) xt1Var2).w0()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        } else if ((xt1Var instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) && (xt1Var2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) xt1Var;
            kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) xt1Var2;
            ro8 ro8VarB0 = aVar.b0();
            ro8 ro8VarB1 = aVar2.b0();
            if (ro8VarB0 != null) {
                DescriptorRenderer descriptorRenderer2 = RENDERER;
                int iCompareTo2 = descriptorRenderer2.y(ro8VarB0.getType()).compareTo(descriptorRenderer2.y(ro8VarB1.getType()));
                if (iCompareTo2 != 0) {
                    return iCompareTo2;
                }
            }
            List listF = aVar.f();
            List listF2 = aVar2.f();
            for (int i = 0; i < Math.min(listF.size(), listF2.size()); i++) {
                DescriptorRenderer descriptorRenderer3 = RENDERER;
                int iCompareTo3 = descriptorRenderer3.y(((h) listF.get(i)).getType()).compareTo(descriptorRenderer3.y(((h) listF2.get(i)).getType()));
                if (iCompareTo3 != 0) {
                    return iCompareTo3;
                }
            }
            int size = listF.size() - listF2.size();
            if (size != 0) {
                return size;
            }
            List typeParameters = aVar.getTypeParameters();
            List typeParameters2 = aVar2.getTypeParameters();
            for (int i2 = 0; i2 < Math.min(typeParameters.size(), typeParameters2.size()); i2++) {
                List upperBounds = ((hcb) typeParameters.get(i2)).getUpperBounds();
                List upperBounds2 = ((hcb) typeParameters2.get(i2)).getUpperBounds();
                int size2 = upperBounds.size() - upperBounds2.size();
                if (size2 != 0) {
                    return size2;
                }
                for (int i3 = 0; i3 < upperBounds.size(); i3++) {
                    DescriptorRenderer descriptorRenderer4 = RENDERER;
                    int iCompareTo4 = descriptorRenderer4.y((eh5) upperBounds.get(i3)).compareTo(descriptorRenderer4.y((eh5) upperBounds2.get(i3)));
                    if (iCompareTo4 != 0) {
                        return iCompareTo4;
                    }
                }
            }
            int size3 = typeParameters.size() - typeParameters2.size();
            if (size3 != 0) {
                return size3;
            }
            if ((aVar instanceof CallableMemberDescriptor) && (aVar2 instanceof CallableMemberDescriptor)) {
                int iOrdinal = ((CallableMemberDescriptor) aVar).getKind().ordinal() - ((CallableMemberDescriptor) aVar2).getKind().ordinal();
                if (iOrdinal != 0) {
                    return iOrdinal;
                }
            }
        } else {
            if (!(xt1Var instanceof qw0) || !(xt1Var2 instanceof qw0)) {
                throw new AssertionError(String.format("Unsupported pair of descriptors:\n'%s' Class: %s\n%s' Class: %s", xt1Var, xt1Var.getClass(), xt1Var2, xt1Var2.getClass()));
            }
            qw0 qw0Var = (qw0) xt1Var;
            qw0 qw0Var2 = (qw0) xt1Var2;
            if (qw0Var.getKind().ordinal() != qw0Var2.getKind().ordinal()) {
                return qw0Var.getKind().ordinal() - qw0Var2.getKind().ordinal();
            }
            if (qw0Var.h0() != qw0Var2.h0()) {
                return qw0Var.h0() ? 1 : -1;
            }
        }
        DescriptorRenderer descriptorRenderer5 = RENDERER;
        int iCompareTo5 = descriptorRenderer5.s(xt1Var).compareTo(descriptorRenderer5.s(xt1Var2));
        return iCompareTo5 != 0 ? iCompareTo5 : y82.g(xt1Var).getName().compareTo(y82.g(xt1Var2).getName());
    }
}

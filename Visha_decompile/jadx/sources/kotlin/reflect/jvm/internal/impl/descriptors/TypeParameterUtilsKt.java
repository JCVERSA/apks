package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.e74;
import defpackage.eh5;
import defpackage.hcb;
import defpackage.i81;
import defpackage.id3;
import defpackage.ld8;
import defpackage.pc9;
import defpackage.px0;
import defpackage.qw0;
import defpackage.qx0;
import defpackage.sbb;
import defpackage.sr0;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.y82;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.sequences.SequencesKt___SequencesKt;

public abstract class TypeParameterUtilsKt {
    public static final ld8 a(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        px0 px0VarC = eh5Var.I0().c();
        return b(eh5Var, px0VarC instanceof qx0 ? (qx0) px0VarC : null, 0);
    }

    public static final ld8 b(eh5 eh5Var, qx0 qx0Var, int i) {
        if (qx0Var == null || id3.m(qx0Var)) {
            return null;
        }
        int size = qx0Var.r().size() + i;
        if (qx0Var.g()) {
            List listSubList = eh5Var.G0().subList(i, size);
            xt1 xt1VarB = qx0Var.b();
            return new ld8(qx0Var, listSubList, b(eh5Var, xt1VarB instanceof qx0 ? (qx0) xt1VarB : null, size));
        }
        if (size != eh5Var.G0().size()) {
            y82.E(qx0Var);
        }
        return new ld8(qx0Var, eh5Var.G0().subList(i, eh5Var.G0().size()), null);
    }

    public static final sr0 c(hcb hcbVar, xt1 xt1Var, int i) {
        return new sr0(hcbVar, xt1Var, i);
    }

    public static final List d(qx0 qx0Var) {
        List listK;
        Object next;
        sbb sbbVarM;
        y45.j(qx0Var, "<this>");
        List listR = qx0Var.r();
        y45.i(listR, "declaredTypeParameters");
        if (!qx0Var.g() && !(qx0Var.b() instanceof a)) {
            return listR;
        }
        List listC0 = SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.K(SequencesKt___SequencesKt.F(SequencesKt___SequencesKt.Z(DescriptorUtilsKt.q(qx0Var), new e74() {
            @Override
            public final Boolean invoke(xt1 xt1Var) {
                y45.j(xt1Var, "it");
                return Boolean.valueOf(xt1Var instanceof a);
            }
        }), new e74() {
            @Override
            public final Boolean invoke(xt1 xt1Var) {
                y45.j(xt1Var, "it");
                return Boolean.valueOf(!(xt1Var instanceof c));
            }
        }), new e74() {
            @Override
            public final pc9 invoke(xt1 xt1Var) {
                y45.j(xt1Var, "it");
                List typeParameters = ((a) xt1Var).getTypeParameters();
                y45.i(typeParameters, "it as CallableDescriptor).typeParameters");
                return i81.b0(typeParameters);
            }
        }));
        Iterator it = DescriptorUtilsKt.q(qx0Var).iterator();
        do {
            listK = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(next instanceof qw0));
        qw0 qw0Var = (qw0) next;
        if (qw0Var != null && (sbbVarM = qw0Var.m()) != null) {
            listK = sbbVarM.getParameters();
        }
        if (listK == null) {
            listK = y71.k();
        }
        if (listC0.isEmpty() && listK.isEmpty()) {
            List listR2 = qx0Var.r();
            y45.i(listR2, "declaredTypeParameters");
            return listR2;
        }
        List<hcb> listJ0 = i81.J0(listC0, listK);
        ArrayList arrayList = new ArrayList(z71.v(listJ0, 10));
        for (hcb hcbVar : listJ0) {
            y45.i(hcbVar, "it");
            arrayList.add(c(hcbVar, qx0Var, listR.size()));
        }
        return i81.J0(listR, arrayList);
    }
}

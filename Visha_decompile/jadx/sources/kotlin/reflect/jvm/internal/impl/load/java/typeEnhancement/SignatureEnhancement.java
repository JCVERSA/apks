package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.a85;
import defpackage.abb;
import defpackage.be8;
import defpackage.by6;
import defpackage.co8;
import defpackage.dd;
import defpackage.e74;
import defpackage.eh5;
import defpackage.gj5;
import defpackage.gmb;
import defpackage.hcb;
import defpackage.i75;
import defpackage.i81;
import defpackage.jo6;
import defpackage.k65;
import defpackage.ko6;
import defpackage.l82;
import defpackage.m85;
import defpackage.md;
import defpackage.mgb;
import defpackage.p82;
import defpackage.px0;
import defpackage.qw0;
import defpackage.r65;
import defpackage.r85;
import defpackage.ro8;
import defpackage.ti8;
import defpackage.vbb;
import defpackage.wi8;
import defpackage.x82;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zi9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class SignatureEnhancement {
    public final r85 a;

    public SignatureEnhancement(r85 r85Var) {
        y45.j(r85Var, "typeEnhancement");
        this.a = r85Var;
    }

    public static eh5 d(SignatureEnhancement signatureEnhancement, zi9 zi9Var, eh5 eh5Var, List list, vbb vbbVar, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            vbbVar = null;
        }
        vbb vbbVar2 = vbbVar;
        if ((i & 8) != 0) {
            z = false;
        }
        return signatureEnhancement.b(zi9Var, eh5Var, list, vbbVar2, z);
    }

    public static eh5 e(SignatureEnhancement signatureEnhancement, CallableMemberDescriptor callableMemberDescriptor, dd ddVar, boolean z, gj5 gj5Var, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, vbb vbbVar, boolean z2, e74 e74Var, int i, Object obj) {
        return signatureEnhancement.c(callableMemberDescriptor, ddVar, z, gj5Var, annotationQualifierApplicabilityType, vbbVar, (i & 32) != 0 ? false : z2, e74Var);
    }

    public final boolean a(eh5 eh5Var) {
        return n.c(eh5Var, new e74() {
            @Override
            public final Boolean invoke(mgb mgbVar) {
                px0 px0VarC = mgbVar.I0().c();
                if (px0VarC == null) {
                    return Boolean.FALSE;
                }
                by6 name = px0VarC.getName();
                m85 m85Var = m85.a;
                return Boolean.valueOf(y45.e(name, m85Var.h().g()) && y45.e(DescriptorUtilsKt.h(px0VarC), m85Var.h()));
            }
        });
    }

    public final eh5 b(zi9 zi9Var, eh5 eh5Var, List list, vbb vbbVar, boolean z) {
        return this.a.a(eh5Var, zi9Var.b(eh5Var, list, vbbVar, z), zi9Var.u());
    }

    public final eh5 c(CallableMemberDescriptor callableMemberDescriptor, dd ddVar, boolean z, gj5 gj5Var, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, vbb vbbVar, boolean z2, e74 e74Var) {
        zi9 zi9Var = new zi9(ddVar, z, gj5Var, annotationQualifierApplicabilityType, false, 16, null);
        eh5 eh5Var = (eh5) e74Var.invoke(callableMemberDescriptor);
        Collection collectionE = callableMemberDescriptor.e();
        y45.i(collectionE, "overriddenDescriptors");
        Collection<CallableMemberDescriptor> collection = collectionE;
        ArrayList arrayList = new ArrayList(z71.v(collection, 10));
        for (CallableMemberDescriptor callableMemberDescriptor2 : collection) {
            y45.i(callableMemberDescriptor2, "it");
            arrayList.add((eh5) e74Var.invoke(callableMemberDescriptor2));
        }
        return b(zi9Var, eh5Var, arrayList, vbbVar, z2);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:95:0x01da  */
    public final CallableMemberDescriptor f(CallableMemberDescriptor callableMemberDescriptor, gj5 gj5Var) {
        CallableMemberDescriptor callableMemberDescriptor2;
        eh5 eh5VarJ;
        be8 be8Var;
        boolean z;
        eh5 type;
        boolean z2;
        eh5 type2;
        List listA;
        a85 a85Var;
        wi8 wi8VarM0;
        if (!(callableMemberDescriptor instanceof r65)) {
            return callableMemberDescriptor;
        }
        r65 r65Var = (r65) callableMemberDescriptor;
        boolean z3 = true;
        if (r65Var.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && r65Var.a().e().size() == 1) {
            return callableMemberDescriptor;
        }
        gj5 gj5VarH = ContextKt.h(gj5Var, k(callableMemberDescriptor, gj5Var));
        if (!(callableMemberDescriptor instanceof a85) || (wi8VarM0 = (a85Var = (a85) callableMemberDescriptor).getGetter()) == null || wi8VarM0.V()) {
            callableMemberDescriptor2 = callableMemberDescriptor;
        } else {
            wi8 wi8VarM1 = a85Var.getGetter();
            y45.g(wi8VarM1);
            callableMemberDescriptor2 = wi8VarM1;
        }
        vbb vbbVar = null;
        if (r65Var.b0() != null) {
            e eVar = callableMemberDescriptor2 instanceof e ? (e) callableMemberDescriptor2 : null;
            eh5VarJ = j(callableMemberDescriptor, eVar != null ? (h) eVar.K(JavaMethodDescriptor.H) : null, gj5VarH, null, false, new e74() {
                @Override
                public final eh5 invoke(CallableMemberDescriptor callableMemberDescriptor3) {
                    y45.j(callableMemberDescriptor3, "it");
                    ro8 ro8VarB0 = callableMemberDescriptor3.b0();
                    y45.g(ro8VarB0);
                    eh5 type3 = ro8VarB0.getType();
                    y45.i(type3, "it.extensionReceiverParameter!!.type");
                    return type3;
                }
            });
        } else {
            eh5VarJ = null;
        }
        JavaMethodDescriptor javaMethodDescriptor = callableMemberDescriptor instanceof JavaMethodDescriptor ? (JavaMethodDescriptor) callableMemberDescriptor : null;
        if (javaMethodDescriptor != null) {
            SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
            xt1 xt1VarB = javaMethodDescriptor.b();
            y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            String strA = jo6.a(signatureBuildingComponents, (qw0) xt1VarB, ko6.c(javaMethodDescriptor, false, false, 3, null));
            if (strA != null) {
                be8Var = (be8) PredefinedEnhancementInfoKt.d().get(strA);
            } else {
                be8Var = null;
            }
        } else {
            be8Var = null;
        }
        if (be8Var != null) {
            be8Var.a().size();
            r65Var.f().size();
        }
        boolean z4 = (gmb.c(gj5Var.a().i()) || gj5VarH.a().q().b()) && gmb.b(callableMemberDescriptor);
        List listF = callableMemberDescriptor2.f();
        y45.i(listF, "annotationOwnerForMember.valueParameters");
        List<h> list = listF;
        char c = '\n';
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (final h hVar : list) {
            vbb vbbVar2 = (be8Var == null || (listA = be8Var.a()) == null) ? vbbVar : (vbb) i81.r0(listA, hVar.getIndex());
            ArrayList arrayList2 = arrayList;
            arrayList2.add(j(callableMemberDescriptor, hVar, gj5VarH, vbbVar2, z4, new e74() {
                {
                    super(1);
                }

                @Override
                public final eh5 invoke(CallableMemberDescriptor callableMemberDescriptor3) {
                    y45.j(callableMemberDescriptor3, "it");
                    eh5 type3 = ((h) callableMemberDescriptor3.f().get(hVar.getIndex())).getType();
                    y45.i(type3, "it.valueParameters[p.index].type");
                    return type3;
                }
            }));
            arrayList = arrayList2;
            c = '\n';
            vbbVar = null;
        }
        ArrayList arrayList3 = arrayList;
        ti8 ti8Var = callableMemberDescriptor instanceof ti8 ? (ti8) callableMemberDescriptor : null;
        eh5 eh5VarE = e(this, callableMemberDescriptor, callableMemberDescriptor2, true, gj5VarH, (ti8Var == null || !i75.a(ti8Var)) ? AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE : AnnotationQualifierApplicabilityType.FIELD, be8Var != null ? be8Var.b() : null, false, new e74() {
            @Override
            public final eh5 invoke(CallableMemberDescriptor callableMemberDescriptor3) {
                y45.j(callableMemberDescriptor3, "it");
                eh5 returnType = callableMemberDescriptor3.getReturnType();
                y45.g(returnType);
                return returnType;
            }
        }, 32, null);
        eh5 returnType = r65Var.getReturnType();
        y45.g(returnType);
        if (a(returnType)) {
            z = true;
        } else {
            ro8 ro8VarB0 = r65Var.b0();
            if ((ro8VarB0 == null || (type2 = ro8VarB0.getType()) == null) ? false : a(type2)) {
                z = true;
            } else {
                List listF2 = r65Var.f();
                y45.i(listF2, "valueParameters");
                List list2 = listF2;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z2 = false;
                            break;
                        }
                        eh5 type3 = ((h) it.next()).getType();
                        y45.i(type3, "it.type");
                        if (a(type3)) {
                            z2 = true;
                            break;
                        }
                    }
                } else {
                    z2 = false;
                    break;
                }
                if (z2) {
                    z = true;
                } else {
                    z = false;
                }
            }
        }
        Pair pairA = z ? abb.a(p82.a(), new l82(callableMemberDescriptor)) : null;
        if (eh5VarJ == null && eh5VarE == null) {
            if (arrayList3.isEmpty()) {
                z3 = false;
                break;
            }
            Iterator it2 = arrayList3.iterator();
            do {
                if (!it2.hasNext()) {
                    z3 = false;
                    break;
                }
            } while (!(((eh5) it2.next()) != null));
            if (!z3 && pairA == null) {
                return callableMemberDescriptor;
            }
        }
        if (eh5VarJ == null) {
            ro8 ro8VarB1 = r65Var.b0();
            type = ro8VarB1 != null ? ro8VarB1.getType() : null;
        } else {
            type = eh5VarJ;
        }
        ArrayList arrayList4 = new ArrayList(z71.v(arrayList3, 10));
        int i = 0;
        for (Object obj : arrayList3) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            eh5 type4 = (eh5) obj;
            if (type4 == null) {
                type4 = ((h) r65Var.f().get(i)).getType();
                y45.i(type4, "valueParameters[index].type");
            }
            arrayList4.add(type4);
            i = i2;
        }
        if (eh5VarE == null) {
            eh5VarE = r65Var.getReturnType();
            y45.g(eh5VarE);
        }
        r65 r65VarI = r65Var.I(type, arrayList4, eh5VarE, pairA);
        y45.h(r65VarI, "null cannot be cast to non-null type D of org.jetbrains.kotlin.load.java.typeEnhancement.SignatureEnhancement.enhanceSignature");
        return r65VarI;
    }

    public final Collection g(gj5 gj5Var, Collection collection) {
        y45.j(gj5Var, "c");
        y45.j(collection, "platformSignatures");
        Collection collection2 = collection;
        ArrayList arrayList = new ArrayList(z71.v(collection2, 10));
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            arrayList.add(f((CallableMemberDescriptor) it.next(), gj5Var));
        }
        return arrayList;
    }

    public final eh5 h(eh5 eh5Var, gj5 gj5Var) {
        y45.j(eh5Var, "type");
        y45.j(gj5Var, "context");
        eh5 eh5VarD = d(this, new zi9(null, false, gj5Var, AnnotationQualifierApplicabilityType.TYPE_USE, true), eh5Var, y71.k(), null, false, 12, null);
        return eh5VarD == null ? eh5Var : eh5VarD;
    }

    public final List i(hcb hcbVar, List list, gj5 gj5Var) {
        y45.j(hcbVar, "typeParameter");
        y45.j(list, "bounds");
        y45.j(gj5Var, "context");
        List<eh5> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (eh5 eh5Var : list2) {
            if (!TypeUtilsKt.b(eh5Var, new e74() {
                @Override
                public final Boolean invoke(mgb mgbVar) {
                    y45.j(mgbVar, "it");
                    return Boolean.valueOf(mgbVar instanceof co8);
                }
            })) {
                eh5 eh5VarD = d(this, new zi9(hcbVar, false, gj5Var, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, false, 16, null), eh5Var, y71.k(), null, false, 12, null);
                if (eh5VarD != null) {
                    eh5Var = eh5VarD;
                }
            }
            arrayList.add(eh5Var);
        }
        return arrayList;
    }

    public final eh5 j(CallableMemberDescriptor callableMemberDescriptor, h hVar, gj5 gj5Var, vbb vbbVar, boolean z, e74 e74Var) {
        gj5 gj5VarH;
        return c(callableMemberDescriptor, hVar, false, (hVar == null || (gj5VarH = ContextKt.h(gj5Var, hVar.getAnnotations())) == null) ? gj5Var : gj5VarH, AnnotationQualifierApplicabilityType.VALUE_PARAMETER, vbbVar, z, e74Var);
    }

    public final md k(CallableMemberDescriptor callableMemberDescriptor, gj5 gj5Var) {
        px0 px0VarA = x82.a(callableMemberDescriptor);
        if (px0VarA == null) {
            return callableMemberDescriptor.getAnnotations();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptor = px0VarA instanceof LazyJavaClassDescriptor ? (LazyJavaClassDescriptor) px0VarA : null;
        List listL0 = lazyJavaClassDescriptor != null ? lazyJavaClassDescriptor.L0() : null;
        List list = listL0;
        if (list == null || list.isEmpty()) {
            return callableMemberDescriptor.getAnnotations();
        }
        List list2 = listL0;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new LazyJavaAnnotationDescriptor(gj5Var, (k65) it.next(), true));
        }
        return md.u1.a(i81.H0(callableMemberDescriptor.getAnnotations(), arrayList));
    }
}

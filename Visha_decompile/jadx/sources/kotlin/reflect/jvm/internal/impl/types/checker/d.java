package kotlin.reflect.jvm.internal.impl.types.checker;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import defpackage.eh5;
import defpackage.f07;
import defpackage.hcb;
import defpackage.i81;
import defpackage.mcb;
import defpackage.mgb;
import defpackage.sm9;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class d {
    public static final List a(mgb mgbVar, CaptureStatus captureStatus) {
        if (mgbVar.G0().size() != mgbVar.I0().getParameters().size()) {
            return null;
        }
        List listG0 = mgbVar.G0();
        List list = listG0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((mcb) it.next()).c() != Variance.INVARIANT) {
                    List parameters = mgbVar.I0().getParameters();
                    y45.i(parameters, "type.constructor.parameters");
                    List<Pair> listL1 = i81.l1(list, parameters);
                    ArrayList arrayList = new ArrayList(z71.v(listL1, 10));
                    for (Pair pair : listL1) {
                        mcb mcbVarA = (mcb) pair.component1();
                        hcb hcbVar = (hcb) pair.component2();
                        if (mcbVarA.c() != Variance.INVARIANT) {
                            mgb mgbVarL0 = (mcbVarA.b() || mcbVarA.c() != Variance.IN_VARIANCE) ? null : mcbVarA.getType().L0();
                            y45.i(hcbVar, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
                            mcbVarA = TypeUtilsKt.a(new f07(captureStatus, mgbVarL0, mcbVarA, hcbVar));
                        }
                        arrayList.add(mcbVarA);
                    }
                    TypeSubstitutor typeSubstitutorC = k.c.b(mgbVar.I0(), arrayList).c();
                    int size = listG0.size();
                    for (int i = 0; i < size; i++) {
                        mcb mcbVar = (mcb) listG0.get(i);
                        mcb mcbVar2 = (mcb) arrayList.get(i);
                        if (mcbVar.c() != Variance.INVARIANT) {
                            List upperBounds = ((hcb) mgbVar.I0().getParameters().get(i)).getUpperBounds();
                            y45.i(upperBounds, "type.constructor.parameters[index].upperBounds");
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it2 = upperBounds.iterator();
                            while (it2.hasNext()) {
                                arrayList2.add(KotlinTypePreparator.a.a.a(typeSubstitutorC.n((eh5) it2.next(), Variance.INVARIANT).L0()));
                            }
                            if (!mcbVar.b() && mcbVar.c() == Variance.OUT_VARIANCE) {
                                arrayList2.add(KotlinTypePreparator.a.a.a(mcbVar.getType().L0()));
                            }
                            eh5 type = mcbVar2.getType();
                            y45.h(type, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedType");
                            ((f07) type).I0().h(arrayList2);
                        }
                    }
                    return arrayList;
                }
            }
        }
        return null;
    }

    public static final sm9 b(sm9 sm9Var, CaptureStatus captureStatus) {
        y45.j(sm9Var, "type");
        y45.j(captureStatus, "status");
        List listA = a(sm9Var, captureStatus);
        if (listA != null) {
            return c(sm9Var, listA);
        }
        return null;
    }

    public static final sm9 c(mgb mgbVar, List list) {
        return KotlinTypeFactory.j(mgbVar.H0(), mgbVar.I0(), list, mgbVar.J0(), null, 16, null);
    }
}

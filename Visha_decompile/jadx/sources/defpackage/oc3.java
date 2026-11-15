package defpackage;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public abstract class oc3 {
    public static mcb b(oc3 oc3Var, hcb hcbVar, pc3 pc3Var, TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, eh5 eh5Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: computeProjection");
        }
        if ((i & 8) != 0) {
            eh5Var = typeParameterUpperBoundEraser.c(hcbVar, pc3Var);
        }
        return oc3Var.a(hcbVar, pc3Var, typeParameterUpperBoundEraser, eh5Var);
    }

    public mcb a(hcb hcbVar, pc3 pc3Var, TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, eh5 eh5Var) {
        y45.j(hcbVar, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
        y45.j(pc3Var, "typeAttr");
        y45.j(typeParameterUpperBoundEraser, "typeParameterUpperBoundEraser");
        y45.j(eh5Var, "erasedUpperBound");
        return new ocb(Variance.OUT_VARIANCE, eh5Var);
    }
}

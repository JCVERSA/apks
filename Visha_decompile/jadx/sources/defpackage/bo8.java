package defpackage;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeFlexibility;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.n;

public final class bo8 extends oc3 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[JavaTypeFlexibility.values().length];
            try {
                iArr[JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JavaTypeFlexibility.INFLEXIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    @Override
    public mcb a(hcb hcbVar, pc3 pc3Var, TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, eh5 eh5Var) {
        mcb ocbVar;
        y45.j(hcbVar, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
        y45.j(pc3Var, "typeAttr");
        y45.j(typeParameterUpperBoundEraser, "typeParameterUpperBoundEraser");
        y45.j(eh5Var, "erasedUpperBound");
        if (!(pc3Var instanceof p85)) {
            return super.a(hcbVar, pc3Var, typeParameterUpperBoundEraser, eh5Var);
        }
        p85 p85VarL = (p85) pc3Var;
        if (!p85VarL.i()) {
            p85VarL = p85VarL.l(JavaTypeFlexibility.INFLEXIBLE);
        }
        int i = a.a[p85VarL.g().ordinal()];
        if (i == 1) {
            return new ocb(Variance.INVARIANT, eh5Var);
        }
        if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        if (hcbVar.h().getAllowsOutPosition()) {
            List parameters = eh5Var.I0().getParameters();
            y45.i(parameters, "erasedUpperBound.constructor.parameters");
            ocbVar = !parameters.isEmpty() ? new ocb(Variance.OUT_VARIANCE, eh5Var) : n.t(hcbVar, p85VarL);
        } else {
            ocbVar = new ocb(Variance.INVARIANT, DescriptorUtilsKt.j(hcbVar).H());
        }
        y45.i(ocbVar, "{\n                if (!p…          }\n            }");
        return ocbVar;
    }
}

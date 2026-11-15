package freemarker.core;

import defpackage.d1d;
import defpackage.g0d;
import defpackage.gc7;
import defpackage.m0d;
import defpackage.n0d;
import defpackage.q0d;
import defpackage.z22;
import defpackage.zfa;
import freemarker.template.SimpleHash;
import freemarker.template.SimpleSequence;
import freemarker.template.TemplateException;

class APINotSupportedTemplateException extends TemplateException {
    public APINotSupportedTemplateException(Environment environment, t0 t0Var, zfa zfaVar) {
        super(null, environment, t0Var, buildDescription(environment, t0Var, zfaVar));
    }

    public static q0d buildDescription(Environment environment, t0 t0Var, zfa zfaVar) {
        q0d q0dVarB = new q0d(new Object[]{"The value doesn't support ?api. See requirements in the FreeMarker Manual. (FTL type: ", new g0d(zfaVar), ", TemplateModel class: ", new m0d(zfaVar.getClass()), ", ObjectWapper: ", new n0d(environment.u()), ")"}).b(t0Var);
        if (t0Var.T()) {
            q0dVarB.h("Only adapted Java objects can possibly have API, not values created inside templates.");
        } else {
            gc7 gc7VarU = environment.u();
            if ((gc7VarU instanceof z22) && ((zfaVar instanceof SimpleHash) || (zfaVar instanceof SimpleSequence))) {
                z22 z22Var = (z22) gc7VarU;
                if (!z22Var.S()) {
                    q0dVarB.i(new Object[]{"In the FreeMarker configuration, \"", "object_wrapper", "\" is a DefaultObjectWrapper with its \"useAdaptersForContainers\" property set to false. Setting it to true might solves this problem."});
                    if (z22Var.u().intValue() < d1d.e) {
                        q0dVarB.h("Setting DefaultObjectWrapper's \"incompatibleImprovements\" to 2.3.22 or higher will change the default value of \"useAdaptersForContainers\" to true.");
                    }
                } else if ((zfaVar instanceof SimpleSequence) && z22Var.R()) {
                    q0dVarB.i(new Object[]{"In the FreeMarker configuration, \"", "object_wrapper", "\" is a DefaultObjectWrapper with its \"forceLegacyNonListCollections\" property set to true. If you are trying to access the API of a non-List Collection, setting the \"forceLegacyNonListCollections\" property to false might solves this problem."});
                }
            }
        }
        return q0dVarB;
    }
}

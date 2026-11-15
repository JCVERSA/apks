package defpackage;

import java.util.HashSet;
import kotlin.reflect.jvm.internal.impl.types.m;

public abstract class ui3 {
    public static final gh5 a(m mVar, gh5 gh5Var) {
        y45.j(mVar, "<this>");
        y45.j(gh5Var, "inlineClassType");
        return b(mVar, gh5Var, new HashSet());
    }

    public static final gh5 b(m mVar, gh5 gh5Var, HashSet hashSet) {
        gh5 gh5VarB;
        gh5 gh5VarG;
        tbb tbbVarJ = mVar.J(gh5Var);
        if (!hashSet.add(tbbVarJ)) {
            return null;
        }
        kcb kcbVarA0 = mVar.a0(tbbVarJ);
        if (kcbVarA0 != null) {
            gh5 gh5VarS = mVar.s(kcbVarA0);
            gh5VarB = b(mVar, gh5VarS, hashSet);
            if (gh5VarB == null) {
                return null;
            }
            boolean z = mVar.T(mVar.J(gh5VarS)) || ((gh5VarS instanceof tm9) && mVar.p((tm9) gh5VarS));
            if ((gh5VarB instanceof tm9) && mVar.p((tm9) gh5VarB) && mVar.l0(gh5Var) && z) {
                gh5VarG = mVar.G(gh5VarS);
            } else if (!mVar.l0(gh5VarB) && mVar.D0(gh5Var)) {
                gh5VarG = mVar.G(gh5VarB);
            }
            return gh5VarG;
        }
        if (!mVar.T(tbbVarJ)) {
            return gh5Var;
        }
        gh5 gh5VarZ0 = mVar.z0(gh5Var);
        if (gh5VarZ0 == null || (gh5VarB = b(mVar, gh5VarZ0, hashSet)) == null) {
            return null;
        }
        if (mVar.l0(gh5Var)) {
            if (mVar.l0(gh5VarB)) {
                return gh5Var;
            }
            return ((gh5VarB instanceof tm9) && mVar.p((tm9) gh5VarB)) ? gh5Var : mVar.G(gh5VarB);
        }
        return gh5VarB;
    }
}

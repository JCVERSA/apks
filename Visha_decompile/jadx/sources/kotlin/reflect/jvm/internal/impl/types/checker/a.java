package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.mx0;
import defpackage.y45;
import defpackage.yl9;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;

public abstract class a {
    public static final TypeCheckerState a(boolean z, boolean z2, mx0 mx0Var, KotlinTypePreparator kotlinTypePreparator, c cVar) {
        y45.j(mx0Var, "typeSystemContext");
        y45.j(kotlinTypePreparator, "kotlinTypePreparator");
        y45.j(cVar, "kotlinTypeRefiner");
        return new TypeCheckerState(z, z2, true, mx0Var, kotlinTypePreparator, cVar);
    }

    public static TypeCheckerState b(boolean z, boolean z2, mx0 mx0Var, KotlinTypePreparator kotlinTypePreparator, c cVar, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            mx0Var = yl9.a;
        }
        if ((i & 8) != 0) {
            kotlinTypePreparator = KotlinTypePreparator.a.a;
        }
        if ((i & 16) != 0) {
            cVar = c.a.a;
        }
        return a(z, z2, mx0Var, kotlinTypePreparator, cVar);
    }
}

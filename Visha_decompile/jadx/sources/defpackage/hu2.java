package defpackage;

import com.yandex.div2.DivVariable;
import kotlin.NoWhenBranchMatchedException;

public abstract class hu2 {
    public static final qnb a(DivVariable divVariable) {
        y45.j(divVariable, "<this>");
        if (divVariable instanceof DivVariable.b) {
            DivVariable.b bVar = (DivVariable.b) divVariable;
            return new qnb.b(bVar.c().a, bVar.c().b);
        }
        if (divVariable instanceof DivVariable.f) {
            DivVariable.f fVar = (DivVariable.f) divVariable;
            return new qnb.f(fVar.c().a, fVar.c().b);
        }
        if (divVariable instanceof DivVariable.g) {
            DivVariable.g gVar = (DivVariable.g) divVariable;
            return new qnb.e(gVar.c().a, gVar.c().b);
        }
        if (divVariable instanceof DivVariable.h) {
            DivVariable.h hVar = (DivVariable.h) divVariable;
            return new qnb.g(hVar.c().a, hVar.c().b);
        }
        if (divVariable instanceof DivVariable.c) {
            DivVariable.c cVar = (DivVariable.c) divVariable;
            return new qnb.c(cVar.c().a, cVar.c().b);
        }
        if (divVariable instanceof DivVariable.i) {
            DivVariable.i iVar = (DivVariable.i) divVariable;
            return new qnb.h(iVar.c().a, iVar.c().b);
        }
        if (divVariable instanceof DivVariable.e) {
            DivVariable.e eVar = (DivVariable.e) divVariable;
            return new qnb.d(eVar.c().a, eVar.c().b);
        }
        if (!(divVariable instanceof DivVariable.a)) {
            throw new NoWhenBranchMatchedException();
        }
        DivVariable.a aVar = (DivVariable.a) divVariable;
        return new qnb.a(aVar.c().a, aVar.c().b);
    }
}

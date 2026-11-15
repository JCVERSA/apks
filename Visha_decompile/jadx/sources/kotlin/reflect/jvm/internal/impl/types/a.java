package kotlin.reflect.jvm.internal.impl.types;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import defpackage.gh5;
import defpackage.i81;
import defpackage.rr0;
import defpackage.tbb;
import defpackage.tcb;
import defpackage.tm9;
import defpackage.y45;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Set;

public final class a {
    public static final a a = new a();

    public final boolean a(TypeCheckerState typeCheckerState, tm9 tm9Var, TypeCheckerState.b bVar) {
        y45.j(typeCheckerState, "<this>");
        y45.j(tm9Var, "type");
        y45.j(bVar, "supertypesPolicy");
        tcb tcbVarJ = typeCheckerState.j();
        if ((tcbVarJ.B(tm9Var) && !tcbVarJ.w(tm9Var)) || tcbVarJ.Z(tm9Var)) {
            return true;
        }
        typeCheckerState.k();
        ArrayDeque arrayDequeH = typeCheckerState.h();
        y45.g(arrayDequeH);
        Set setI = typeCheckerState.i();
        y45.g(setI);
        arrayDequeH.push(tm9Var);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + tm9Var + ". Supertypes = " + i81.y0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            tm9 tm9Var2 = (tm9) arrayDequeH.pop();
            y45.i(tm9Var2, "current");
            if (setI.add(tm9Var2)) {
                TypeCheckerState.b bVar2 = tcbVarJ.w(tm9Var2) ? TypeCheckerState.b.c.a : bVar;
                if (y45.e(bVar2, TypeCheckerState.b.c.a)) {
                    bVar2 = null;
                }
                if (bVar2 == null) {
                    continue;
                } else {
                    tcb tcbVarJ2 = typeCheckerState.j();
                    Iterator it = tcbVarJ2.D(tcbVarJ2.c(tm9Var2)).iterator();
                    while (it.hasNext()) {
                        tm9 tm9VarA = bVar2.a(typeCheckerState, (gh5) it.next());
                        if ((tcbVarJ.B(tm9VarA) && !tcbVarJ.w(tm9VarA)) || tcbVarJ.Z(tm9VarA)) {
                            typeCheckerState.e();
                            return true;
                        }
                        arrayDequeH.add(tm9VarA);
                    }
                }
            }
        }
        typeCheckerState.e();
        return false;
    }

    public final boolean b(TypeCheckerState typeCheckerState, tm9 tm9Var, tbb tbbVar) {
        y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
        y45.j(tm9Var, TtmlNode.START);
        y45.j(tbbVar, TtmlNode.END);
        tcb tcbVarJ = typeCheckerState.j();
        if (a.c(typeCheckerState, tm9Var, tbbVar)) {
            return true;
        }
        typeCheckerState.k();
        ArrayDeque arrayDequeH = typeCheckerState.h();
        y45.g(arrayDequeH);
        Set setI = typeCheckerState.i();
        y45.g(setI);
        arrayDequeH.push(tm9Var);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + tm9Var + ". Supertypes = " + i81.y0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            tm9 tm9Var2 = (tm9) arrayDequeH.pop();
            y45.i(tm9Var2, "current");
            if (setI.add(tm9Var2)) {
                TypeCheckerState.b bVar = tcbVarJ.w(tm9Var2) ? TypeCheckerState.b.c.a : TypeCheckerState.b.C0410b.a;
                if (y45.e(bVar, TypeCheckerState.b.c.a)) {
                    bVar = null;
                }
                if (bVar == null) {
                    continue;
                } else {
                    tcb tcbVarJ2 = typeCheckerState.j();
                    Iterator it = tcbVarJ2.D(tcbVarJ2.c(tm9Var2)).iterator();
                    while (it.hasNext()) {
                        tm9 tm9VarA = bVar.a(typeCheckerState, (gh5) it.next());
                        if (a.c(typeCheckerState, tm9VarA, tbbVar)) {
                            typeCheckerState.e();
                            return true;
                        }
                        arrayDequeH.add(tm9VarA);
                    }
                }
            }
        }
        typeCheckerState.e();
        return false;
    }

    public final boolean c(TypeCheckerState typeCheckerState, tm9 tm9Var, tbb tbbVar) {
        tcb tcbVarJ = typeCheckerState.j();
        if (tcbVarJ.u0(tm9Var)) {
            return true;
        }
        if (tcbVarJ.w(tm9Var)) {
            return false;
        }
        if (typeCheckerState.n() && tcbVarJ.E(tm9Var)) {
            return true;
        }
        return tcbVarJ.H(tcbVarJ.c(tm9Var), tbbVar);
    }

    public final boolean d(TypeCheckerState typeCheckerState, tm9 tm9Var, tm9 tm9Var2) {
        y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
        y45.j(tm9Var, "subType");
        y45.j(tm9Var2, "superType");
        return e(typeCheckerState, tm9Var, tm9Var2);
    }

    public final boolean e(TypeCheckerState typeCheckerState, tm9 tm9Var, tm9 tm9Var2) {
        tcb tcbVarJ = typeCheckerState.j();
        if (AbstractTypeChecker.b) {
            if (!tcbVarJ.f(tm9Var) && !tcbVarJ.S(tcbVarJ.c(tm9Var))) {
                typeCheckerState.l(tm9Var);
            }
            if (!tcbVarJ.f(tm9Var2)) {
                typeCheckerState.l(tm9Var2);
            }
        }
        if (tcbVarJ.w(tm9Var2) || tcbVarJ.Z(tm9Var) || tcbVarJ.f0(tm9Var)) {
            return true;
        }
        if ((tm9Var instanceof rr0) && tcbVarJ.N((rr0) tm9Var)) {
            return true;
        }
        a aVar = a;
        if (aVar.a(typeCheckerState, tm9Var, TypeCheckerState.b.C0410b.a)) {
            return true;
        }
        if (tcbVarJ.Z(tm9Var2) || aVar.a(typeCheckerState, tm9Var2, TypeCheckerState.b.d.a) || tcbVarJ.B(tm9Var)) {
            return false;
        }
        return aVar.b(typeCheckerState, tm9Var, tcbVarJ.c(tm9Var2));
    }
}

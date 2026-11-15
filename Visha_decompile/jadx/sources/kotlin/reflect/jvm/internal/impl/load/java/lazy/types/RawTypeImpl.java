package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import defpackage.co8;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fy3;
import defpackage.i81;
import defpackage.j1a;
import defpackage.mcb;
import defpackage.px0;
import defpackage.qw0;
import defpackage.sm9;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.checker.b;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class RawTypeImpl extends fy3 implements co8 {
    public RawTypeImpl(sm9 sm9Var, sm9 sm9Var2, boolean z) {
        super(sm9Var, sm9Var2);
        if (z) {
            return;
        }
        b.a.c(sm9Var, sm9Var2);
    }

    public static final boolean V0(String str, String str2) {
        return y45.e(str, j1a.F0(str2, "out ")) || y45.e(str2, "*");
    }

    public static final List W0(DescriptorRenderer descriptorRenderer, eh5 eh5Var) {
        List listG0 = eh5Var.G0();
        ArrayList arrayList = new ArrayList(z71.v(listG0, 10));
        Iterator it = listG0.iterator();
        while (it.hasNext()) {
            arrayList.add(descriptorRenderer.z((mcb) it.next()));
        }
        return arrayList;
    }

    public static final String X0(String str, String str2) {
        if (!j1a.W(str, '<', false, 2, null)) {
            return str;
        }
        return j1a.d1(str, '<', null, 2, null) + '<' + str2 + '>' + j1a.a1(str, '>', null, 2, null);
    }

    @Override
    public sm9 P0() {
        return Q0();
    }

    @Override
    public String S0(DescriptorRenderer descriptorRenderer, kotlin.reflect.jvm.internal.impl.renderer.b bVar) {
        Pair pair;
        y45.j(descriptorRenderer, "renderer");
        y45.j(bVar, "options");
        String strY = descriptorRenderer.y(Q0());
        String strY2 = descriptorRenderer.y(R0());
        if (bVar.d()) {
            return "raw (" + strY + FileTree.PARENT_DIR + strY2 + ')';
        }
        if (R0().G0().isEmpty()) {
            return descriptorRenderer.v(strY, strY2, TypeUtilsKt.i(this));
        }
        List listW0 = W0(descriptorRenderer, Q0());
        List listW1 = W0(descriptorRenderer, R0());
        List list = listW0;
        String strY0 = i81.y0(list, ", ", null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(String str) {
                y45.j(str, "it");
                return "(raw) " + str;
            }
        }, 30, null);
        List listL1 = i81.l1(list, listW1);
        if (!(listL1 instanceof Collection) || !listL1.isEmpty()) {
            Iterator it = listL1.iterator();
            do {
                if (!it.hasNext()) {
                    strY2 = X0(strY2, strY0);
                    break;
                }
                pair = (Pair) it.next();
            } while (V0((String) pair.getFirst(), (String) pair.getSecond()));
        } else {
            strY2 = X0(strY2, strY0);
            break;
        }
        String strX0 = X0(strY, strY0);
        return y45.e(strX0, strY2) ? strX0 : descriptorRenderer.v(strX0, strY2, TypeUtilsKt.i(this));
    }

    @Override
    public RawTypeImpl M0(boolean z) {
        return new RawTypeImpl(Q0().M0(z), R0().M0(z));
    }

    @Override
    public fy3 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        eh5 eh5VarA = cVar.a(Q0());
        y45.h(eh5VarA, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        eh5 eh5VarA2 = cVar.a(R0());
        y45.h(eh5VarA2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new RawTypeImpl((sm9) eh5VarA, (sm9) eh5VarA2, true);
    }

    @Override
    public RawTypeImpl O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return new RawTypeImpl(Q0().O0(jVar), R0().O0(jVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public MemberScope p() {
        px0 px0VarC = I0().c();
        TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = null;
        Object[] objArr = 0;
        qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
        if (qw0Var != null) {
            MemberScope memberScopeT0 = qw0Var.t0(new RawSubstitution(typeParameterUpperBoundEraser, 1, objArr == true ? 1 : 0));
            y45.i(memberScopeT0, "classDescriptor.getMemberScope(RawSubstitution())");
            return memberScopeT0;
        }
        throw new IllegalStateException(("Incorrect classifier: " + I0().c()).toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RawTypeImpl(sm9 sm9Var, sm9 sm9Var2) {
        this(sm9Var, sm9Var2, false);
        y45.j(sm9Var, "lowerBound");
        y45.j(sm9Var2, "upperBound");
    }
}

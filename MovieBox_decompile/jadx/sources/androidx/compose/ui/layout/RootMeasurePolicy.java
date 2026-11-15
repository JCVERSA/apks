package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class RootMeasurePolicy extends LayoutNode.d {

    public static final RootMeasurePolicy f4841b = new RootMeasurePolicy();

    private RootMeasurePolicy() {
        super("Undefined intrinsics block and it is required");
    }

    @Override
    public v c(x xVar, List list, long j10) {
        if (list.isEmpty()) {
            return w.b(xVar, o0.b.n(j10), o0.b.m(j10), null, new Function1<g0.a, Unit>() {
                public final void invoke(g0.a aVar) {
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((g0.a) obj);
                    return Unit.f64096a;
                }
            }, 4, null);
        }
        if (list.size() == 1) {
            final g0 g0VarP = ((s) list.get(0)).P(j10);
            return w.b(xVar, o0.c.i(j10, g0VarP.u0()), o0.c.h(j10, g0VarP.l0()), null, new Function1<g0.a, Unit>() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((g0.a) obj);
                    return Unit.f64096a;
                }

                public final void invoke(g0.a aVar) {
                    g0.a.n(aVar, g0VarP, 0, 0, 0.0f, null, 12, null);
                }
            }, 4, null);
        }
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(((s) list.get(i10)).P(j10));
        }
        int size2 = arrayList.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i11 = 0; i11 < size2; i11++) {
            g0 g0Var = (g0) arrayList.get(i11);
            iMax = Math.max(g0Var.u0(), iMax);
            iMax2 = Math.max(g0Var.l0(), iMax2);
        }
        return w.b(xVar, o0.c.i(j10, iMax), o0.c.h(j10, iMax2), null, new Function1<g0.a, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(g0.a aVar) {
                List<g0> list2 = arrayList;
                int size3 = list2.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    g0.a.n(aVar, list2.get(i12), 0, 0, 0.0f, null, 12, null);
                }
            }
        }, 4, null);
    }
}

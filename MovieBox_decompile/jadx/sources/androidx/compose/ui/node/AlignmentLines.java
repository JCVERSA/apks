package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLineKt;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class AlignmentLines {

    private final a f4898a;

    private boolean f4899b;

    private boolean f4900c;

    private boolean f4901d;

    private boolean f4902e;

    private boolean f4903f;

    private boolean f4904g;

    private a f4905h;

    private final Map f4906i;

    public AlignmentLines(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    public final void c(androidx.compose.ui.layout.a aVar, int i10, NodeCoordinator nodeCoordinator) {
        float f10 = i10;
        long jA = y.h.a(f10, f10);
        while (true) {
            jA = d(nodeCoordinator, jA);
            nodeCoordinator = nodeCoordinator.Z1();
            Intrinsics.e(nodeCoordinator);
            if (Intrinsics.c(nodeCoordinator, this.f4898a.M())) {
                break;
            } else if (e(nodeCoordinator).containsKey(aVar)) {
                float fI = i(nodeCoordinator, aVar);
                jA = y.h.a(fI, fI);
            }
        }
        int iRound = Math.round(aVar instanceof androidx.compose.ui.layout.h ? y.g.n(jA) : y.g.m(jA));
        Map map = this.f4906i;
        if (map.containsKey(aVar)) {
            iRound = AlignmentLineKt.c(aVar, ((Number) MapsKt.i(this.f4906i, aVar)).intValue(), iRound);
        }
        map.put(aVar, Integer.valueOf(iRound));
    }

    protected abstract long d(NodeCoordinator nodeCoordinator, long j10);

    protected abstract Map e(NodeCoordinator nodeCoordinator);

    public final a f() {
        return this.f4898a;
    }

    public final boolean g() {
        return this.f4899b;
    }

    public final Map h() {
        return this.f4906i;
    }

    protected abstract int i(NodeCoordinator nodeCoordinator, androidx.compose.ui.layout.a aVar);

    public final boolean j() {
        return this.f4900c || this.f4902e || this.f4903f || this.f4904g;
    }

    public final boolean k() {
        o();
        return this.f4905h != null;
    }

    public final boolean l() {
        return this.f4901d;
    }

    public final void m() {
        this.f4899b = true;
        a aVarD = this.f4898a.D();
        if (aVarD == null) {
            return;
        }
        if (this.f4900c) {
            aVarD.Z();
        } else if (this.f4902e || this.f4901d) {
            aVarD.requestLayout();
        }
        if (this.f4903f) {
            this.f4898a.Z();
        }
        if (this.f4904g) {
            this.f4898a.requestLayout();
        }
        aVarD.v().m();
    }

    public final void n() {
        this.f4906i.clear();
        this.f4898a.U(new Function1<a, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((a) obj);
                return Unit.f64096a;
            }

            public final void invoke(a aVar) {
                if (aVar.n()) {
                    if (aVar.v().g()) {
                        aVar.I();
                    }
                    Map map = aVar.v().f4906i;
                    AlignmentLines alignmentLines = this.this$0;
                    for (Map.Entry entry : map.entrySet()) {
                        alignmentLines.c((androidx.compose.ui.layout.a) entry.getKey(), ((Number) entry.getValue()).intValue(), aVar.M());
                    }
                    NodeCoordinator nodeCoordinatorZ1 = aVar.M().Z1();
                    Intrinsics.e(nodeCoordinatorZ1);
                    while (!Intrinsics.c(nodeCoordinatorZ1, this.this$0.f().M())) {
                        Set<androidx.compose.ui.layout.a> setKeySet = this.this$0.e(nodeCoordinatorZ1).keySet();
                        AlignmentLines alignmentLines2 = this.this$0;
                        for (androidx.compose.ui.layout.a aVar2 : setKeySet) {
                            alignmentLines2.c(aVar2, alignmentLines2.i(nodeCoordinatorZ1, aVar2), nodeCoordinatorZ1);
                        }
                        nodeCoordinatorZ1 = nodeCoordinatorZ1.Z1();
                        Intrinsics.e(nodeCoordinatorZ1);
                    }
                }
            }
        });
        this.f4906i.putAll(e(this.f4898a.M()));
        this.f4899b = false;
    }

    public final void o() {
        a aVar;
        AlignmentLines alignmentLinesV;
        AlignmentLines alignmentLinesV2;
        if (j()) {
            aVar = this.f4898a;
        } else {
            a aVarD = this.f4898a.D();
            if (aVarD == null) {
                return;
            }
            aVar = aVarD.v().f4905h;
            if (aVar == null || !aVar.v().j()) {
                a aVar2 = this.f4905h;
                if (aVar2 == null || aVar2.v().j()) {
                    return;
                }
                a aVarD2 = aVar2.D();
                if (aVarD2 != null && (alignmentLinesV2 = aVarD2.v()) != null) {
                    alignmentLinesV2.o();
                }
                a aVarD3 = aVar2.D();
                aVar = (aVarD3 == null || (alignmentLinesV = aVarD3.v()) == null) ? null : alignmentLinesV.f4905h;
            }
        }
        this.f4905h = aVar;
    }

    public final void p() {
        this.f4899b = true;
        this.f4900c = false;
        this.f4902e = false;
        this.f4901d = false;
        this.f4903f = false;
        this.f4904g = false;
        this.f4905h = null;
    }

    public final void q(boolean z10) {
        this.f4902e = z10;
    }

    public final void r(boolean z10) {
        this.f4904g = z10;
    }

    public final void s(boolean z10) {
        this.f4903f = z10;
    }

    public final void t(boolean z10) {
        this.f4901d = z10;
    }

    public final void u(boolean z10) {
        this.f4900c = z10;
    }

    private AlignmentLines(a aVar) {
        this.f4898a = aVar;
        this.f4899b = true;
        this.f4906i = new HashMap();
    }
}

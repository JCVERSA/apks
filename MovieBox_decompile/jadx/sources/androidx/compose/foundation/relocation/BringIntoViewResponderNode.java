package androidx.compose.foundation.relocation;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.g;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.v;
import androidx.compose.ui.node.w;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.o0;
import y.i;

public final class BringIntoViewResponderNode extends androidx.compose.ui.f.c implements androidx.compose.foundation.relocation.a, w, m1 {

    public static final a f2850q = new a(null);

    public static final int f2851r = 8;

    private d f2852n;

    private final boolean f2853o;

    private boolean f2854p;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public BringIntoViewResponderNode(d dVar) {
        this.f2852n = dVar;
    }

    public static final i D1(BringIntoViewResponderNode bringIntoViewResponderNode, l lVar, Function0 function0) {
        i iVar;
        if (!bringIntoViewResponderNode.j1() || !bringIntoViewResponderNode.f2854p) {
            return null;
        }
        l lVarK = g.k(bringIntoViewResponderNode);
        if (!lVar.F()) {
            lVar = null;
        }
        if (lVar == null || (iVar = (i) function0.invoke()) == null) {
            return null;
        }
        return c.c(lVarK, lVar, iVar);
    }

    @Override
    public Object D() {
        return f2850q;
    }

    public final d E1() {
        return this.f2852n;
    }

    @Override
    public void F(long j10) {
        v.b(this, j10);
    }

    @Override
    public void I(l lVar) {
        this.f2854p = true;
    }

    @Override
    public Object U(final l lVar, final Function0 function0, Continuation continuation) {
        Object objE = o0.e(new BringIntoViewResponderNode$bringChildIntoView$2(this, lVar, function0, new Function0<i>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final i invoke() {
                i iVarD1 = BringIntoViewResponderNode.D1(this.this$0, lVar, function0);
                if (iVarD1 != null) {
                    return this.this$0.E1().Y(iVarD1);
                }
                return null;
            }
        }, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }

    @Override
    public boolean h1() {
        return this.f2853o;
    }
}

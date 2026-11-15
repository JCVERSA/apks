package androidx.compose.foundation;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.node.e1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class CombinedClickableNodeImpl extends AbstractClickableNode implements e1 {
    private String J;
    private Function0 K;
    private Function0 L;

    public CombinedClickableNodeImpl(Function0 function0, String str, Function0 function1, Function0 function2, p.i iVar, b0 b0Var, boolean z10, String str2, androidx.compose.ui.semantics.f fVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, str, function1, function2, iVar, b0Var, z10, str2, fVar);
    }

    @Override
    public void O1(androidx.compose.ui.semantics.n nVar) {
        if (this.K != null) {
            SemanticsPropertiesKt.m(nVar, this.J, new Function0<Boolean>() {
                {
                    super(0);
                }

                @Override
                public final Boolean invoke() {
                    Function0 function0 = this.this$0.K;
                    if (function0 != null) {
                        function0.invoke();
                    }
                    return Boolean.TRUE;
                }
            });
        }
    }

    @Override
    public Object P1(androidx.compose.ui.input.pointer.e0 e0Var, Continuation continuation) {
        Object objI = TapGestureDetectorKt.i(e0Var, (!U1() || this.L == null) ? null : new Function1<y.g, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m23invokek4lQ0M(((y.g) obj).v());
                return Unit.f64096a;
            }

            public final void m23invokek4lQ0M(long j10) {
                Function0 function0 = this.this$0.L;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        }, (!U1() || this.K == null) ? null : new Function1<y.g, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m24invokek4lQ0M(((y.g) obj).v());
                return Unit.f64096a;
            }

            public final void m24invokek4lQ0M(long j10) {
                Function0 function0 = this.this$0.K;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        }, new CombinedClickableNodeImpl$clickPointerInput$4(this, null), new Function1<y.g, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m26invokek4lQ0M(((y.g) obj).v());
                return Unit.f64096a;
            }

            public final void m26invokek4lQ0M(long j10) {
                if (this.this$0.U1()) {
                    this.this$0.V1().invoke();
                }
            }
        }, continuation);
        return objI == IntrinsicsKt.f() ? objI : Unit.f64096a;
    }

    public void d2(Function0 function0, String str, Function0 function1, Function0 function2, p.i iVar, b0 b0Var, boolean z10, String str2, androidx.compose.ui.semantics.f fVar) {
        boolean z11;
        if (!Intrinsics.c(this.J, str)) {
            this.J = str;
            j1.b(this);
        }
        if ((this.K == null) != (function1 == null)) {
            R1();
            j1.b(this);
            z11 = true;
        } else {
            z11 = false;
        }
        this.K = function1;
        if ((this.L == null) != (function2 == null)) {
            z11 = true;
        }
        this.L = function2;
        boolean z12 = U1() != z10 ? true : z11;
        a2(iVar, b0Var, z10, str2, fVar, function0);
        if (z12) {
            Y1();
        }
    }

    private CombinedClickableNodeImpl(Function0 function0, String str, Function0 function1, Function0 function2, p.i iVar, b0 b0Var, boolean z10, String str2, androidx.compose.ui.semantics.f fVar) {
        super(iVar, b0Var, z10, str2, fVar, function0, null);
        this.J = str;
        this.K = function1;
        this.L = function2;
    }
}

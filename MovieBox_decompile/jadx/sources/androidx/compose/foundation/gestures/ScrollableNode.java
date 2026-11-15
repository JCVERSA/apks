package androidx.compose.foundation.gestures;

import android.view.KeyEvent;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.f0;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.ui.focus.t;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.w;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

final class ScrollableNode extends DragGestureNode implements u0, androidx.compose.ui.node.d, androidx.compose.ui.focus.m, d0.e, i1 {
    private final boolean A;
    private final NestedScrollDispatcher B;
    private final l C;
    private final DefaultFlingBehavior D;
    private final ScrollingLogic E;
    private final ScrollableNestedScrollConnection F;
    private final ContentInViewNode G;
    private j H;
    private Function2 I;
    private Function2 J;

    private f0 f2382y;

    private g f2383z;

    public ScrollableNode(o oVar, f0 f0Var, g gVar, Orientation orientation, boolean z10, boolean z11, p.i iVar, d dVar) {
        super(ScrollableKt.f2376a, z10, iVar, orientation);
        this.f2382y = f0Var;
        this.f2383z = gVar;
        NestedScrollDispatcher nestedScrollDispatcher = new NestedScrollDispatcher();
        this.B = nestedScrollDispatcher;
        this.C = (l) C1(new l(z10));
        DefaultFlingBehavior defaultFlingBehavior = new DefaultFlingBehavior(androidx.compose.animation.f.c(ScrollableKt.f2379d), null, 2, null);
        this.D = defaultFlingBehavior;
        f0 f0Var2 = this.f2382y;
        g gVar2 = this.f2383z;
        ScrollingLogic scrollingLogic = new ScrollingLogic(oVar, f0Var2, gVar2 == null ? defaultFlingBehavior : gVar2, orientation, z11, nestedScrollDispatcher);
        this.E = scrollingLogic;
        ScrollableNestedScrollConnection scrollableNestedScrollConnection = new ScrollableNestedScrollConnection(scrollingLogic, z10);
        this.F = scrollableNestedScrollConnection;
        ContentInViewNode contentInViewNode = (ContentInViewNode) C1(new ContentInViewNode(orientation, scrollingLogic, z11, dVar));
        this.G = contentInViewNode;
        C1(androidx.compose.ui.input.nestedscroll.d.a(scrollableNestedScrollConnection, nestedScrollDispatcher));
        C1(t.a());
        C1(new BringIntoViewResponderNode(contentInViewNode));
        C1(new androidx.compose.foundation.t(new Function1<androidx.compose.ui.layout.l, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.l) obj);
                return Unit.f64096a;
            }

            public final void invoke(androidx.compose.ui.layout.l lVar) {
                ScrollableNode.this.G.W1(lVar);
            }
        }));
    }

    private final void g2() {
        this.I = null;
        this.J = null;
    }

    private final void h2(androidx.compose.ui.input.pointer.o oVar, long j10) {
        List listB = oVar.b();
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((w) listB.get(i10)).p()) {
                return;
            }
        }
        j jVar = this.H;
        Intrinsics.e(jVar);
        kotlinx.coroutines.k.d(c1(), null, null, new ScrollableNode$processMouseWheelEvent$2$1(this, jVar.a(androidx.compose.ui.node.g.i(this), oVar, j10), null), 3, null);
        List listB2 = oVar.b();
        int size2 = listB2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            ((w) listB2.get(i11)).a();
        }
    }

    private final void i2() {
        this.I = new Function2<Float, Float, Boolean>() {

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableNode$setScrollSemanticsActions$1$1", f = "Scrollable.kt", l = {522}, m = "invokeSuspend")
            static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final float $x;
                final float $y;
                int label;
                final ScrollableNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(ScrollableNode scrollableNode, float f10, float f11, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.this$0 = scrollableNode;
                    this.$x = f10;
                    this.$y = f11;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.this$0, this.$x, this.$y, continuation);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    Object objF = IntrinsicsKt.f();
                    int i10 = this.label;
                    if (i10 == 0) {
                        ResultKt.b(obj);
                        ScrollingLogic scrollingLogic = this.this$0.E;
                        long jA = y.h.a(this.$x, this.$y);
                        this.label = 1;
                        if (ScrollableKt.g(scrollingLogic, jA, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f64096a;
                }

                @Override
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                }
            }

            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                return invoke(((Number) obj).floatValue(), ((Number) obj2).floatValue());
            }

            public final Boolean invoke(float f10, float f11) {
                kotlinx.coroutines.k.d(this.this$0.c1(), null, null, new AnonymousClass1(this.this$0, f10, f11, null), 3, null);
                return Boolean.TRUE;
            }
        };
        this.J = new ScrollableNode$setScrollSemanticsActions$2(this, null);
    }

    private final void k2() {
        v0.a(this, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m34invoke();
                return Unit.f64096a;
            }

            public final void m34invoke() {
                this.this$0.D.d(androidx.compose.animation.f.c((o0.e) androidx.compose.ui.node.e.a(this.this$0, CompositionLocalsKt.c())));
            }
        });
    }

    @Override
    public void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j10) {
        List listB = oVar.b();
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((Boolean) S1().invoke((w) listB.get(i10))).booleanValue()) {
                super.M(oVar, pointerEventPass, j10);
                break;
            }
        }
        if (pointerEventPass == PointerEventPass.Main && androidx.compose.ui.input.pointer.q.i(oVar.e(), androidx.compose.ui.input.pointer.q.f4714a.f())) {
            h2(oVar, j10);
        }
    }

    @Override
    public boolean O() {
        return h1.a(this);
    }

    @Override
    public void Q0(androidx.compose.ui.semantics.n nVar) {
        if (T1() && (this.I == null || this.J == null)) {
            i2();
        }
        Function2 function2 = this.I;
        if (function2 != null) {
            SemanticsPropertiesKt.q(nVar, null, function2, 1, null);
        }
        Function2 function3 = this.J;
        if (function3 != null) {
            SemanticsPropertiesKt.r(nVar, function3);
        }
    }

    @Override
    public Object R1(Function2 function2, Continuation continuation) {
        ScrollingLogic scrollingLogic = this.E;
        Object objV = scrollingLogic.v(MutatePriority.UserInput, new ScrollableNode$drag$2$1(function2, scrollingLogic, null), continuation);
        return objV == IntrinsicsKt.f() ? objV : Unit.f64096a;
    }

    @Override
    public boolean V0() {
        return h1.b(this);
    }

    @Override
    public void W1(long j10) {
        kotlinx.coroutines.k.d(this.B.e(), null, null, new ScrollableNode$onDragStopped$1(this, j10, null), 3, null);
    }

    @Override
    public void Z() {
        k2();
    }

    @Override
    public boolean a2() {
        return this.E.w();
    }

    @Override
    public boolean h1() {
        return this.A;
    }

    public final void j2(o oVar, Orientation orientation, f0 f0Var, boolean z10, boolean z11, g gVar, p.i iVar, d dVar) {
        boolean z12;
        if (T1() != z10) {
            this.F.a(z10);
            this.C.D1(z10);
            z12 = true;
        } else {
            z12 = false;
        }
        boolean z13 = z12;
        boolean zC = this.E.C(oVar, orientation, f0Var, z11, gVar == null ? this.D : gVar, this.B);
        this.G.Z1(orientation, z11, dVar);
        this.f2382y = f0Var;
        this.f2383z = gVar;
        c2(ScrollableKt.f2376a, z10, iVar, this.E.p() ? Orientation.Vertical : Orientation.Horizontal, zC);
        if (z13) {
            g2();
            j1.b(this);
        }
    }

    @Override
    public boolean l0(KeyEvent keyEvent) {
        return false;
    }

    @Override
    public void m1() {
        k2();
        this.H = b.a(this);
    }

    @Override
    public void r0(androidx.compose.ui.focus.k kVar) {
        kVar.r(false);
    }

    @Override
    public boolean s0(KeyEvent keyEvent) {
        long jA;
        if (T1()) {
            long jA2 = d0.d.a(keyEvent);
            d0.a.C0699a c0699a = d0.a.f58679b;
            if ((d0.a.p(jA2, c0699a.j()) || d0.a.p(d0.d.a(keyEvent), c0699a.k())) && d0.c.e(d0.d.b(keyEvent), d0.c.f58831a.a()) && !d0.d.c(keyEvent)) {
                if (this.E.p()) {
                    int iF = o0.t.f(this.G.S1());
                    jA = y.h.a(0.0f, d0.a.p(d0.d.a(keyEvent), c0699a.k()) ? iF : -iF);
                } else {
                    int iG = o0.t.g(this.G.S1());
                    jA = y.h.a(d0.a.p(d0.d.a(keyEvent), c0699a.k()) ? iG : -iG, 0.0f);
                }
                kotlinx.coroutines.k.d(c1(), null, null, new ScrollableNode$onKeyEvent$1(this, jA, null), 3, null);
                return true;
            }
        }
        return false;
    }

    @Override
    public void V1(long j10) {
    }
}

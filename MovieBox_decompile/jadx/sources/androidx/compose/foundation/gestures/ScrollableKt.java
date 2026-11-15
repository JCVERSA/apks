package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.f0;
import androidx.compose.ui.input.pointer.h0;
import androidx.compose.ui.input.pointer.w;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

public abstract class ScrollableKt {

    private static final Function1 f2376a = new Function1<w, Boolean>() {
        @Override
        public final Boolean invoke(w wVar) {
            return Boolean.valueOf(!h0.g(wVar.n(), h0.f4689a.b()));
        }
    };

    private static final k f2377b = new b();

    private static final androidx.compose.ui.j f2378c = new a();

    private static final c f2379d = new c();

    public static final class a implements androidx.compose.ui.j {
        a() {
        }

        @Override
        public Object fold(Object obj, Function2 function2) {
            return androidx.compose.ui.j.a.a(this, obj, function2);
        }

        @Override
        public CoroutineContext.Element get(CoroutineContext.Key key) {
            return androidx.compose.ui.j.a.b(this, key);
        }

        @Override
        public CoroutineContext.Key getKey() {
            return androidx.compose.ui.i.a(this);
        }

        @Override
        public float h() {
            return 1.0f;
        }

        @Override
        public CoroutineContext minusKey(CoroutineContext.Key key) {
            return androidx.compose.ui.j.a.c(this, key);
        }

        @Override
        public CoroutineContext plus(CoroutineContext coroutineContext) {
            return androidx.compose.ui.j.a.d(this, coroutineContext);
        }
    }

    public static final class c implements o0.e {
        c() {
        }

        @Override
        public float B0() {
            return 1.0f;
        }

        @Override
        public float D0(float f10) {
            return o0.d.d(this, f10);
        }

        @Override
        public long H(float f10) {
            return o0.m.b(this, f10);
        }

        @Override
        public float J(long j10) {
            return o0.m.a(this, j10);
        }

        @Override
        public long P0(long j10) {
            return o0.d.e(this, j10);
        }

        @Override
        public long Q(float f10) {
            return o0.d.f(this, f10);
        }

        @Override
        public int c0(float f10) {
            return o0.d.a(this, f10);
        }

        @Override
        public float getDensity() {
            return 1.0f;
        }

        @Override
        public float h0(long j10) {
            return o0.d.c(this, j10);
        }

        @Override
        public float x0(float f10) {
            return o0.d.b(this, f10);
        }
    }

    public static final androidx.compose.ui.j e() {
        return f2378c;
    }

    public static final androidx.compose.ui.f f(androidx.compose.ui.f fVar, o oVar, Orientation orientation, f0 f0Var, boolean z10, boolean z11, g gVar, p.i iVar, d dVar) {
        return fVar.e(new ScrollableElement(oVar, orientation, f0Var, z10, z11, gVar, iVar, dVar));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object g(ScrollingLogic scrollingLogic, long j10, Continuation continuation) {
        ScrollableKt$semanticsScrollBy$1 scrollableKt$semanticsScrollBy$1;
        Ref.FloatRef floatRef;
        if (continuation instanceof ScrollableKt$semanticsScrollBy$1) {
            scrollableKt$semanticsScrollBy$1 = (ScrollableKt$semanticsScrollBy$1) continuation;
            int i10 = scrollableKt$semanticsScrollBy$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollableKt$semanticsScrollBy$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(continuation);
            }
        } else {
            scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(continuation);
        }
        Object obj = scrollableKt$semanticsScrollBy$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = scrollableKt$semanticsScrollBy$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            floatRef = new Ref.FloatRef();
            MutatePriority mutatePriority = MutatePriority.Default;
            ScrollableKt$semanticsScrollBy$2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(scrollingLogic, j10, floatRef, null);
            scrollableKt$semanticsScrollBy$1.L$0 = scrollingLogic;
            scrollableKt$semanticsScrollBy$1.L$1 = floatRef;
            scrollableKt$semanticsScrollBy$1.label = 1;
            if (scrollingLogic.v(mutatePriority, scrollableKt$semanticsScrollBy$2, scrollableKt$semanticsScrollBy$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Ref.FloatRef floatRef2 = (Ref.FloatRef) scrollableKt$semanticsScrollBy$1.L$1;
            ScrollingLogic scrollingLogic2 = (ScrollingLogic) scrollableKt$semanticsScrollBy$1.L$0;
            ResultKt.b(obj);
            floatRef = floatRef2;
            scrollingLogic = scrollingLogic2;
        }
        return y.g.d(scrollingLogic.B(floatRef.element));
    }

    public static final class b implements k {
        b() {
        }

        @Override
        public float a(float f10) {
            return f10;
        }
    }
}

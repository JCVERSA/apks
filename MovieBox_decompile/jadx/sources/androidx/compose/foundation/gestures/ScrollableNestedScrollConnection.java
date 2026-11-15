package androidx.compose.foundation.gestures;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import o0.z;

final class ScrollableNestedScrollConnection implements androidx.compose.ui.input.nestedscroll.b {

    private final ScrollingLogic f2380a;

    private boolean f2381b;

    public ScrollableNestedScrollConnection(ScrollingLogic scrollingLogic, boolean z10) {
        this.f2380a = scrollingLogic;
        this.f2381b = z10;
    }

    @Override
    public long A0(long j10, int i10) {
        return androidx.compose.ui.input.nestedscroll.a.d(this, j10, i10);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object G(long j10, long j11, Continuation continuation) {
        ScrollableNestedScrollConnection$onPostFling$1 scrollableNestedScrollConnection$onPostFling$1;
        long jA;
        if (continuation instanceof ScrollableNestedScrollConnection$onPostFling$1) {
            scrollableNestedScrollConnection$onPostFling$1 = (ScrollableNestedScrollConnection$onPostFling$1) continuation;
            int i10 = scrollableNestedScrollConnection$onPostFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollableNestedScrollConnection$onPostFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, continuation);
            }
        } else {
            scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, continuation);
        }
        Object objN = scrollableNestedScrollConnection$onPostFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = scrollableNestedScrollConnection$onPostFling$1.label;
        if (i11 == 0) {
            ResultKt.b(objN);
            if (this.f2381b) {
                ScrollingLogic scrollingLogic = this.f2380a;
                scrollableNestedScrollConnection$onPostFling$1.J$0 = j11;
                scrollableNestedScrollConnection$onPostFling$1.label = 1;
                objN = scrollingLogic.n(j11, scrollableNestedScrollConnection$onPostFling$1);
                if (objN == objF) {
                    return objF;
                }
            } else {
                jA = z.f67438b.a();
            }
            return z.b(jA);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        j11 = scrollableNestedScrollConnection$onPostFling$1.J$0;
        ResultKt.b(objN);
        jA = z.k(j11, ((z) objN).n());
        return z.b(jA);
    }

    @Override
    public Object H0(long j10, Continuation continuation) {
        return androidx.compose.ui.input.nestedscroll.a.c(this, j10, continuation);
    }

    public final void a(boolean z10) {
        this.f2381b = z10;
    }

    @Override
    public long g0(long j10, long j11, int i10) {
        return this.f2381b ? this.f2380a.r(j11) : y.g.f75999b.c();
    }
}

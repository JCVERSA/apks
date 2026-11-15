package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.input.nestedscroll.e;
import androidx.compose.ui.layout.m;
import androidx.compose.ui.node.LayoutNode;
import kotlin.coroutines.Continuation;
import y.g;

public abstract class c {

    private static final a f6209a = new a();

    public static final class a implements androidx.compose.ui.input.nestedscroll.b {
        a() {
        }

        @Override
        public long A0(long j10, int i10) {
            return androidx.compose.ui.input.nestedscroll.a.d(this, j10, i10);
        }

        @Override
        public Object G(long j10, long j11, Continuation continuation) {
            return androidx.compose.ui.input.nestedscroll.a.a(this, j10, j11, continuation);
        }

        @Override
        public Object H0(long j10, Continuation continuation) {
            return androidx.compose.ui.input.nestedscroll.a.c(this, j10, continuation);
        }

        @Override
        public long g0(long j10, long j11, int i10) {
            return androidx.compose.ui.input.nestedscroll.a.b(this, j10, j11, i10);
        }
    }

    public static final void f(View view, LayoutNode layoutNode) {
        long jE = m.e(layoutNode.o());
        int iRound = Math.round(g.m(jE));
        int iRound2 = Math.round(g.n(jE));
        view.layout(iRound, iRound2, view.getMeasuredWidth() + iRound, view.getMeasuredHeight() + iRound2);
    }

    public static final float g(int i10) {
        return i10 * (-1);
    }

    public static final float h(float f10) {
        return f10 * (-1.0f);
    }

    public static final int i(int i10) {
        return i10 == 0 ? e.f4630a.b() : e.f4630a.a();
    }
}

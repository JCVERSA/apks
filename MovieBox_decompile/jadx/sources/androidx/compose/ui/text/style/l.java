package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.y4;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;

public interface l {

    public static final a f6113a = a.f6114a;

    public static final class a {

        static final a f6114a = new a();

        private a() {
        }

        public final l a(j1 j1Var, float f10) {
            if (j1Var == null) {
                return b.f6115b;
            }
            if (j1Var instanceof b5) {
                return b(k.b(((b5) j1Var).b(), f10));
            }
            if (j1Var instanceof y4) {
                return new androidx.compose.ui.text.style.b((y4) j1Var, f10);
            }
            throw new NoWhenBranchMatchedException();
        }

        public final l b(long j10) {
            return j10 != 16 ? new c(j10, null) : b.f6115b;
        }
    }

    public static final class b implements l {

        public static final b f6115b = new b();

        private b() {
        }

        @Override
        public long a() {
            return u1.f4349b.e();
        }

        @Override
        public l b(Function0 function0) {
            return TextForegroundStyle$CC.b(this, function0);
        }

        @Override
        public l c(l lVar) {
            return TextForegroundStyle$CC.a(this, lVar);
        }

        @Override
        public j1 d() {
            return null;
        }

        @Override
        public float getAlpha() {
            return Float.NaN;
        }
    }

    long a();

    l b(Function0 function0);

    l c(l lVar);

    j1 d();

    float getAlpha();
}

package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.o0;

public abstract class LazyListStateKt {

    private static final float f2625a = o0.i.g(1);

    private static final m f2626b = new m(null, 0, false, 0.0f, new a(), 0.0f, false, o0.a(EmptyCoroutineContext.INSTANCE), o0.g.b(1.0f, 0.0f, 2, null), o0.c.b(0, 0, 0, 0, 15, null), CollectionsKt.l(), 0, 0, 0, false, Orientation.Vertical, 0, 0, null);

    public static final LazyListState c(final int i10, final int i11, androidx.compose.runtime.i iVar, int i12, int i13) {
        if ((i13 & 1) != 0) {
            i10 = 0;
        }
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1470655220, i12, -1, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:80)");
        }
        Object[] objArr = new Object[0];
        androidx.compose.runtime.saveable.d dVarA = LazyListState.f2597y.a();
        boolean z10 = ((((i12 & 14) ^ 6) > 4 && iVar.c(i10)) || (i12 & 6) == 4) | ((((i12 & 112) ^ 48) > 32 && iVar.c(i11)) || (i12 & 48) == 32);
        Object objY = iVar.y();
        if (z10 || objY == androidx.compose.runtime.i.f3427a.a()) {
            objY = new Function0<LazyListState>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final LazyListState invoke() {
                    return new LazyListState(i10, i11);
                }
            };
            iVar.p(objY);
        }
        LazyListState lazyListState = (LazyListState) RememberSaveableKt.c(objArr, dVarA, null, (Function0) objY, iVar, 0, 4);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return lazyListState;
    }

    public static final class a implements androidx.compose.ui.layout.v {

        private final int f2627a;

        private final int f2628b;

        private final Map f2629c = MapsKt.h();

        a() {
        }

        @Override
        public int getHeight() {
            return this.f2628b;
        }

        @Override
        public int getWidth() {
            return this.f2627a;
        }

        @Override
        public Map v() {
            return this.f2629c;
        }

        @Override
        public Function1 x() {
            return androidx.compose.ui.layout.u.a(this);
        }

        @Override
        public void w() {
        }
    }
}

package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.r2;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.reflect.KProperty0;

public abstract class LazyListItemProviderKt {
    public static final Function0 a(final LazyListState lazyListState, Function1 function1, androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-343736148, i10, -1, "androidx.compose.foundation.lazy.rememberLazyListItemProviderLambda (LazyListItemProvider.kt:43)");
        }
        final a3 a3VarI = r2.i(function1, iVar, (i10 >> 3) & 14);
        boolean z10 = (((i10 & 14) ^ 6) > 4 && iVar.O(lazyListState)) || (i10 & 6) == 4;
        Object objY = iVar.y();
        if (z10 || objY == androidx.compose.runtime.i.f3427a.a()) {
            final c cVar = new c();
            final a3 a3VarB = r2.b(r2.h(), new Function0<LazyListIntervalContent>() {
                {
                    super(0);
                }

                @Override
                public final LazyListIntervalContent invoke() {
                    return new LazyListIntervalContent((Function1) a3VarI.getValue());
                }
            });
            final a3 a3VarB2 = r2.b(r2.h(), new Function0<LazyListItemProviderImpl>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final LazyListItemProviderImpl invoke() {
                    LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) a3VarB.getValue();
                    return new LazyListItemProviderImpl(lazyListState, lazyListIntervalContent, cVar, new NearestRangeKeyIndexMap(lazyListState.v(), lazyListIntervalContent));
                }
            });
            objY = new PropertyReference0Impl(a3VarB2) {
                @Override
                public Object get() {
                    return ((a3) this.receiver).getValue();
                }
            };
            iVar.p(objY);
        }
        KProperty0 kProperty0 = (KProperty0) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return kProperty0;
    }
}

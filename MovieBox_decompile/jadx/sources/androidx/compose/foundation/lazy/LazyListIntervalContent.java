package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.c0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

public final class LazyListIntervalContent extends androidx.compose.foundation.lazy.layout.j implements u {

    private final c0 f2580a = new c0();

    private List f2581b;

    public LazyListIntervalContent(Function1 function1) {
        function1.invoke(this);
    }

    @Override
    public void a(final Object obj, final Object obj2, final Function3 function3) {
        c().b(1, new i(obj != null ? new Function1<Integer, Object>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj3) {
                return invoke(((Number) obj3).intValue());
            }

            public final Object invoke(int i10) {
                return obj;
            }
        } : null, new Function1<Integer, Object>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj3) {
                return invoke(((Number) obj3).intValue());
            }

            public final Object invoke(int i10) {
                return obj2;
            }
        }, androidx.compose.runtime.internal.b.b(-1010194746, true, new Function4<b, Integer, androidx.compose.runtime.i, Integer, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(4);
            }

            @Override
            public Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                invoke((b) obj3, ((Number) obj4).intValue(), (androidx.compose.runtime.i) obj5, ((Number) obj6).intValue());
                return Unit.f64096a;
            }

            public final void invoke(b bVar, int i10, androidx.compose.runtime.i iVar, int i11) {
                if ((i11 & 6) == 0) {
                    i11 |= iVar.O(bVar) ? 4 : 2;
                }
                if ((i11 & Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE) == 130 && iVar.h()) {
                    iVar.G();
                    return;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1010194746, i11, -1, "androidx.compose.foundation.lazy.LazyListIntervalContent.item.<anonymous> (LazyListIntervalContent.kt:58)");
                }
                function3.invoke(bVar, iVar, Integer.valueOf(i11 & 14));
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            }
        })));
    }

    public final List f() {
        List list = this.f2581b;
        return list == null ? CollectionsKt.l() : list;
    }

    @Override
    public c0 c() {
        return this.f2580a;
    }
}

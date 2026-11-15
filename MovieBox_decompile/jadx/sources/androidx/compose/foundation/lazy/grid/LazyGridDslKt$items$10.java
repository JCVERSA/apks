package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u000b¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "Landroidx/compose/foundation/lazy/grid/b;", "", "it", "", "invoke", "(Landroidx/compose/foundation/lazy/grid/b;ILandroidx/compose/runtime/i;I)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class LazyGridDslKt$items$10 extends Lambda implements Function4<b, Integer, i, Integer, Unit> {
    final Function4<b, Object, i, Integer, Unit> $itemContent;
    final Object[] $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$items$10(Function4<? super b, Object, ? super i, ? super Integer, Unit> function4, Object[] objArr) {
        super(4);
        this.$itemContent = function4;
        this.$items = objArr;
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        android.support.v4.media.session.c.a(obj);
        invoke((b) null, ((Number) obj2).intValue(), (i) obj3, ((Number) obj4).intValue());
        return Unit.f64096a;
    }

    public final void invoke(b bVar, int i10, i iVar, int i11) {
        int i12;
        if ((i11 & 6) == 0) {
            i12 = (iVar.O(bVar) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVar.c(i10) ? 32 : 16;
        }
        if ((i12 & 147) == 146 && iVar.h()) {
            iVar.G();
            return;
        }
        if (k.H()) {
            k.Q(407562193, i12, -1, "androidx.compose.foundation.lazy.grid.items.<anonymous> (LazyGridDsl.kt:532)");
        }
        this.$itemContent.invoke(bVar, this.$items[i10], iVar, Integer.valueOf(i12 & 14));
        if (k.H()) {
            k.P();
        }
    }
}

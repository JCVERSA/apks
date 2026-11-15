package androidx.compose.foundation.text;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
@SourceDebugExtension
public final class ContextMenu_androidKt$TextItem$2 extends Lambda implements Function0<Unit> {
    final Function0<Unit> $operation;
    final o.a $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextMenu_androidKt$TextItem$2(Function0<Unit> function0, o.a aVar) {
        super(0);
        this.$operation = function0;
        this.$state = aVar;
    }

    @Override
    public Object invoke() {
        m50invoke();
        return Unit.f64096a;
    }

    public final void m50invoke() {
        this.$operation.invoke();
        o.b.a(this.$state);
    }
}

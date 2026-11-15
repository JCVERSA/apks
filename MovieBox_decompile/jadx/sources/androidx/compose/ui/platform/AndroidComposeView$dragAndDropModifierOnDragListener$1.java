package androidx.compose.ui.platform;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class AndroidComposeView$dragAndDropModifierOnDragListener$1 extends FunctionReferenceImpl implements Function3<androidx.compose.ui.draganddrop.g, y.m, Function1<? super z.g, ? extends Unit>, Boolean> {
    AndroidComposeView$dragAndDropModifierOnDragListener$1(Object obj) {
        super(3, obj, AndroidComposeView.class, "startDrag", "startDrag-12SF9DM(Landroidx/compose/ui/draganddrop/DragAndDropTransferData;JLkotlin/jvm/functions/Function1;)Z", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        android.support.v4.media.session.c.a(obj);
        return m151invoke12SF9DM(null, ((y.m) obj2).m(), (Function1) obj3);
    }

    public final Boolean m151invoke12SF9DM(androidx.compose.ui.draganddrop.g gVar, long j10, Function1<? super z.g, Unit> function1) {
        return Boolean.valueOf(((AndroidComposeView) this.receiver).M(gVar, j10, function1));
    }
}

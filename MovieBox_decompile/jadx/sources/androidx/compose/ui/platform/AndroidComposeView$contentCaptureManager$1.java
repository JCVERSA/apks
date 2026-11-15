package androidx.compose.ui.platform;

import android.view.View;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class AndroidComposeView$contentCaptureManager$1 extends FunctionReferenceImpl implements Function0<androidx.compose.ui.platform.coreshims.d> {
    AndroidComposeView$contentCaptureManager$1(Object obj) {
        super(0, obj, AndroidComposeView_androidKt.class, "getContentCaptureSessionCompat", "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;", 1);
    }

    @Override
    public final androidx.compose.ui.platform.coreshims.d invoke() {
        return AndroidComposeView_androidKt.g((View) this.receiver);
    }
}

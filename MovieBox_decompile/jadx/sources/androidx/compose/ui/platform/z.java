package androidx.compose.ui.platform;

import android.view.View;
import android.view.translation.ViewTranslationCallback;
import kotlin.jvm.internal.Intrinsics;

final class z implements ViewTranslationCallback {

    public static final z f5578a = new z();

    private z() {
    }

    public boolean onClearTranslation(View view) {
        Intrinsics.f(view, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView");
        ((AndroidComposeView) view).getContentCaptureManager().n();
        return true;
    }

    public boolean onHideTranslation(View view) {
        Intrinsics.f(view, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView");
        ((AndroidComposeView) view).getContentCaptureManager().p();
        return true;
    }

    public boolean onShowTranslation(View view) {
        Intrinsics.f(view, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView");
        ((AndroidComposeView) view).getContentCaptureManager().s();
        return true;
    }
}

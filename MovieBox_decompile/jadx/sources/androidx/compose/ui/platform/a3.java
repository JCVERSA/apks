package androidx.compose.ui.platform;

import android.view.ViewParent;

public final class a3 {

    public static final a3 f5422a = new a3();

    private a3() {
    }

    public final void a(AndroidComposeView androidComposeView) {
        ViewParent parent = androidComposeView.getParent();
        if (parent != null) {
            parent.onDescendantInvalidated(androidComposeView, androidComposeView);
        }
    }
}

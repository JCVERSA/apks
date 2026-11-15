package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewStructure;

final class v {

    public static final v f5558a = new v();

    private v() {
    }

    public final void a(ViewStructure viewStructure, View view) {
        viewStructure.setClassName(view.getAccessibilityClassName().toString());
    }
}

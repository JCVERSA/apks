package androidx.compose.ui.platform;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class i implements h {

    private static final a f5492b = new a(null);

    public static final int f5493c = 8;

    private final AccessibilityManager f5494a;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public i(Context context) {
        Object systemService = context.getSystemService("accessibility");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        this.f5494a = (AccessibilityManager) systemService;
    }
}

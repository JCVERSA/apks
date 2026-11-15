package defpackage;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b5 {
    public static final a b = new a(null);
    public static Boolean c;
    public final boolean a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            y45.j(context, "context");
            if (b() != null) {
                return;
            }
            Object systemService = context.getSystemService("accessibility");
            AccessibilityManager accessibilityManager = systemService instanceof AccessibilityManager ? (AccessibilityManager) systemService : null;
            c(accessibilityManager != null ? Boolean.valueOf(accessibilityManager.isTouchExplorationEnabled()) : Boolean.FALSE);
        }

        public final Boolean b() {
            return b5.c;
        }

        public final void c(Boolean bool) {
            b5.c = bool;
        }

        public a() {
        }
    }

    public b5(boolean z) {
        this.a = z;
    }

    public final boolean c(Context context) {
        y45.j(context, "context");
        if (!this.a) {
            return false;
        }
        Boolean bool = c;
        if (bool != null) {
            y45.g(bool);
            return bool.booleanValue();
        }
        b.a(context);
        Boolean bool2 = c;
        y45.g(bool2);
        return bool2.booleanValue();
    }
}

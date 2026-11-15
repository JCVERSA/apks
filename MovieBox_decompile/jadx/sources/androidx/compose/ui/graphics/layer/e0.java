package androidx.compose.ui.graphics.layer;

import android.os.Build;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class e0 {

    public static final a f4282a = new a(null);

    private static final boolean f4283b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return e0.f4283b;
        }

        private a() {
        }
    }

    static {
        String lowerCase = Build.FINGERPRINT.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        f4283b = Intrinsics.c(lowerCase, "robolectric");
    }
}

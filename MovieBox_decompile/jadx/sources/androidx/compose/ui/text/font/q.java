package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;

public final class q {

    public static final q f5861a = new q();

    private q() {
    }

    public final int a(Context context) {
        if (Build.VERSION.SDK_INT >= 31) {
            return r.f5862a.a(context);
        }
        return 0;
    }
}

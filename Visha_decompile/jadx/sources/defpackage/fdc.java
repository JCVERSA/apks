package defpackage;

import android.view.View;

public abstract class fdc {
    public static void a(View view, float f) {
        if (view == null) {
            return;
        }
        view.setClipToOutline(true);
        view.setOutlineProvider(new aw8(f));
    }
}

package defpackage;

import android.view.View;

public final class gdc {
    public static final gdc a = new gdc();

    public final void a(View view, float f) {
        if (view == null) {
            return;
        }
        view.setClipToOutline(true);
        view.setOutlineProvider(new bw8(f));
    }
}

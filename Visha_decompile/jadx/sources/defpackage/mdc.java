package defpackage;

import android.graphics.Rect;
import android.view.View;

public class mdc {
    public final Rect a = new Rect();

    public int a(View view) {
        y45.j(view, "view");
        if (!view.isShown() || !view.getGlobalVisibleRect(this.a)) {
            return 0;
        }
        return ((this.a.width() * this.a.height()) * 100) / (view.getWidth() * view.getHeight());
    }

    public boolean b(View view) {
        y45.j(view, "view");
        return view.isShown() && view.getGlobalVisibleRect(this.a) && view.getWidth() == this.a.width() && view.getHeight() == this.a.height();
    }
}

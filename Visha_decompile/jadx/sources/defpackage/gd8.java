package defpackage;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;

public final class gd8 implements View.OnTouchListener {
    public final PopupWindow b;
    public final View c;
    public final boolean d;
    public final boolean e;
    public final Rect f;

    public gd8(PopupWindow popupWindow, View view, boolean z, boolean z2) {
        y45.j(popupWindow, "popupWindow");
        y45.j(view, "tooltipView");
        this.b = popupWindow;
        this.c = view;
        this.d = z;
        this.e = z2;
        this.f = new Rect();
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        y45.j(view, "view");
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        this.c.getHitRect(this.f);
        if (this.f.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        if (this.e) {
            this.b.dismiss();
        }
        return this.d;
    }
}

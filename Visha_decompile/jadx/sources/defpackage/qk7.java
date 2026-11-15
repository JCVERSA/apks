package defpackage;

import android.app.Activity;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;

public abstract class qk7 extends PopupWindow {
    public WeakReference b;
    public View c;

    public qk7(Activity activity, AttributeSet attributeSet, int i, int i2) {
        super(activity, attributeSet, i, i2);
        this.b = new WeakReference(activity);
        setContentView(a());
        b();
    }

    public abstract View a();

    public void b() {
        setOutsideTouchable(true);
        c();
    }

    public abstract void c();
}

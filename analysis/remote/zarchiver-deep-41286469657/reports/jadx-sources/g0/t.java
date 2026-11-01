package g0;

import android.widget.PopupWindow;

public final class t implements PopupWindow.OnDismissListener {

    public final v f1044a;

    public t(v vVar) {
        this.f1044a = vVar;
    }

    @Override
    public final void onDismiss() {
        this.f1044a.e();
    }
}

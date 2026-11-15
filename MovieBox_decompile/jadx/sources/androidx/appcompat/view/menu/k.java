package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.R$dimen;
import androidx.core.view.GravityCompat;

public class k {

    private final Context f1198a;

    private final f f1199b;

    private final boolean f1200c;

    private final int f1201d;

    private final int f1202e;

    private View f1203f;

    private int f1204g;

    private boolean f1205h;

    private l.a f1206i;

    private j f1207j;

    private PopupWindow.OnDismissListener f1208k;

    private final PopupWindow.OnDismissListener f1209l;

    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override
        public void onDismiss() {
            k.this.e();
        }
    }

    public k(Context context, f fVar, View view, boolean z10, int i10) {
        this(context, fVar, view, z10, i10, 0);
    }

    private j a() {
        Display defaultDisplay = ((WindowManager) this.f1198a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        j cascadingMenuPopup = Math.min(point.x, point.y) >= this.f1198a.getResources().getDimensionPixelSize(R$dimen.abc_cascading_menus_min_smallest_width) ? new CascadingMenuPopup(this.f1198a, this.f1203f, this.f1201d, this.f1202e, this.f1200c) : new p(this.f1198a, this.f1199b, this.f1203f, this.f1201d, this.f1202e, this.f1200c);
        cascadingMenuPopup.l(this.f1199b);
        cascadingMenuPopup.v(this.f1209l);
        cascadingMenuPopup.q(this.f1203f);
        cascadingMenuPopup.d(this.f1206i);
        cascadingMenuPopup.s(this.f1205h);
        cascadingMenuPopup.t(this.f1204g);
        return cascadingMenuPopup;
    }

    private void l(int i10, int i11, boolean z10, boolean z11) {
        j jVarC = c();
        jVarC.w(z11);
        if (z10) {
            if ((GravityCompat.getAbsoluteGravity(this.f1204g, this.f1203f.getLayoutDirection()) & 7) == 5) {
                i10 -= this.f1203f.getWidth();
            }
            jVarC.u(i10);
            jVarC.x(i11);
            int i12 = (int) ((this.f1198a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            jVarC.r(new Rect(i10 - i12, i11 - i12, i10 + i12, i11 + i12));
        }
        jVarC.show();
    }

    public void b() {
        if (d()) {
            this.f1207j.dismiss();
        }
    }

    public j c() {
        if (this.f1207j == null) {
            this.f1207j = a();
        }
        return this.f1207j;
    }

    public boolean d() {
        j jVar = this.f1207j;
        return jVar != null && jVar.a();
    }

    protected void e() {
        this.f1207j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1208k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(View view) {
        this.f1203f = view;
    }

    public void g(boolean z10) {
        this.f1205h = z10;
        j jVar = this.f1207j;
        if (jVar != null) {
            jVar.s(z10);
        }
    }

    public void h(int i10) {
        this.f1204g = i10;
    }

    public void i(PopupWindow.OnDismissListener onDismissListener) {
        this.f1208k = onDismissListener;
    }

    public void j(l.a aVar) {
        this.f1206i = aVar;
        j jVar = this.f1207j;
        if (jVar != null) {
            jVar.d(aVar);
        }
    }

    public void k() {
        if (!m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f1203f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i10, int i11) {
        if (d()) {
            return true;
        }
        if (this.f1203f == null) {
            return false;
        }
        l(i10, i11, true, true);
        return true;
    }

    public k(Context context, f fVar, View view, boolean z10, int i10, int i11) {
        this.f1204g = GravityCompat.START;
        this.f1209l = new a();
        this.f1198a = context;
        this.f1199b = fVar;
        this.f1203f = view;
        this.f1200c = z10;
        this.f1201d = i10;
        this.f1202e = i11;
    }
}

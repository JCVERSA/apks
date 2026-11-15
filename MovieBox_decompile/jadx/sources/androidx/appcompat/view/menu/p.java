package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import androidx.appcompat.widget.MenuPopupWindow;

final class p extends j implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, l, View.OnKeyListener {

    private static final int f1212v = R$layout.abc_popup_menu_item_layout;

    private final Context f1213b;

    private final f f1214c;

    private final e f1215d;

    private final boolean f1216e;

    private final int f1217f;

    private final int f1218g;

    private final int f1219h;

    final MenuPopupWindow f1220i;

    private PopupWindow.OnDismissListener f1223l;

    private View f1224m;

    View f1225n;

    private l.a f1226o;

    ViewTreeObserver f1227p;

    private boolean f1228q;

    private boolean f1229r;

    private int f1230s;

    private boolean f1232u;

    final ViewTreeObserver.OnGlobalLayoutListener f1221j = new a();

    private final View.OnAttachStateChangeListener f1222k = new b();

    private int f1231t = 0;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override
        public void onGlobalLayout() {
            if (!p.this.a() || p.this.f1220i.A()) {
                return;
            }
            View view = p.this.f1225n;
            if (view == null || !view.isShown()) {
                p.this.dismiss();
            } else {
                p.this.f1220i.show();
            }
        }
    }

    public p(Context context, f fVar, View view, int i10, int i11, boolean z10) {
        this.f1213b = context;
        this.f1214c = fVar;
        this.f1216e = z10;
        this.f1215d = new e(fVar, LayoutInflater.from(context), z10, f1212v);
        this.f1218g = i10;
        this.f1219h = i11;
        Resources resources = context.getResources();
        this.f1217f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.f1224m = view;
        this.f1220i = new MenuPopupWindow(context, null, i10, i11);
        fVar.c(this, context);
    }

    private boolean A() {
        View view;
        if (a()) {
            return true;
        }
        if (this.f1228q || (view = this.f1224m) == null) {
            return false;
        }
        this.f1225n = view;
        this.f1220i.J(this);
        this.f1220i.K(this);
        this.f1220i.I(true);
        View view2 = this.f1225n;
        boolean z10 = this.f1227p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f1227p = viewTreeObserver;
        if (z10) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f1221j);
        }
        view2.addOnAttachStateChangeListener(this.f1222k);
        this.f1220i.C(view2);
        this.f1220i.F(this.f1231t);
        if (!this.f1229r) {
            this.f1230s = j.p(this.f1215d, null, this.f1213b, this.f1217f);
            this.f1229r = true;
        }
        this.f1220i.E(this.f1230s);
        this.f1220i.H(2);
        this.f1220i.G(n());
        this.f1220i.show();
        ListView listViewO = this.f1220i.o();
        listViewO.setOnKeyListener(this);
        if (this.f1232u && this.f1214c.z() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1213b).inflate(R$layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewO, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f1214c.z());
            }
            frameLayout.setEnabled(false);
            listViewO.addHeaderView(frameLayout, null, false);
        }
        this.f1220i.m(this.f1215d);
        this.f1220i.show();
        return true;
    }

    @Override
    public boolean a() {
        return !this.f1228q && this.f1220i.a();
    }

    @Override
    public void b(f fVar, boolean z10) {
        if (fVar != this.f1214c) {
            return;
        }
        dismiss();
        l.a aVar = this.f1226o;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override
    public void d(l.a aVar) {
        this.f1226o = aVar;
    }

    @Override
    public void dismiss() {
        if (a()) {
            this.f1220i.dismiss();
        }
    }

    @Override
    public boolean f(q qVar) {
        if (qVar.hasVisibleItems()) {
            k kVar = new k(this.f1213b, qVar, this.f1225n, this.f1216e, this.f1218g, this.f1219h);
            kVar.j(this.f1226o);
            kVar.g(j.y(qVar));
            kVar.i(this.f1223l);
            this.f1223l = null;
            this.f1214c.e(false);
            int iC = this.f1220i.c();
            int iL = this.f1220i.l();
            if ((Gravity.getAbsoluteGravity(this.f1231t, this.f1224m.getLayoutDirection()) & 7) == 5) {
                iC += this.f1224m.getWidth();
            }
            if (kVar.n(iC, iL)) {
                l.a aVar = this.f1226o;
                if (aVar == null) {
                    return true;
                }
                aVar.c(qVar);
                return true;
            }
        }
        return false;
    }

    @Override
    public Parcelable g() {
        return null;
    }

    @Override
    public void h(boolean z10) {
        this.f1229r = false;
        e eVar = this.f1215d;
        if (eVar != null) {
            eVar.notifyDataSetChanged();
        }
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public ListView o() {
        return this.f1220i.o();
    }

    @Override
    public void onDismiss() {
        this.f1228q = true;
        this.f1214c.close();
        ViewTreeObserver viewTreeObserver = this.f1227p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1227p = this.f1225n.getViewTreeObserver();
            }
            this.f1227p.removeGlobalOnLayoutListener(this.f1221j);
            this.f1227p = null;
        }
        this.f1225n.removeOnAttachStateChangeListener(this.f1222k);
        PopupWindow.OnDismissListener onDismissListener = this.f1223l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override
    public void q(View view) {
        this.f1224m = view;
    }

    @Override
    public void s(boolean z10) {
        this.f1215d.d(z10);
    }

    @Override
    public void show() {
        if (!A()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override
    public void t(int i10) {
        this.f1231t = i10;
    }

    @Override
    public void u(int i10) {
        this.f1220i.e(i10);
    }

    @Override
    public void v(PopupWindow.OnDismissListener onDismissListener) {
        this.f1223l = onDismissListener;
    }

    @Override
    public void w(boolean z10) {
        this.f1232u = z10;
    }

    @Override
    public void x(int i10) {
        this.f1220i.i(i10);
    }

    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = p.this.f1227p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    p.this.f1227p = view.getViewTreeObserver();
                }
                p pVar = p.this;
                pVar.f1227p.removeGlobalOnLayoutListener(pVar.f1221j);
            }
            view.removeOnAttachStateChangeListener(this);
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }
    }

    @Override
    public void e(Parcelable parcelable) {
    }

    @Override
    public void l(f fVar) {
    }
}

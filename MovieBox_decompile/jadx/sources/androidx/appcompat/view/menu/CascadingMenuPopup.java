package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.appcompat.widget.a0;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class CascadingMenuPopup extends j implements l, View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int B = R$layout.abc_cascading_menu_item_layout;
    boolean A;

    private final Context f1028b;

    private final int f1029c;

    private final int f1030d;

    private final int f1031e;

    private final boolean f1032f;

    final Handler f1033g;

    private View f1041o;

    View f1042p;

    private boolean f1044r;

    private boolean f1045s;

    private int f1046t;

    private int f1047u;

    private boolean f1049w;

    private l.a f1050x;

    ViewTreeObserver f1051y;

    private PopupWindow.OnDismissListener f1052z;

    private final List f1034h = new ArrayList();

    final List f1035i = new ArrayList();

    final ViewTreeObserver.OnGlobalLayoutListener f1036j = new a();

    private final View.OnAttachStateChangeListener f1037k = new b();

    private final a0 f1038l = new a0() {
        @Override
        public void d(final f fVar, final MenuItem menuItem) {
            CascadingMenuPopup.this.f1033g.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.f1035i.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    i10 = -1;
                    break;
                } else if (fVar == ((c) CascadingMenuPopup.this.f1035i.get(i10)).f1057b) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 == -1) {
                return;
            }
            int i11 = i10 + 1;
            final c cVar = i11 < CascadingMenuPopup.this.f1035i.size() ? (c) CascadingMenuPopup.this.f1035i.get(i11) : null;
            CascadingMenuPopup.this.f1033g.postAtTime(new Runnable() {
                @Override
                public void run() {
                    c cVar2 = cVar;
                    if (cVar2 != null) {
                        CascadingMenuPopup.this.A = true;
                        cVar2.f1057b.e(false);
                        CascadingMenuPopup.this.A = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        fVar.O(menuItem, 4);
                    }
                }
            }, fVar, SystemClock.uptimeMillis() + 200);
        }

        @Override
        public void n(f fVar, MenuItem menuItem) {
            CascadingMenuPopup.this.f1033g.removeCallbacksAndMessages(fVar);
        }
    };

    private int f1039m = 0;

    private int f1040n = 0;

    private boolean f1048v = false;

    private int f1043q = E();

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override
        public void onGlobalLayout() {
            if (!CascadingMenuPopup.this.a() || CascadingMenuPopup.this.f1035i.size() <= 0 || ((c) CascadingMenuPopup.this.f1035i.get(0)).f1056a.A()) {
                return;
            }
            View view = CascadingMenuPopup.this.f1042p;
            if (view == null || !view.isShown()) {
                CascadingMenuPopup.this.dismiss();
                return;
            }
            Iterator it = CascadingMenuPopup.this.f1035i.iterator();
            while (it.hasNext()) {
                ((c) it.next()).f1056a.show();
            }
        }
    }

    private static class c {

        public final MenuPopupWindow f1056a;

        public final f f1057b;

        public final int f1058c;

        public c(MenuPopupWindow menuPopupWindow, f fVar, int i10) {
            this.f1056a = menuPopupWindow;
            this.f1057b = fVar;
            this.f1058c = i10;
        }

        public ListView a() {
            return this.f1056a.o();
        }
    }

    public CascadingMenuPopup(Context context, View view, int i10, int i11, boolean z10) {
        this.f1028b = context;
        this.f1041o = view;
        this.f1030d = i10;
        this.f1031e = i11;
        this.f1032f = z10;
        Resources resources = context.getResources();
        this.f1029c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.f1033g = new Handler();
    }

    private MenuPopupWindow A() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f1028b, null, this.f1030d, this.f1031e);
        menuPopupWindow.T(this.f1038l);
        menuPopupWindow.K(this);
        menuPopupWindow.J(this);
        menuPopupWindow.C(this.f1041o);
        menuPopupWindow.F(this.f1040n);
        menuPopupWindow.I(true);
        menuPopupWindow.H(2);
        return menuPopupWindow;
    }

    private int B(f fVar) {
        int size = this.f1035i.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (fVar == ((c) this.f1035i.get(i10)).f1057b) {
                return i10;
            }
        }
        return -1;
    }

    private MenuItem C(f fVar, f fVar2) {
        int size = fVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = fVar.getItem(i10);
            if (item.hasSubMenu() && fVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View D(c cVar, f fVar) {
        e eVar;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemC = C(cVar.f1057b, fVar);
        if (menuItemC == null) {
            return null;
        }
        ListView listViewA = cVar.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i10 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            eVar = (e) headerViewListAdapter.getWrappedAdapter();
        } else {
            eVar = (e) adapter;
            headersCount = 0;
        }
        int count = eVar.getCount();
        while (true) {
            if (i10 >= count) {
                i10 = -1;
                break;
            }
            if (menuItemC == eVar.getItem(i10)) {
                break;
            }
            i10++;
        }
        if (i10 != -1 && (firstVisiblePosition = (i10 + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int E() {
        return this.f1041o.getLayoutDirection() == 1 ? 0 : 1;
    }

    private int F(int i10) {
        List list = this.f1035i;
        ListView listViewA = ((c) list.get(list.size() - 1)).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f1042p.getWindowVisibleDisplayFrame(rect);
        if (this.f1043q == 1) {
            return (iArr[0] + listViewA.getWidth()) + i10 > rect.right ? 0 : 1;
        }
        return iArr[0] - i10 < 0 ? 1 : 0;
    }

    private void G(f fVar) {
        c cVar;
        View viewD;
        int i10;
        int i11;
        int i12;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1028b);
        e eVar = new e(fVar, layoutInflaterFrom, this.f1032f, B);
        if (!a() && this.f1048v) {
            eVar.d(true);
        } else if (a()) {
            eVar.d(j.y(fVar));
        }
        int iP = j.p(eVar, null, this.f1028b, this.f1029c);
        MenuPopupWindow menuPopupWindowA = A();
        menuPopupWindowA.m(eVar);
        menuPopupWindowA.E(iP);
        menuPopupWindowA.F(this.f1040n);
        if (this.f1035i.size() > 0) {
            List list = this.f1035i;
            cVar = (c) list.get(list.size() - 1);
            viewD = D(cVar, fVar);
        } else {
            cVar = null;
            viewD = null;
        }
        if (viewD != null) {
            menuPopupWindowA.U(false);
            menuPopupWindowA.R(null);
            int iF = F(iP);
            boolean z10 = iF == 1;
            this.f1043q = iF;
            if (Build.VERSION.SDK_INT >= 26) {
                menuPopupWindowA.C(viewD);
                i11 = 0;
                i10 = 0;
            } else {
                int[] iArr = new int[2];
                this.f1041o.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewD.getLocationOnScreen(iArr2);
                if ((this.f1040n & 7) == 5) {
                    iArr[0] = iArr[0] + this.f1041o.getWidth();
                    iArr2[0] = iArr2[0] + viewD.getWidth();
                }
                i10 = iArr2[0] - iArr[0];
                i11 = iArr2[1] - iArr[1];
            }
            if ((this.f1040n & 5) == 5) {
                if (z10) {
                    i12 = i10 + iP;
                } else {
                    iP = viewD.getWidth();
                    i12 = i10 - iP;
                }
            } else if (z10) {
                iP = viewD.getWidth();
                i12 = i10 + iP;
            } else {
                i12 = i10 - iP;
            }
            menuPopupWindowA.e(i12);
            menuPopupWindowA.M(true);
            menuPopupWindowA.i(i11);
        } else {
            if (this.f1044r) {
                menuPopupWindowA.e(this.f1046t);
            }
            if (this.f1045s) {
                menuPopupWindowA.i(this.f1047u);
            }
            menuPopupWindowA.G(n());
        }
        this.f1035i.add(new c(menuPopupWindowA, fVar, this.f1043q));
        menuPopupWindowA.show();
        ListView listViewO = menuPopupWindowA.o();
        listViewO.setOnKeyListener(this);
        if (cVar == null && this.f1049w && fVar.z() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R$layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewO, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(fVar.z());
            listViewO.addHeaderView(frameLayout, null, false);
            menuPopupWindowA.show();
        }
    }

    @Override
    public boolean a() {
        return this.f1035i.size() > 0 && ((c) this.f1035i.get(0)).f1056a.a();
    }

    @Override
    public void b(f fVar, boolean z10) {
        int iB = B(fVar);
        if (iB < 0) {
            return;
        }
        int i10 = iB + 1;
        if (i10 < this.f1035i.size()) {
            ((c) this.f1035i.get(i10)).f1057b.e(false);
        }
        c cVar = (c) this.f1035i.remove(iB);
        cVar.f1057b.R(this);
        if (this.A) {
            cVar.f1056a.S(null);
            cVar.f1056a.D(0);
        }
        cVar.f1056a.dismiss();
        int size = this.f1035i.size();
        if (size > 0) {
            this.f1043q = ((c) this.f1035i.get(size - 1)).f1058c;
        } else {
            this.f1043q = E();
        }
        if (size != 0) {
            if (z10) {
                ((c) this.f1035i.get(0)).f1057b.e(false);
                return;
            }
            return;
        }
        dismiss();
        l.a aVar = this.f1050x;
        if (aVar != null) {
            aVar.b(fVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f1051y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f1051y.removeGlobalOnLayoutListener(this.f1036j);
            }
            this.f1051y = null;
        }
        this.f1042p.removeOnAttachStateChangeListener(this.f1037k);
        this.f1052z.onDismiss();
    }

    @Override
    public void d(l.a aVar) {
        this.f1050x = aVar;
    }

    @Override
    public void dismiss() {
        int size = this.f1035i.size();
        if (size > 0) {
            c[] cVarArr = (c[]) this.f1035i.toArray(new c[size]);
            for (int i10 = size - 1; i10 >= 0; i10--) {
                c cVar = cVarArr[i10];
                if (cVar.f1056a.a()) {
                    cVar.f1056a.dismiss();
                }
            }
        }
    }

    @Override
    public boolean f(q qVar) {
        for (c cVar : this.f1035i) {
            if (qVar == cVar.f1057b) {
                cVar.a().requestFocus();
                return true;
            }
        }
        if (!qVar.hasVisibleItems()) {
            return false;
        }
        l(qVar);
        l.a aVar = this.f1050x;
        if (aVar != null) {
            aVar.c(qVar);
        }
        return true;
    }

    @Override
    public Parcelable g() {
        return null;
    }

    @Override
    public void h(boolean z10) {
        Iterator it = this.f1035i.iterator();
        while (it.hasNext()) {
            j.z(((c) it.next()).a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public void l(f fVar) {
        fVar.c(this, this.f1028b);
        if (a()) {
            G(fVar);
        } else {
            this.f1034h.add(fVar);
        }
    }

    @Override
    protected boolean m() {
        return false;
    }

    @Override
    public ListView o() {
        if (this.f1035i.isEmpty()) {
            return null;
        }
        List list = this.f1035i;
        return ((c) list.get(list.size() - 1)).a();
    }

    @Override
    public void onDismiss() {
        c cVar;
        int size = this.f1035i.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                cVar = null;
                break;
            }
            cVar = (c) this.f1035i.get(i10);
            if (!cVar.f1056a.a()) {
                break;
            } else {
                i10++;
            }
        }
        if (cVar != null) {
            cVar.f1057b.e(false);
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
        if (this.f1041o != view) {
            this.f1041o = view;
            this.f1040n = GravityCompat.getAbsoluteGravity(this.f1039m, view.getLayoutDirection());
        }
    }

    @Override
    public void s(boolean z10) {
        this.f1048v = z10;
    }

    @Override
    public void show() {
        if (a()) {
            return;
        }
        Iterator it = this.f1034h.iterator();
        while (it.hasNext()) {
            G((f) it.next());
        }
        this.f1034h.clear();
        View view = this.f1041o;
        this.f1042p = view;
        if (view != null) {
            boolean z10 = this.f1051y == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f1051y = viewTreeObserver;
            if (z10) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f1036j);
            }
            this.f1042p.addOnAttachStateChangeListener(this.f1037k);
        }
    }

    @Override
    public void t(int i10) {
        if (this.f1039m != i10) {
            this.f1039m = i10;
            this.f1040n = GravityCompat.getAbsoluteGravity(i10, this.f1041o.getLayoutDirection());
        }
    }

    @Override
    public void u(int i10) {
        this.f1044r = true;
        this.f1046t = i10;
    }

    @Override
    public void v(PopupWindow.OnDismissListener onDismissListener) {
        this.f1052z = onDismissListener;
    }

    @Override
    public void w(boolean z10) {
        this.f1049w = z10;
    }

    @Override
    public void x(int i10) {
        this.f1045s = true;
        this.f1047u = i10;
    }

    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = CascadingMenuPopup.this.f1051y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.f1051y = view.getViewTreeObserver();
                }
                CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
                cascadingMenuPopup.f1051y.removeGlobalOnLayoutListener(cascadingMenuPopup.f1036j);
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
}

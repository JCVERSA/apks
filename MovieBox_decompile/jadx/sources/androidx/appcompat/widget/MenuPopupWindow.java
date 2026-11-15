package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

public class MenuPopupWindow extends ListPopupWindow implements a0 {
    private static Method K;
    private a0 J;

    public static class MenuDropDownListView extends DropDownListView {

        final int f1502n;

        final int f1503o;

        private a0 f1504p;

        private MenuItem f1505q;

        public MenuDropDownListView(Context context, boolean z10) {
            super(context, z10);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.f1502n = 21;
                this.f1503o = 22;
            } else {
                this.f1502n = 22;
                this.f1503o = 21;
            }
        }

        public void clearSelection() {
            setSelection(-1);
        }

        @Override
        public boolean hasFocus() {
            return super.hasFocus();
        }

        @Override
        public boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override
        public boolean isFocused() {
            return super.isFocused();
        }

        @Override
        public boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override
        public int lookForSelectablePosition(int i10, boolean z10) {
            return super.lookForSelectablePosition(i10, z10);
        }

        @Override
        public int measureHeightOfChildrenCompat(int i10, int i11, int i12, int i13, int i14) {
            return super.measureHeightOfChildrenCompat(i10, i11, i12, i13, i14);
        }

        @Override
        public boolean onForwardedEvent(MotionEvent motionEvent, int i10) {
            return super.onForwardedEvent(motionEvent, i10);
        }

        @Override
        public boolean onHoverEvent(MotionEvent motionEvent) {
            androidx.appcompat.view.menu.e eVar;
            int headersCount;
            int iPointToPosition;
            int i10;
            if (this.f1504p != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    eVar = (androidx.appcompat.view.menu.e) headerViewListAdapter.getWrappedAdapter();
                } else {
                    eVar = (androidx.appcompat.view.menu.e) adapter;
                    headersCount = 0;
                }
                androidx.appcompat.view.menu.h item = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i10 = iPointToPosition - headersCount) < 0 || i10 >= eVar.getCount()) ? null : eVar.getItem(i10);
                MenuItem menuItem = this.f1505q;
                if (menuItem != item) {
                    androidx.appcompat.view.menu.f fVarB = eVar.b();
                    if (menuItem != null) {
                        this.f1504p.n(fVarB, menuItem);
                    }
                    this.f1505q = item;
                    if (item != null) {
                        this.f1504p.d(fVarB, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override
        public boolean onKeyDown(int i10, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i10 == this.f1502n) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i10 != this.f1503o) {
                return super.onKeyDown(i10, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (androidx.appcompat.view.menu.e) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (androidx.appcompat.view.menu.e) adapter).b().e(false);
            return true;
        }

        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(a0 a0Var) {
            this.f1504p = a0Var;
        }

        @Override
        public void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static class a {
        static void a(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        static void b(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    static class b {
        static void a(PopupWindow popupWindow, boolean z10) {
            popupWindow.setTouchModal(z10);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                K = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    public void R(Object obj) {
        a.a(this.F, (Transition) obj);
    }

    public void S(Object obj) {
        a.b(this.F, (Transition) obj);
    }

    public void T(a0 a0Var) {
        this.J = a0Var;
    }

    public void U(boolean z10) {
        if (Build.VERSION.SDK_INT > 28) {
            b.a(this.F, z10);
            return;
        }
        Method method = K;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z10));
            } catch (Exception unused) {
            }
        }
    }

    @Override
    public void d(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        a0 a0Var = this.J;
        if (a0Var != null) {
            a0Var.d(fVar, menuItem);
        }
    }

    @Override
    public void n(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        a0 a0Var = this.J;
        if (a0Var != null) {
            a0Var.n(fVar, menuItem);
        }
    }

    @Override
    DropDownListView r(Context context, boolean z10) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z10);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }
}

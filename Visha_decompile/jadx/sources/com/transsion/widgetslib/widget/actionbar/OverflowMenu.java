package com.transsion.widgetslib.widget.actionbar;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import com.transsion.widgetslib.R;
import defpackage.gc8;
import defpackage.hc8;
import java.util.ArrayList;
import java.util.Iterator;

public class OverflowMenu extends View {
    public static boolean q = false;
    public int b;
    public int c;
    public ArrayList d;
    public hc8 e;
    public Paint f;
    public int g;
    public int h;
    public final Resources i;
    public PopupMenu j;
    public View.OnClickListener k;
    public Fragment l;
    public Activity m;
    public d mPopMenuListener;
    public int n;
    public boolean o;
    public Handler p;

    public class a extends Handler {
        public a() {
        }

        @Override
        public void handleMessage(Message message) {
            if (OverflowMenu.this.j != null) {
                OverflowMenu.this.j.getMenu().clear();
                OverflowMenu.this.j.inflate(OverflowMenu.this.n);
            }
        }
    }

    public class b implements PopupMenu.OnMenuItemClickListener {
        public b() {
        }

        @Override
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (OverflowMenu.this.m != null) {
                OverflowMenu.this.m.onOptionsItemSelected(menuItem);
            }
            if (OverflowMenu.this.l == null) {
                return false;
            }
            OverflowMenu.this.l.onOptionsItemSelected(menuItem);
            return false;
        }
    }

    public class c implements PopupMenu.OnDismissListener {
        public c() {
        }

        @Override
        public void onDismiss(PopupMenu popupMenu) {
            OverflowMenu.this.o = false;
            OverflowMenu.this.setSelected(false);
        }
    }

    public interface d {
    }

    public OverflowMenu(Context context) {
        this(context, null);
    }

    public void dismiss() {
        PopupMenu popupMenu = this.j;
        if (popupMenu != null) {
            popupMenu.dismiss();
        }
    }

    public final void f(int i) {
        if (i == 1) {
            this.j = new PopupMenu(getContext(), this, 0, 0, R.style.OsPopupMenuStyle);
        } else {
            this.j = new PopupMenu(getContext(), this, 0, 0, R.style.OsPopupMenuStyle);
        }
        this.j.setOnMenuItemClickListener(new b());
        this.j.setOnDismissListener(new c());
    }

    public final void g() {
        Paint paint = new Paint();
        this.f = paint;
        paint.setAntiAlias(true);
        this.f.setDither(true);
        this.f.setColor(this.c);
    }

    public PopupMenu getPopWindow() {
        return this.j;
    }

    @Override
    @SuppressLint({"WrongConstant"})
    public void getWindowVisibleDisplayFrame(Rect rect) {
        Resources resources;
        super.getWindowVisibleDisplayFrame(rect);
        if (this.m == null || getDisplay() == null || (resources = this.i) == null) {
            return;
        }
        int dimensionPixelSize = rect.bottom - resources.getDimensionPixelSize(R.dimen.os_shadowbutton_width_height);
        rect.bottom = dimensionPixelSize;
        if (q && dimensionPixelSize - rect.top > 0) {
            rect.top = dimensionPixelSize - (this.h * 4);
        } else if (getDisplay().getRotation() % 2 != 0) {
            rect.top = rect.bottom - (this.h * 4);
        } else {
            rect.top = rect.bottom - (this.h * 6);
        }
    }

    public final void h(int i) {
        int i2 = i / 2;
        this.e.f(i2, i2);
        int layoutDirection = getLayoutDirection();
        this.g = layoutDirection;
        this.e.g(layoutDirection, this.d);
    }

    public boolean isShowing() {
        return this.o;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.g != configuration.getLayoutDirection()) {
            requestLayout();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.e.a();
        PopupMenu popupMenu = this.j;
        if (popupMenu != null) {
            popupMenu.dismiss();
        }
        this.j = null;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((gc8) it.next()).a(canvas, this.f);
        }
        hc8 hc8Var = this.e;
        if (hc8Var.f == 4) {
            hc8Var.i();
        }
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        h(this.b);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b == 0) {
            this.b = getMeasuredWidth();
        }
    }

    public void onMultiWindowModeChanged(boolean z) {
        q = z;
    }

    @Override
    public boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        setSelected(true);
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.k;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
        return true;
    }

    public void setActivity(Activity activity) {
        this.m = activity;
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            setOverMenuColor(-10461088);
        } else {
            setOverMenuColor(this.c & Integer.MAX_VALUE);
        }
    }

    public void setFragment(Fragment fragment) {
        this.l = fragment;
    }

    public void setOnPopMenuListener(d dVar) {
        f(this.g);
    }

    @Deprecated
    public void setOutOnClickListener(View.OnClickListener onClickListener) {
        this.k = onClickListener;
    }

    public void setOverMenuColor(int i) {
        this.c = i;
        this.f.setColor(i);
    }

    @Override
    public void setSelected(boolean z) {
        super.setSelected(z);
        if (z) {
            show();
        } else {
            this.e.h(false, this.g);
        }
    }

    public void setupOverflowMenuButton(int i) {
        this.n = i;
        this.p.sendEmptyMessage(2);
    }

    public void show() {
        PopupMenu popupMenu;
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        if (iArr[1] <= getResources().getDisplayMetrics().heightPixels / 3) {
            Log.w("os_menu", "Warnging, screen in a error point!");
            return;
        }
        if (this.o || (popupMenu = this.j) == null) {
            return;
        }
        Activity activity = this.m;
        if (activity == null && this.l == null) {
            throw new RuntimeException("Must provide a activity or fragment!");
        }
        if (activity != null) {
            activity.onPrepareOptionsMenu(popupMenu.getMenu());
        }
        Fragment fragment = this.l;
        if (fragment != null) {
            fragment.onPrepareOptionsMenu(this.j.getMenu());
        }
        this.o = true;
        this.j.show();
        this.e.h(true, this.g);
    }

    public OverflowMenu(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.style.OsPopupMenuStyle);
    }

    public OverflowMenu(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public OverflowMenu(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.c = -10461088;
        this.o = false;
        this.p = new a();
        setClickable(true);
        setFocusable(true);
        Resources resources = context.getResources();
        this.i = resources;
        this.h = resources.getDimensionPixelSize(R.dimen.os_list_item_height_small);
        this.d = new ArrayList(3);
        this.e = new hc8(this);
        g();
    }
}

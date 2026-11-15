package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import java.lang.reflect.Method;

public class ListPopupWindow implements androidx.appcompat.view.menu.o {
    private static Method G;
    private static Method H;
    private static Method I;
    private Runnable A;
    final Handler B;
    private final Rect C;
    private Rect D;
    private boolean E;
    PopupWindow F;

    private Context f1472a;

    private ListAdapter f1473b;

    DropDownListView f1474c;

    private int f1475d;

    private int f1476e;

    private int f1477f;

    private int f1478g;

    private int f1479h;

    private boolean f1480i;

    private boolean f1481j;

    private boolean f1482k;

    private int f1483l;

    private boolean f1484m;

    private boolean f1485n;

    int f1486o;

    private View f1487p;

    private int f1488q;

    private DataSetObserver f1489r;

    private View f1490s;

    private Drawable f1491t;

    private AdapterView.OnItemClickListener f1492u;

    private AdapterView.OnItemSelectedListener f1493v;

    final ResizePopupRunnable f1494w;

    private final f f1495x;

    private final e f1496y;

    private final ListSelectorHider f1497z;

    private class ListSelectorHider implements Runnable {
        ListSelectorHider() {
        }

        @Override
        public void run() {
            ListPopupWindow.this.q();
        }
    }

    private class ResizePopupRunnable implements Runnable {
        ResizePopupRunnable() {
        }

        @Override
        public void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.f1474c;
            if (dropDownListView == null || !dropDownListView.isAttachedToWindow() || ListPopupWindow.this.f1474c.getCount() <= ListPopupWindow.this.f1474c.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.f1474c.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.f1486o) {
                listPopupWindow.F.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    static class b {
        static int a(PopupWindow popupWindow, View view, int i10, boolean z10) {
            return popupWindow.getMaxAvailableHeight(view, i10, z10);
        }
    }

    static class c {
        static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        static void b(PopupWindow popupWindow, boolean z10) {
            popupWindow.setIsClippedToScreen(z10);
        }
    }

    private class d extends DataSetObserver {
        d() {
        }

        @Override
        public void onChanged() {
            if (ListPopupWindow.this.a()) {
                ListPopupWindow.this.show();
            }
        }

        @Override
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    private class f implements View.OnTouchListener {
        f() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.F) != null && popupWindow.isShowing() && x10 >= 0 && x10 < ListPopupWindow.this.F.getWidth() && y10 >= 0 && y10 < ListPopupWindow.this.F.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.B.postDelayed(listPopupWindow.f1494w, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
            listPopupWindow2.B.removeCallbacks(listPopupWindow2.f1494w);
            return false;
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                I = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                H = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R$attr.listPopupWindowStyle);
    }

    private void B() {
        View view = this.f1487p;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1487p);
            }
        }
    }

    private void N(boolean z10) {
        if (Build.VERSION.SDK_INT > 28) {
            c.b(this.F, z10);
            return;
        }
        Method method = G;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z10));
            } catch (Exception unused) {
            }
        }
    }

    private int p() {
        int measuredHeight;
        int i10;
        int iMakeMeasureSpec;
        View view;
        int i11;
        if (this.f1474c == null) {
            Context context = this.f1472a;
            this.A = new Runnable() {
                @Override
                public void run() {
                    View viewS = ListPopupWindow.this.s();
                    if (viewS == null || viewS.getWindowToken() == null) {
                        return;
                    }
                    ListPopupWindow.this.show();
                }
            };
            DropDownListView dropDownListViewR = r(context, !this.E);
            this.f1474c = dropDownListViewR;
            Drawable drawable = this.f1491t;
            if (drawable != null) {
                dropDownListViewR.setSelector(drawable);
            }
            this.f1474c.setAdapter(this.f1473b);
            this.f1474c.setOnItemClickListener(this.f1492u);
            this.f1474c.setFocusable(true);
            this.f1474c.setFocusableInTouchMode(true);
            this.f1474c.setOnItemSelectedListener(new a());
            this.f1474c.setOnScrollListener(this.f1496y);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1493v;
            if (onItemSelectedListener != null) {
                this.f1474c.setOnItemSelectedListener(onItemSelectedListener);
            }
            DropDownListView dropDownListView = this.f1474c;
            View view2 = this.f1487p;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i12 = this.f1488q;
                if (i12 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(dropDownListView, layoutParams);
                } else if (i12 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f1488q);
                } else {
                    linearLayout.addView(dropDownListView, layoutParams);
                    linearLayout.addView(view2);
                }
                int i13 = this.f1476e;
                if (i13 >= 0) {
                    i11 = Integer.MIN_VALUE;
                } else {
                    i13 = 0;
                    i11 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i13, i11), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = dropDownListView;
            }
            this.F.setContentView(view);
        } else {
            View view3 = this.f1487p;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            int i14 = rect.top;
            i10 = rect.bottom + i14;
            if (!this.f1480i) {
                this.f1478g = -i14;
            }
        } else {
            this.C.setEmpty();
            i10 = 0;
        }
        int iT = t(s(), this.f1478g, this.F.getInputMethodMode() == 2);
        if (this.f1484m || this.f1475d == -1) {
            return iT + i10;
        }
        int i15 = this.f1476e;
        if (i15 == -2) {
            int i16 = this.f1472a.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i15 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15, 1073741824);
        } else {
            int i17 = this.f1472a.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17 - (rect3.left + rect3.right), 1073741824);
        }
        int iMeasureHeightOfChildrenCompat = this.f1474c.measureHeightOfChildrenCompat(iMakeMeasureSpec, 0, -1, iT - measuredHeight, -1);
        if (iMeasureHeightOfChildrenCompat > 0) {
            measuredHeight += i10 + this.f1474c.getPaddingTop() + this.f1474c.getPaddingBottom();
        }
        return iMeasureHeightOfChildrenCompat + measuredHeight;
    }

    private int t(View view, int i10, boolean z10) {
        if (Build.VERSION.SDK_INT > 23) {
            return b.a(this.F, view, i10, z10);
        }
        Method method = H;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.F, view, Integer.valueOf(i10), Boolean.valueOf(z10))).intValue();
            } catch (Exception unused) {
            }
        }
        return this.F.getMaxAvailableHeight(view, i10);
    }

    public boolean A() {
        return this.E;
    }

    public void C(View view) {
        this.f1490s = view;
    }

    public void D(int i10) {
        this.F.setAnimationStyle(i10);
    }

    public void E(int i10) {
        Drawable background = this.F.getBackground();
        if (background == null) {
            Q(i10);
            return;
        }
        background.getPadding(this.C);
        Rect rect = this.C;
        this.f1476e = rect.left + rect.right + i10;
    }

    public void F(int i10) {
        this.f1483l = i10;
    }

    public void G(Rect rect) {
        this.D = rect != null ? new Rect(rect) : null;
    }

    public void H(int i10) {
        this.F.setInputMethodMode(i10);
    }

    public void I(boolean z10) {
        this.E = z10;
        this.F.setFocusable(z10);
    }

    public void J(PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }

    public void K(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1492u = onItemClickListener;
    }

    public void L(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f1493v = onItemSelectedListener;
    }

    public void M(boolean z10) {
        this.f1482k = true;
        this.f1481j = z10;
    }

    public void O(int i10) {
        this.f1488q = i10;
    }

    public void P(int i10) {
        DropDownListView dropDownListView = this.f1474c;
        if (!a() || dropDownListView == null) {
            return;
        }
        dropDownListView.setListSelectionHidden(false);
        dropDownListView.setSelection(i10);
        if (dropDownListView.getChoiceMode() != 0) {
            dropDownListView.setItemChecked(i10, true);
        }
    }

    public void Q(int i10) {
        this.f1476e = i10;
    }

    @Override
    public boolean a() {
        return this.F.isShowing();
    }

    public void b(Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public int c() {
        return this.f1477f;
    }

    @Override
    public void dismiss() {
        this.F.dismiss();
        B();
        this.F.setContentView(null);
        this.f1474c = null;
        this.B.removeCallbacks(this.f1494w);
    }

    public void e(int i10) {
        this.f1477f = i10;
    }

    public Drawable g() {
        return this.F.getBackground();
    }

    public void i(int i10) {
        this.f1478g = i10;
        this.f1480i = true;
    }

    public int l() {
        if (this.f1480i) {
            return this.f1478g;
        }
        return 0;
    }

    public void m(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1489r;
        if (dataSetObserver == null) {
            this.f1489r = new d();
        } else {
            ListAdapter listAdapter2 = this.f1473b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1473b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1489r);
        }
        DropDownListView dropDownListView = this.f1474c;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.f1473b);
        }
    }

    @Override
    public ListView o() {
        return this.f1474c;
    }

    public void q() {
        DropDownListView dropDownListView = this.f1474c;
        if (dropDownListView != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
    }

    DropDownListView r(Context context, boolean z10) {
        return new DropDownListView(context, z10);
    }

    public View s() {
        return this.f1490s;
    }

    @Override
    public void show() {
        int iP = p();
        boolean z10 = z();
        androidx.core.widget.k.b(this.F, this.f1479h);
        if (this.F.isShowing()) {
            if (s().isAttachedToWindow()) {
                int width = this.f1476e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = s().getWidth();
                }
                int i10 = this.f1475d;
                if (i10 == -1) {
                    if (!z10) {
                        iP = -1;
                    }
                    if (z10) {
                        this.F.setWidth(this.f1476e == -1 ? -1 : 0);
                        this.F.setHeight(0);
                    } else {
                        this.F.setWidth(this.f1476e == -1 ? -1 : 0);
                        this.F.setHeight(-1);
                    }
                } else if (i10 != -2) {
                    iP = i10;
                }
                this.F.setOutsideTouchable((this.f1485n || this.f1484m) ? false : true);
                this.F.update(s(), this.f1477f, this.f1478g, width < 0 ? -1 : width, iP < 0 ? -1 : iP);
                return;
            }
            return;
        }
        int width2 = this.f1476e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = s().getWidth();
        }
        int i11 = this.f1475d;
        if (i11 == -1) {
            iP = -1;
        } else if (i11 != -2) {
            iP = i11;
        }
        this.F.setWidth(width2);
        this.F.setHeight(iP);
        N(true);
        this.F.setOutsideTouchable((this.f1485n || this.f1484m) ? false : true);
        this.F.setTouchInterceptor(this.f1495x);
        if (this.f1482k) {
            androidx.core.widget.k.a(this.F, this.f1481j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = I;
            if (method != null) {
                try {
                    method.invoke(this.F, this.D);
                } catch (Exception e10) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e10);
                }
            }
        } else {
            c.a(this.F, this.D);
        }
        androidx.core.widget.k.c(this.F, s(), this.f1477f, this.f1478g, this.f1483l);
        this.f1474c.setSelection(-1);
        if (!this.E || this.f1474c.isInTouchMode()) {
            q();
        }
        if (this.E) {
            return;
        }
        this.B.post(this.f1497z);
    }

    public Object u() {
        if (a()) {
            return this.f1474c.getSelectedItem();
        }
        return null;
    }

    public long v() {
        if (a()) {
            return this.f1474c.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int w() {
        if (a()) {
            return this.f1474c.getSelectedItemPosition();
        }
        return -1;
    }

    public View x() {
        if (a()) {
            return this.f1474c.getSelectedView();
        }
        return null;
    }

    public int y() {
        return this.f1476e;
    }

    public boolean z() {
        return this.F.getInputMethodMode() == 2;
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f1475d = -2;
        this.f1476e = -2;
        this.f1479h = 1002;
        this.f1483l = 0;
        this.f1484m = false;
        this.f1485n = false;
        this.f1486o = Integer.MAX_VALUE;
        this.f1488q = 0;
        this.f1494w = new ResizePopupRunnable();
        this.f1495x = new f();
        this.f1496y = new e();
        this.f1497z = new ListSelectorHider();
        this.C = new Rect();
        this.f1472a = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPopupWindow, i10, i11);
        this.f1477f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1478g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1480i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        k kVar = new k(context, attributeSet, i10, i11);
        this.F = kVar;
        kVar.setInputMethodMode(1);
    }

    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            DropDownListView dropDownListView;
            if (i10 == -1 || (dropDownListView = ListPopupWindow.this.f1474c) == null) {
                return;
            }
            dropDownListView.setListSelectionHidden(false);
        }

        @Override
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    private class e implements AbsListView.OnScrollListener {
        e() {
        }

        @Override
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 != 1 || ListPopupWindow.this.z() || ListPopupWindow.this.F.getContentView() == null) {
                return;
            }
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            listPopupWindow.B.removeCallbacks(listPopupWindow.f1494w);
            ListPopupWindow.this.f1494w.run();
        }

        @Override
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        }
    }
}

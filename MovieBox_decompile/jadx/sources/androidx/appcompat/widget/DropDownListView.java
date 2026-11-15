package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R$attr;
import androidx.core.view.ViewPropertyAnimatorCompat;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class DropDownListView extends ListView {
    public static final int INVALID_POSITION = -1;
    public static final int NO_POSITION = -1;

    private final Rect f1442a;

    private int f1443b;

    private int f1444c;

    private int f1445d;

    private int f1446e;

    private int f1447f;

    private d f1448g;

    private boolean f1449h;

    private boolean f1450i;

    private boolean f1451j;

    private ViewPropertyAnimatorCompat f1452k;

    private androidx.core.widget.i f1453l;

    ResolveHoverRunnable f1454m;

    private class ResolveHoverRunnable implements Runnable {
        ResolveHoverRunnable() {
        }

        public void cancel() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1454m = null;
            dropDownListView.removeCallbacks(this);
        }

        public void post() {
            DropDownListView.this.post(this);
        }

        @Override
        public void run() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1454m = null;
            dropDownListView.drawableStateChanged();
        }
    }

    static class a {
        static void a(View view, float f10, float f11) {
            view.drawableHotspotChanged(f10, f11);
        }
    }

    static class b {

        private static Method f1455a;

        private static Method f1456b;

        private static Method f1457c;

        private static boolean f1458d;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
                f1455a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                f1456b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                f1457c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                f1458d = true;
            } catch (NoSuchMethodException e10) {
                e10.printStackTrace();
            }
        }

        static boolean a() {
            return f1458d;
        }

        static void b(DropDownListView dropDownListView, int i10, View view) {
            try {
                f1455a.invoke(dropDownListView, Integer.valueOf(i10), view, Boolean.FALSE, -1, -1);
                f1456b.invoke(dropDownListView, Integer.valueOf(i10));
                f1457c.invoke(dropDownListView, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    static class c {
        static boolean a(AbsListView absListView) {
            return absListView.isSelectedChildViewEnabled();
        }

        static void b(AbsListView absListView, boolean z10) {
            absListView.setSelectedChildViewEnabled(z10);
        }
    }

    private static class d extends androidx.appcompat.graphics.drawable.b {

        private boolean f1459b;

        d(Drawable drawable) {
            super(drawable);
            this.f1459b = true;
        }

        void b(boolean z10) {
            this.f1459b = z10;
        }

        @Override
        public void draw(Canvas canvas) {
            if (this.f1459b) {
                super.draw(canvas);
            }
        }

        @Override
        public void setHotspot(float f10, float f11) {
            if (this.f1459b) {
                super.setHotspot(f10, f11);
            }
        }

        @Override
        public void setHotspotBounds(int i10, int i11, int i12, int i13) {
            if (this.f1459b) {
                super.setHotspotBounds(i10, i11, i12, i13);
            }
        }

        @Override
        public boolean setState(int[] iArr) {
            if (this.f1459b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override
        public boolean setVisible(boolean z10, boolean z11) {
            if (this.f1459b) {
                return super.setVisible(z10, z11);
            }
            return false;
        }
    }

    static class e {

        private static final Field f1460a;

        static {
            Field declaredField = null;
            try {
                declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                e10.printStackTrace();
            }
            f1460a = declaredField;
        }

        static boolean a(AbsListView absListView) {
            Field field = f1460a;
            if (field == null) {
                return false;
            }
            try {
                return field.getBoolean(absListView);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        static void b(AbsListView absListView, boolean z10) {
            Field field = f1460a;
            if (field != null) {
                try {
                    field.set(absListView, Boolean.valueOf(z10));
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    DropDownListView(Context context, boolean z10) {
        super(context, null, R$attr.dropDownListViewStyle);
        this.f1442a = new Rect();
        this.f1443b = 0;
        this.f1444c = 0;
        this.f1445d = 0;
        this.f1446e = 0;
        this.f1450i = z10;
        setCacheColorHint(0);
    }

    private void a() {
        this.f1451j = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1447f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1452k;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
            this.f1452k = null;
        }
    }

    private void b(View view, int i10) {
        performItemClick(view, i10, getItemIdAtPosition(i10));
    }

    private void c(Canvas canvas) {
        Drawable selector;
        if (this.f1442a.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1442a);
        selector.draw(canvas);
    }

    private void d(int i10, View view) {
        Rect rect = this.f1442a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1443b;
        rect.top -= this.f1444c;
        rect.right += this.f1445d;
        rect.bottom += this.f1446e;
        boolean zI = i();
        if (view.isEnabled() != zI) {
            j(!zI);
            if (i10 != -1) {
                refreshDrawableState();
            }
        }
    }

    private void e(int i10, View view) {
        Drawable selector = getSelector();
        boolean z10 = (selector == null || i10 == -1) ? false : true;
        if (z10) {
            selector.setVisible(false, false);
        }
        d(i10, view);
        if (z10) {
            Rect rect = this.f1442a;
            float fExactCenterX = rect.exactCenterX();
            float fExactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            a1.a.k(selector, fExactCenterX, fExactCenterY);
        }
    }

    private void f(int i10, View view, float f10, float f11) {
        e(i10, view);
        Drawable selector = getSelector();
        if (selector == null || i10 == -1) {
            return;
        }
        a1.a.k(selector, f10, f11);
    }

    private void g(View view, int i10, float f10, float f11) {
        View childAt;
        this.f1451j = true;
        a.a(this, f10, f11);
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i11 = this.f1447f;
        if (i11 != -1 && (childAt = getChildAt(i11 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1447f = i10;
        a.a(view, f10 - view.getLeft(), f11 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        f(i10, view, f10, f11);
        h(false);
        refreshDrawableState();
    }

    private void h(boolean z10) {
        d dVar = this.f1448g;
        if (dVar != null) {
            dVar.b(z10);
        }
    }

    private boolean i() {
        return Build.VERSION.SDK_INT >= 33 ? c.a(this) : e.a(this);
    }

    private void j(boolean z10) {
        if (Build.VERSION.SDK_INT >= 33) {
            c.b(this, z10);
        } else {
            e.b(this, z10);
        }
    }

    private boolean k() {
        return this.f1451j;
    }

    private void l() {
        Drawable selector = getSelector();
        if (selector != null && k() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override
    protected void drawableStateChanged() {
        if (this.f1454m != null) {
            return;
        }
        super.drawableStateChanged();
        h(true);
        l();
    }

    @Override
    public boolean hasFocus() {
        return this.f1450i || super.hasFocus();
    }

    @Override
    public boolean hasWindowFocus() {
        return this.f1450i || super.hasWindowFocus();
    }

    @Override
    public boolean isFocused() {
        return this.f1450i || super.isFocused();
    }

    @Override
    public boolean isInTouchMode() {
        return (this.f1450i && this.f1449h) || super.isInTouchMode();
    }

    public int lookForSelectablePosition(int i10, boolean z10) {
        int iMin;
        ListAdapter adapter = getAdapter();
        if (adapter != null && !isInTouchMode()) {
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z10) {
                    iMin = Math.max(0, i10);
                    while (iMin < count && !adapter.isEnabled(iMin)) {
                        iMin++;
                    }
                } else {
                    iMin = Math.min(i10, count - 1);
                    while (iMin >= 0 && !adapter.isEnabled(iMin)) {
                        iMin--;
                    }
                }
                if (iMin < 0 || iMin >= count) {
                    return -1;
                }
                return iMin;
            }
            if (i10 >= 0 && i10 < count) {
                return i10;
            }
        }
        return -1;
    }

    public int measureHeightOfChildrenCompat(int i10, int i11, int i12, int i13, int i14) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        View view = null;
        while (i15 < count) {
            int itemViewType = adapter.getItemViewType(i15);
            if (itemViewType != i16) {
                view = null;
                i16 = itemViewType;
            }
            view = adapter.getView(i15, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i18 = layoutParams.height;
            view.measure(i10, i18 > 0 ? View.MeasureSpec.makeMeasureSpec(i18, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i15 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i13) {
                return (i14 < 0 || i15 <= i14 || i17 <= 0 || measuredHeight == i13) ? i13 : i17;
            }
            if (i14 >= 0 && i15 >= i14) {
                i17 = measuredHeight;
            }
            i15++;
        }
        return measuredHeight;
    }

    @Override
    protected void onDetachedFromWindow() {
        this.f1454m = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    public boolean onForwardedEvent(MotionEvent motionEvent, int i10) {
        boolean z10;
        boolean z11;
        androidx.core.widget.i iVar;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            z10 = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z10 = true;
                    z11 = false;
                } else {
                    z11 = false;
                    z10 = false;
                }
                if (z10 || z11) {
                    a();
                }
                if (z10) {
                    if (this.f1453l == null) {
                        this.f1453l = new androidx.core.widget.i(this);
                    }
                    this.f1453l.m(true);
                    this.f1453l.onTouch(this, motionEvent);
                } else {
                    iVar = this.f1453l;
                    if (iVar != null) {
                        iVar.m(false);
                    }
                }
                return z10;
            }
            z10 = true;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i10);
        if (iFindPointerIndex < 0) {
            z11 = false;
            z10 = false;
        } else {
            int x10 = (int) motionEvent.getX(iFindPointerIndex);
            int y10 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x10, y10);
            if (iPointToPosition == -1) {
                z11 = true;
            } else {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                g(childAt, iPointToPosition, x10, y10);
                if (actionMasked == 1) {
                    b(childAt, iPointToPosition);
                }
                z10 = true;
                z11 = false;
            }
        }
        if (z10) {
            a();
        } else {
            a();
        }
        if (z10) {
            if (this.f1453l == null) {
                this.f1453l = new androidx.core.widget.i(this);
            }
            this.f1453l.m(true);
            this.f1453l.onTouch(this, motionEvent);
        } else {
            iVar = this.f1453l;
            if (iVar != null) {
                iVar.m(false);
            }
        }
        return z10;
    }

    @Override
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1454m == null) {
            ResolveHoverRunnable resolveHoverRunnable = new ResolveHoverRunnable();
            this.f1454m = resolveHoverRunnable;
            resolveHoverRunnable.post();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i10 < 30 || !b.a()) {
                        setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                    } else {
                        b.b(this, iPointToPosition, childAt);
                    }
                }
                l();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1447f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        ResolveHoverRunnable resolveHoverRunnable = this.f1454m;
        if (resolveHoverRunnable != null) {
            resolveHoverRunnable.cancel();
        }
        return super.onTouchEvent(motionEvent);
    }

    void setListSelectionHidden(boolean z10) {
        this.f1449h = z10;
    }

    @Override
    public void setSelector(Drawable drawable) {
        d dVar = drawable != null ? new d(drawable) : null;
        this.f1448g = dVar;
        super.setSelector(dVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1443b = rect.left;
        this.f1444c = rect.top;
        this.f1445d = rect.right;
        this.f1446e = rect.bottom;
    }
}

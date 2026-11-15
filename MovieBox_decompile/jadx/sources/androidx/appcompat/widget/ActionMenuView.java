package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.ActionMenuItemView;

public class ActionMenuView extends LinearLayoutCompat implements androidx.appcompat.view.menu.f.b, androidx.appcompat.view.menu.m {

    private androidx.appcompat.view.menu.f f1320a;

    private Context f1321b;

    private int f1322c;

    private boolean f1323d;

    private ActionMenuPresenter f1324e;

    private androidx.appcompat.view.menu.l.a f1325f;

    androidx.appcompat.view.menu.f.a f1326g;

    private boolean f1327h;

    private int f1328i;

    private int f1329j;

    private int f1330k;

    e f1331l;

    public interface a {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    public static class c extends LinearLayoutCompat.a {

        public boolean f1332a;

        public int f1333b;

        public int f1334c;

        public boolean f1335d;

        public boolean f1336e;

        boolean f1337f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super((ViewGroup.LayoutParams) cVar);
            this.f1332a = cVar.f1332a;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f1332a = false;
        }
    }

    private class d implements androidx.appcompat.view.menu.f.a {
        d() {
        }

        @Override
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            e eVar = ActionMenuView.this.f1331l;
            return eVar != null && eVar.onMenuItemClick(menuItem);
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.f.a aVar = ActionMenuView.this.f1326g;
            if (aVar != null) {
                aVar.b(fVar);
            }
        }
    }

    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    static int g(View view, int i10, int i11, int i12, int i13) {
        int i14;
        c cVar = (c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i12) - i13, View.MeasureSpec.getMode(i12));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z10 = false;
        boolean z11 = actionMenuItemView != null && actionMenuItemView.hasText();
        if (i11 > 0) {
            i14 = 2;
            if (!z11 || i11 >= 2) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i11 * i10, Integer.MIN_VALUE), iMakeMeasureSpec);
                int measuredWidth = view.getMeasuredWidth();
                int i15 = measuredWidth / i10;
                if (measuredWidth % i10 != 0) {
                    i15++;
                }
                if (!z11 || i15 >= 2) {
                    i14 = i15;
                }
            } else {
                i14 = 0;
            }
        } else {
            i14 = 0;
        }
        if (!cVar.f1332a && z11) {
            z10 = true;
        }
        cVar.f1335d = z10;
        cVar.f1333b = i14;
        view.measure(View.MeasureSpec.makeMeasureSpec(i10 * i14, 1073741824), iMakeMeasureSpec);
        return i14;
    }

    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v14 */
    private void h(int i10, int i11) {
        boolean z10;
        int i12;
        int i13;
        boolean z11;
        ?? r14;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingTop, -2);
        int i14 = size - paddingLeft;
        int i15 = this.f1329j;
        int i16 = i14 / i15;
        int i17 = i14 % i15;
        if (i16 == 0) {
            setMeasuredDimension(i14, 0);
            return;
        }
        int i18 = i15 + (i17 / i16);
        int childCount = getChildCount();
        int iMax = 0;
        int i19 = 0;
        boolean z12 = false;
        int i20 = 0;
        int iMax2 = 0;
        int i21 = 0;
        long j10 = 0;
        while (i19 < childCount) {
            View childAt = getChildAt(i19);
            int i22 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z13 = childAt instanceof ActionMenuItemView;
                int i23 = i20 + 1;
                if (z13) {
                    int i24 = this.f1330k;
                    r14 = 0;
                    childAt.setPadding(i24, 0, i24, 0);
                } else {
                    r14 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f1337f = r14;
                cVar.f1334c = r14;
                cVar.f1333b = r14;
                cVar.f1335d = r14;
                ((LinearLayout.LayoutParams) cVar).leftMargin = r14;
                ((LinearLayout.LayoutParams) cVar).rightMargin = r14;
                cVar.f1336e = z13 && ((ActionMenuItemView) childAt).hasText();
                int iG = g(childAt, i18, cVar.f1332a ? 1 : i16, childMeasureSpec, paddingTop);
                iMax2 = Math.max(iMax2, iG);
                if (cVar.f1335d) {
                    i21++;
                }
                if (cVar.f1332a) {
                    z12 = true;
                }
                i16 -= iG;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iG == 1) {
                    j10 |= (long) (1 << i19);
                    iMax = iMax;
                }
                i20 = i23;
            }
            i19++;
            size2 = i22;
        }
        int i25 = size2;
        boolean z14 = z12 && i20 == 2;
        boolean z15 = false;
        while (true) {
            if (i21 <= 0 || i16 <= 0) {
                z10 = z15;
                i12 = iMax;
                break;
            }
            int i26 = Integer.MAX_VALUE;
            int i27 = 0;
            int i28 = 0;
            long j11 = 0;
            while (i28 < childCount) {
                boolean z16 = z15;
                c cVar2 = (c) getChildAt(i28).getLayoutParams();
                int i29 = iMax;
                if (cVar2.f1335d) {
                    int i30 = cVar2.f1333b;
                    if (i30 < i26) {
                        j11 = 1 << i28;
                        i26 = i30;
                        i27 = 1;
                    } else if (i30 == i26) {
                        i27++;
                        j11 |= 1 << i28;
                    }
                }
                i28++;
                iMax = i29;
                z15 = z16;
            }
            z10 = z15;
            i12 = iMax;
            j10 |= j11;
            if (i27 > i16) {
                break;
            }
            int i31 = i26 + 1;
            int i32 = 0;
            while (i32 < childCount) {
                View childAt2 = getChildAt(i32);
                c cVar3 = (c) childAt2.getLayoutParams();
                int i33 = i14;
                int i34 = mode;
                long j12 = 1 << i32;
                if ((j11 & j12) == 0) {
                    if (cVar3.f1333b == i31) {
                        j10 |= j12;
                    }
                    z14 = z14;
                } else {
                    if (z14 && cVar3.f1336e && i16 == 1) {
                        int i35 = this.f1330k;
                        childAt2.setPadding(i35 + i18, 0, i35, 0);
                    }
                    cVar3.f1333b++;
                    cVar3.f1337f = true;
                    i16--;
                }
                i32++;
                mode = i34;
                i14 = i33;
                z14 = z14;
            }
            iMax = i12;
            z15 = true;
        }
        boolean z17 = !z12 && i20 == 1;
        if (i16 <= 0 || j10 == 0 || (i16 >= i20 - 1 && !z17 && iMax2 <= 1)) {
            i13 = 0;
            z11 = z10;
        } else {
            float fBitCount = Long.bitCount(j10);
            if (z17) {
                i13 = 0;
            } else {
                i13 = 0;
                if ((j10 & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).f1336e) {
                    fBitCount -= 0.5f;
                }
                int i36 = childCount - 1;
                if ((j10 & ((long) (1 << i36))) != 0 && !((c) getChildAt(i36).getLayoutParams()).f1336e) {
                    fBitCount -= 0.5f;
                }
            }
            int i37 = fBitCount > 0.0f ? (int) ((i16 * i18) / fBitCount) : i13;
            z11 = z10;
            for (int i38 = i13; i38 < childCount; i38++) {
                if ((j10 & ((long) (1 << i38))) != 0) {
                    View childAt3 = getChildAt(i38);
                    c cVar4 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar4.f1334c = i37;
                        cVar4.f1337f = true;
                        if (i38 == 0 && !cVar4.f1336e) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = (-i37) / 2;
                        }
                        z11 = true;
                    } else if (cVar4.f1332a) {
                        cVar4.f1334c = i37;
                        cVar4.f1337f = true;
                        ((LinearLayout.LayoutParams) cVar4).rightMargin = (-i37) / 2;
                        z11 = true;
                    } else {
                        if (i38 != 0) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = i37 / 2;
                        }
                        if (i38 != childCount - 1) {
                            ((LinearLayout.LayoutParams) cVar4).rightMargin = i37 / 2;
                        }
                    }
                }
            }
        }
        if (z11) {
            for (int i39 = i13; i39 < childCount; i39++) {
                View childAt4 = getChildAt(i39);
                c cVar5 = (c) childAt4.getLayoutParams();
                if (cVar5.f1337f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f1333b * i18) + cVar5.f1334c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i14, mode != 1073741824 ? i12 : i25);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        ((LinearLayout.LayoutParams) cVar).gravity = 16;
        return cVar;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.f1324e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A();
        }
    }

    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (((LinearLayout.LayoutParams) cVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) cVar).gravity = 16;
        }
        return cVar;
    }

    protected boolean f(int i10) {
        boolean zNeedsDividerAfter = false;
        if (i10 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i10 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i10);
        if (i10 < getChildCount() && (childAt instanceof a)) {
            zNeedsDividerAfter = ((a) childAt).needsDividerAfter();
        }
        return (i10 <= 0 || !(childAt2 instanceof a)) ? zNeedsDividerAfter : zNeedsDividerAfter | ((a) childAt2).needsDividerBefore();
    }

    public c generateOverflowButtonLayoutParams() {
        c cVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        cVarGenerateDefaultLayoutParams.f1332a = true;
        return cVarGenerateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.f1320a == null) {
            Context context = getContext();
            androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(context);
            this.f1320a = fVar;
            fVar.W(new d());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f1324e = actionMenuPresenter;
            actionMenuPresenter.M(true);
            ActionMenuPresenter actionMenuPresenter2 = this.f1324e;
            androidx.appcompat.view.menu.l.a bVar = this.f1325f;
            if (bVar == null) {
                bVar = new b();
            }
            actionMenuPresenter2.d(bVar);
            this.f1320a.c(this.f1324e, this.f1321b);
            this.f1324e.K(this);
        }
        return this.f1320a;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.f1324e.C();
    }

    public int getPopupTheme() {
        return this.f1322c;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1324e;
        return actionMenuPresenter != null && actionMenuPresenter.D();
    }

    @Override
    public void initialize(androidx.appcompat.view.menu.f fVar) {
        this.f1320a = fVar;
    }

    @Override
    public boolean invokeItem(androidx.appcompat.view.menu.h hVar) {
        return this.f1320a.O(hVar, 0);
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.f1324e;
        return actionMenuPresenter != null && actionMenuPresenter.F();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.f1324e;
        return actionMenuPresenter != null && actionMenuPresenter.G();
    }

    public boolean isOverflowReserved() {
        return this.f1323d;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f1324e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.h(false);
            if (this.f1324e.G()) {
                this.f1324e.D();
                this.f1324e.N();
            }
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int width;
        int paddingLeft;
        if (!this.f1327h) {
            super.onLayout(z10, i10, i11, i12, i13);
            return;
        }
        int childCount = getChildCount();
        int i14 = (i13 - i11) / 2;
        int dividerWidth = getDividerWidth();
        int i15 = i12 - i10;
        int paddingRight = (i15 - getPaddingRight()) - getPaddingLeft();
        boolean zB = u0.b(this);
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f1332a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (f(i18)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i19 = i14 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i19, width, measuredHeight + i19);
                    paddingRight -= measuredWidth;
                    i16 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) cVar).leftMargin) + ((LinearLayout.LayoutParams) cVar).rightMargin;
                    f(i18);
                    i17++;
                }
            }
        }
        if (childCount == 1 && i16 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i20 = (i15 / 2) - (measuredWidth2 / 2);
            int i21 = i14 - (measuredHeight2 / 2);
            childAt2.layout(i20, i21, measuredWidth2 + i20, measuredHeight2 + i21);
            return;
        }
        int i22 = i17 - (i16 ^ 1);
        int iMax = Math.max(0, i22 > 0 ? paddingRight / i22 : 0);
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i23 = 0; i23 < childCount; i23++) {
                View childAt3 = getChildAt(i23);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f1332a) {
                    int i24 = width2 - ((LinearLayout.LayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i25 = i14 - (measuredHeight3 / 2);
                    childAt3.layout(i24 - measuredWidth3, i25, i24, measuredHeight3 + i25);
                    width2 = i24 - ((measuredWidth3 + ((LinearLayout.LayoutParams) cVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i26 = 0; i26 < childCount; i26++) {
            View childAt4 = getChildAt(i26);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f1332a) {
                int i27 = paddingLeft2 + ((LinearLayout.LayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i28 = i14 - (measuredHeight4 / 2);
                childAt4.layout(i27, i28, i27 + measuredWidth4, measuredHeight4 + i28);
                paddingLeft2 = i27 + measuredWidth4 + ((LinearLayout.LayoutParams) cVar3).rightMargin + iMax;
            }
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        androidx.appcompat.view.menu.f fVar;
        boolean z10 = this.f1327h;
        boolean z11 = View.MeasureSpec.getMode(i10) == 1073741824;
        this.f1327h = z11;
        if (z10 != z11) {
            this.f1328i = 0;
        }
        int size = View.MeasureSpec.getSize(i10);
        if (this.f1327h && (fVar = this.f1320a) != null && size != this.f1328i) {
            this.f1328i = size;
            fVar.N(true);
        }
        int childCount = getChildCount();
        if (this.f1327h && childCount > 0) {
            h(i10, i11);
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            c cVar = (c) getChildAt(i12).getLayoutParams();
            ((LinearLayout.LayoutParams) cVar).rightMargin = 0;
            ((LinearLayout.LayoutParams) cVar).leftMargin = 0;
        }
        super.onMeasure(i10, i11);
    }

    public androidx.appcompat.view.menu.f peekMenu() {
        return this.f1320a;
    }

    public void setExpandedActionViewsExclusive(boolean z10) {
        this.f1324e.J(z10);
    }

    public void setMenuCallbacks(androidx.appcompat.view.menu.l.a aVar, androidx.appcompat.view.menu.f.a aVar2) {
        this.f1325f = aVar;
        this.f1326g = aVar2;
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.f1331l = eVar;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.f1324e.L(drawable);
    }

    public void setOverflowReserved(boolean z10) {
        this.f1323d = z10;
    }

    public void setPopupTheme(int i10) {
        if (this.f1322c != i10) {
            this.f1322c = i10;
            if (i10 == 0) {
                this.f1321b = getContext();
            } else {
                this.f1321b = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f1324e = actionMenuPresenter;
        actionMenuPresenter.K(this);
    }

    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1324e;
        return actionMenuPresenter != null && actionMenuPresenter.N();
    }

    public ActionMenuView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f1329j = (int) (56.0f * f10);
        this.f1330k = (int) (f10 * 4.0f);
        this.f1321b = context;
        this.f1322c = 0;
    }

    @Override
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    private static class b implements androidx.appcompat.view.menu.l.a {
        b() {
        }

        @Override
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            return false;
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        }
    }
}

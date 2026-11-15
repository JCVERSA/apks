package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.R;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.gallery.ScrollPosition;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivGallery;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.sequences.SequencesKt___SequencesKt;

public interface rj2 {
    public static final a B1 = a.a;

    public static final class a {
        public static final a a = new a();

        public class C0448a {
            public static final int[] a;
            public static final int[] b;
            public static final int[] c;

            static {
                int[] iArr = new int[DivGallery.CrossContentAlignment.values().length];
                try {
                    iArr[DivGallery.CrossContentAlignment.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DivGallery.CrossContentAlignment.CENTER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DivGallery.CrossContentAlignment.END.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
                int[] iArr2 = new int[DivAlignmentHorizontal.values().length];
                try {
                    iArr2[DivAlignmentHorizontal.LEFT.ordinal()] = 1;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr2[DivAlignmentHorizontal.CENTER.ordinal()] = 2;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[DivAlignmentHorizontal.RIGHT.ordinal()] = 3;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr2[DivAlignmentHorizontal.START.ordinal()] = 4;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr2[DivAlignmentHorizontal.END.ordinal()] = 5;
                } catch (NoSuchFieldError unused8) {
                }
                b = iArr2;
                int[] iArr3 = new int[DivAlignmentVertical.values().length];
                try {
                    iArr3[DivAlignmentVertical.TOP.ordinal()] = 1;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr3[DivAlignmentVertical.BASELINE.ordinal()] = 2;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr3[DivAlignmentVertical.CENTER.ordinal()] = 3;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr3[DivAlignmentVertical.BOTTOM.ordinal()] = 4;
                } catch (NoSuchFieldError unused12) {
                }
                c = iArr3;
            }
        }

        public final DivGallery.CrossContentAlignment d(DivAlignmentHorizontal divAlignmentHorizontal) {
            int i = C0448a.b[divAlignmentHorizontal.ordinal()];
            if (i == 1) {
                return DivGallery.CrossContentAlignment.START;
            }
            if (i == 2) {
                return DivGallery.CrossContentAlignment.CENTER;
            }
            if (i == 3) {
                return DivGallery.CrossContentAlignment.END;
            }
            if (i == 4) {
                return DivGallery.CrossContentAlignment.START;
            }
            if (i == 5) {
                return DivGallery.CrossContentAlignment.END;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final DivGallery.CrossContentAlignment e(DivAlignmentVertical divAlignmentVertical) {
            int i = C0448a.c[divAlignmentVertical.ordinal()];
            if (i == 1 || i == 2) {
                return DivGallery.CrossContentAlignment.START;
            }
            if (i == 3) {
                return DivGallery.CrossContentAlignment.CENTER;
            }
            if (i == 4) {
                return DivGallery.CrossContentAlignment.END;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final int f(int i, int i2, DivGallery.CrossContentAlignment crossContentAlignment) {
            int i3 = i - i2;
            int i4 = C0448a.a[crossContentAlignment.ordinal()];
            if (i4 == 1) {
                return 0;
            }
            if (i4 == 2) {
                return i3 / 2;
            }
            if (i4 == 3) {
                return i3;
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[ScrollPosition.values().length];
            try {
                iArr[ScrollPosition.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScrollPosition.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class c implements View.OnLayoutChangeListener {
        public final int b;
        public final rj2 c;
        public final int d;
        public final ScrollPosition e;

        public c(int i, rj2 rj2Var, int i2, ScrollPosition scrollPosition) {
            this.b = i;
            this.c = rj2Var;
            this.d = i2;
            this.e = scrollPosition;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            if (this.b == 0) {
                int i9 = (this.c.isHorizontal() && pdc.f(this.c.getView())) ? this.d : -this.d;
                this.c.getView().scrollBy(i9, i9);
                return;
            }
            this.c.getView().scrollBy(-this.c.getView().getScrollX(), -this.c.getView().getScrollY());
            RecyclerView.LayoutManager layoutManager = this.c.getView().getLayoutManager();
            View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(this.b) : null;
            while (viewFindViewByPosition == null && (this.c.getView().canScrollVertically(1) || this.c.getView().canScrollHorizontally(1))) {
                RecyclerView.LayoutManager layoutManager2 = this.c.getView().getLayoutManager();
                if (layoutManager2 != null) {
                    layoutManager2.requestLayout();
                }
                RecyclerView.LayoutManager layoutManager3 = this.c.getView().getLayoutManager();
                viewFindViewByPosition = layoutManager3 != null ? layoutManager3.findViewByPosition(this.b) : null;
                if (viewFindViewByPosition != null) {
                    break;
                } else {
                    this.c.getView().scrollBy(this.c.getView().getWidth(), this.c.getView().getHeight());
                }
            }
            if (viewFindViewByPosition != null) {
                int i10 = b.a[this.e.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        return;
                    }
                    int iD = this.c.d(viewFindViewByPosition) - this.d;
                    if (pdc.f(this.c.getView())) {
                        iD = -iD;
                    }
                    this.c.getView().scrollBy(iD, iD);
                    return;
                }
                int[] iArr = {0, 0};
                int[] iArr2 = {0, 0};
                this.c.getView().getLocationOnScreen(iArr2);
                viewFindViewByPosition.getLocationOnScreen(iArr);
                this.c.getView().scrollBy(((viewFindViewByPosition.getWidth() - this.c.getView().getWidth()) / 2) + (iArr[0] - iArr2[0]), ((viewFindViewByPosition.getHeight() - this.c.getView().getHeight()) / 2) + (iArr[1] - iArr2[1]));
            }
        }
    }

    static void a(rj2 rj2Var, int i, ScrollPosition scrollPosition, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: instantScroll");
        }
        if ((i3 & 2) != 0) {
            scrollPosition = ScrollPosition.DEFAULT;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        rj2Var.instantScroll(i, scrollPosition, i2);
    }

    static void e(rj2 rj2Var, View view, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trackVisibilityAction");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        rj2Var.trackVisibilityAction(view, z);
    }

    static void f(rj2 rj2Var, View view, int i, int i2, int i3, int i4, boolean z, int i5, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: _layoutDecoratedWithMargins");
        }
        if ((i5 & 32) != 0) {
            z = false;
        }
        rj2Var._layoutDecoratedWithMargins(view, i, i2, i3, i4, z);
    }

    default boolean isHorizontal() {
        return getLayoutManagerOrientation() == 0;
    }

    default void _detachView(View view) {
        y45.j(view, "child");
        trackVisibilityAction(view, true);
    }

    default void _detachViewAt(int i) {
        View view_getChildAt = _getChildAt(i);
        if (view_getChildAt == null) {
            return;
        }
        trackVisibilityAction(view_getChildAt, true);
    }

    View _getChildAt(int i);

    int _getPosition(View view);

    default void _layoutDecorated(View view, int i, int i2, int i3, int i4) {
        y45.j(view, "child");
        e(this, view, false, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008b  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d1  */
    default void _layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4, boolean z) {
        oj3 oj3VarB;
        int iF;
        int iF2;
        DivGallery.CrossContentAlignment crossContentAlignmentE;
        Object objB;
        DivGallery.CrossContentAlignment crossContentAlignmentD;
        Object objB2;
        Div divC;
        y45.j(view, "child");
        int layoutManagerOrientation = getLayoutManagerOrientation();
        if (layoutManagerOrientation == 0 ? getView().getMeasuredHeight() == 0 || view.getMeasuredHeight() == 0 : layoutManagerOrientation == 1 && (getView().getMeasuredWidth() == 0 || view.getMeasuredWidth() == 0)) {
            superLayoutDecoratedWithMargins(view, i, i2, i3, i4);
            if (z) {
                return;
            }
            getChildrenToRelayout().add(view);
            return;
        }
        Integer num = (Integer) view.getTag(R.id.div_gallery_item_index);
        zl2 itemDiv = num != null ? getItemDiv(num.intValue()) : null;
        og2 og2VarB = (itemDiv == null || (divC = itemDiv.c()) == null) ? null : divC.b();
        if (itemDiv == null || (oj3VarB = itemDiv.d()) == null) {
            oj3VarB = getBindingContext().b();
        }
        Expression expression = getDiv().j;
        if (layoutManagerOrientation == 1) {
            Expression expressionG = og2VarB != null ? og2VarB.g() : null;
            if (expressionG == null || (objB2 = expressionG.b(oj3VarB)) == null) {
                crossContentAlignmentD = (DivGallery.CrossContentAlignment) expression.b(oj3VarB);
            } else {
                crossContentAlignmentD = B1.d((DivAlignmentHorizontal) objB2);
                if (crossContentAlignmentD == null) {
                    crossContentAlignmentD = (DivGallery.CrossContentAlignment) expression.b(oj3VarB);
                }
            }
            iF = B1.f((getView().getMeasuredWidth() - getView().getPaddingLeft()) - getView().getPaddingRight(), i3 - i, crossContentAlignmentD);
        } else {
            iF = 0;
        }
        if (layoutManagerOrientation == 0) {
            Expression expressionO = og2VarB != null ? og2VarB.o() : null;
            if (expressionO == null || (objB = expressionO.b(oj3VarB)) == null) {
                crossContentAlignmentE = (DivGallery.CrossContentAlignment) expression.b(oj3VarB);
            } else {
                crossContentAlignmentE = B1.e((DivAlignmentVertical) objB);
                if (crossContentAlignmentE == null) {
                    crossContentAlignmentE = (DivGallery.CrossContentAlignment) expression.b(oj3VarB);
                }
            }
            iF2 = B1.f((getView().getMeasuredHeight() - getView().getPaddingTop()) - getView().getPaddingBottom(), i4 - i2, crossContentAlignmentE);
        } else {
            iF2 = 0;
        }
        superLayoutDecoratedWithMargins(view, i + iF, i2 + iF2, i3 + iF, i4 + iF2);
        e(this, view, false, 2, null);
        if (z) {
            return;
        }
        getChildrenToRelayout().remove(view);
    }

    default void _onAttachedToWindow(RecyclerView recyclerView) {
        y45.j(recyclerView, "view");
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            e(this, recyclerView.getChildAt(i), false, 2, null);
        }
    }

    default void _onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        y45.j(recyclerView, "view");
        y45.j(recycler, "recycler");
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            trackVisibilityAction(recyclerView.getChildAt(i), true);
        }
    }

    default void _onLayoutCompleted(RecyclerView.State state) {
        for (View view : getChildrenToRelayout()) {
            _layoutDecoratedWithMargins(view, view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), true);
        }
        getChildrenToRelayout().clear();
    }

    default void _removeAndRecycleAllViews(RecyclerView.Recycler recycler) {
        y45.j(recycler, "recycler");
        RecyclerView view = getView();
        int childCount = view.getChildCount();
        for (int i = 0; i < childCount; i++) {
            trackVisibilityAction(view.getChildAt(i), true);
        }
    }

    default void _removeView(View view) {
        y45.j(view, "child");
        trackVisibilityAction(view, true);
    }

    default void _removeViewAt(int i) {
        View view_getChildAt = _getChildAt(i);
        if (view_getChildAt == null) {
            return;
        }
        trackVisibilityAction(view_getChildAt, true);
    }

    default int calcScrollOffset(View view) {
        y45.j(view, "targetView");
        return d(view);
    }

    default int d(View view) {
        int marginStart;
        int paddingStart;
        if (isHorizontal()) {
            int width = pdc.f(view) ? getView().getWidth() - view.getRight() : view.getLeft();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            marginStart = width - (layoutParams instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart() : 0);
            paddingStart = getView().getPaddingStart();
        } else {
            int top = view.getTop();
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            marginStart = top - (marginLayoutParams != null ? marginLayoutParams.topMargin : 0);
            paddingStart = getView().getPaddingTop();
        }
        return marginStart - paddingStart;
    }

    int firstCompletelyVisibleItemPosition();

    int firstVisibleItemPosition();

    com.yandex.div.core.view2.a getBindingContext();

    default int getChildMeasureSpec(int i, int i2, int i3, int i4, int i5, boolean z) {
        int iD = wn8.d(i - i3, 0);
        if (i4 >= 0 && i4 <= Integer.MAX_VALUE) {
            return odc.h(i4);
        }
        if (i4 == -1) {
            return (z && i2 == 0) ? odc.i() : View.MeasureSpec.makeMeasureSpec(iD, i2);
        }
        if (i4 == -2) {
            return i5 == Integer.MAX_VALUE ? odc.i() : odc.g(i5);
        }
        if (i4 != -3) {
            return odc.i();
        }
        if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
            return odc.g(Math.min(iD, i5));
        }
        return i5 == Integer.MAX_VALUE ? odc.i() : odc.g(i5);
    }

    Set getChildrenToRelayout();

    DivGallery getDiv();

    zl2 getItemDiv(int i);

    int getLayoutManagerOrientation();

    RecyclerView getView();

    default void instantScroll(int i, ScrollPosition scrollPosition, int i2) {
        y45.j(scrollPosition, "scrollPosition");
        RecyclerView view = getView();
        if (!pdc.d(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new c(i, this, i2, scrollPosition));
            return;
        }
        if (i == 0) {
            if (!isHorizontal() || !pdc.f(getView())) {
                i2 = -i2;
            }
            getView().scrollBy(i2, i2);
            return;
        }
        getView().scrollBy(-getView().getScrollX(), -getView().getScrollY());
        RecyclerView.LayoutManager layoutManager = getView().getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(i) : null;
        while (viewFindViewByPosition == null && (getView().canScrollVertically(1) || getView().canScrollHorizontally(1))) {
            RecyclerView.LayoutManager layoutManager2 = getView().getLayoutManager();
            if (layoutManager2 != null) {
                layoutManager2.requestLayout();
            }
            RecyclerView.LayoutManager layoutManager3 = getView().getLayoutManager();
            viewFindViewByPosition = layoutManager3 != null ? layoutManager3.findViewByPosition(i) : null;
            if (viewFindViewByPosition != null) {
                break;
            } else {
                getView().scrollBy(getView().getWidth(), getView().getHeight());
            }
        }
        if (viewFindViewByPosition != null) {
            int i3 = b.a[scrollPosition.ordinal()];
            if (i3 != 1) {
                if (i3 != 2) {
                    return;
                }
                int iD = d(viewFindViewByPosition) - i2;
                if (pdc.f(getView())) {
                    iD = -iD;
                }
                getView().scrollBy(iD, iD);
                return;
            }
            int[] iArr = {0, 0};
            int[] iArr2 = {0, 0};
            getView().getLocationOnScreen(iArr2);
            viewFindViewByPosition.getLocationOnScreen(iArr);
            getView().scrollBy(((viewFindViewByPosition.getWidth() - getView().getWidth()) / 2) + (iArr[0] - iArr2[0]), ((viewFindViewByPosition.getHeight() - getView().getHeight()) / 2) + (iArr[1] - iArr2[1]));
        }
    }

    void instantScrollToPosition(int i, ScrollPosition scrollPosition);

    void instantScrollToPositionWithOffset(int i, int i2, ScrollPosition scrollPosition);

    int lastCompletelyVisibleItemPosition();

    int lastVisibleItemPosition();

    void superLayoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4);

    RecyclerView.LayoutManager toLayoutManager();

    /* JADX WARN: Multi-variable type inference failed */
    default void trackVisibilityAction(View view, boolean z) {
        View view2;
        com.yandex.div.core.view2.a bindingContext;
        y45.j(view, "child");
        int i_getPosition = _getPosition(view);
        if (i_getPosition == -1) {
            return;
        }
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup == null || (view2 = (View) SequencesKt___SequencesKt.J(ViewGroupKt.getChildren(viewGroup))) == 0) {
            return;
        }
        Div2View div2ViewA = getBindingContext().a();
        if (!z) {
            zl2 itemDiv = getItemDiv(i_getPosition);
            if (itemDiv == null) {
                return;
            }
            div2ViewA.getDiv2Component().H().s(getBindingContext().c(itemDiv.d()), view2, itemDiv.c());
            div2ViewA.bindViewToDiv$div_release(view2, itemDiv.c());
            return;
        }
        Div divTakeBindingDiv$div_release = div2ViewA.takeBindingDiv$div_release(view2);
        if (divTakeBindingDiv$div_release == null) {
            return;
        }
        mk2 mk2Var = view2 instanceof mk2 ? (mk2) view2 : null;
        if (mk2Var == null || (bindingContext = mk2Var.getBindingContext()) == null) {
            return;
        }
        div2ViewA.getDiv2Component().H().o(bindingContext, view2, divTakeBindingDiv$div_release);
        div2ViewA.unbindViewFromDiv$div_release(view2);
    }

    int width();
}

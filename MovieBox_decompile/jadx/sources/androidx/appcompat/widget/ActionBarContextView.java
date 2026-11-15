package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;

public class ActionBarContextView extends AbsActionBarView {

    private CharSequence f1256i;

    private CharSequence f1257j;

    private View f1258k;

    private View f1259l;

    private View f1260m;

    private LinearLayout f1261n;

    private TextView f1262o;

    private TextView f1263p;

    private int f1264q;

    private int f1265r;

    private boolean f1266s;

    private int f1267t;

    class a implements View.OnClickListener {

        final androidx.appcompat.view.b f1268a;

        a(androidx.appcompat.view.b bVar) {
            this.f1268a = bVar;
        }

        @Override
        public void onClick(View view) {
            this.f1268a.c();
        }
    }

    public ActionBarContextView(@NonNull Context context) {
        this(context, null);
    }

    private void f() {
        if (this.f1261n == null) {
            LayoutInflater.from(getContext()).inflate(R$layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1261n = linearLayout;
            this.f1262o = (TextView) linearLayout.findViewById(R$id.action_bar_title);
            this.f1263p = (TextView) this.f1261n.findViewById(R$id.action_bar_subtitle);
            if (this.f1264q != 0) {
                this.f1262o.setTextAppearance(getContext(), this.f1264q);
            }
            if (this.f1265r != 0) {
                this.f1263p.setTextAppearance(getContext(), this.f1265r);
            }
        }
        this.f1262o.setText(this.f1256i);
        this.f1263p.setText(this.f1257j);
        boolean zIsEmpty = TextUtils.isEmpty(this.f1256i);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f1257j);
        this.f1263p.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f1261n.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f1261n.getParent() == null) {
            addView(this.f1261n);
        }
    }

    @Override
    public void animateToVisibility(int i10) {
        super.animateToVisibility(i10);
    }

    @Override
    public boolean canShowOverflowMenu() {
        return super.canShowOverflowMenu();
    }

    public void closeMode() {
        if (this.f1258k == null) {
            killMode();
        }
    }

    @Override
    public void dismissPopupMenus() {
        super.dismissPopupMenus();
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override
    public int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override
    public int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f1257j;
    }

    public CharSequence getTitle() {
        return this.f1256i;
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.D();
        }
        return false;
    }

    public void initForMode(androidx.appcompat.view.b bVar) {
        View view = this.f1258k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f1267t, (ViewGroup) this, false);
            this.f1258k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f1258k);
        }
        View viewFindViewById = this.f1258k.findViewById(R$id.action_mode_close_button);
        this.f1259l = viewFindViewById;
        viewFindViewById.setOnClickListener(new a(bVar));
        androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) bVar.e();
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f1238d = actionMenuPresenter2;
        actionMenuPresenter2.M(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        fVar.c(this.f1238d, this.f1236b);
        ActionMenuView actionMenuView = (ActionMenuView) this.f1238d.q(this);
        this.f1237c = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f1237c, layoutParams);
    }

    @Override
    public boolean isOverflowMenuShowPending() {
        return super.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.G();
        }
        return false;
    }

    @Override
    public boolean isOverflowReserved() {
        return super.isOverflowReserved();
    }

    public boolean isTitleOptional() {
        return this.f1266s;
    }

    public void killMode() {
        removeAllViews();
        this.f1260m = null;
        this.f1237c = null;
        this.f1238d = null;
        View view = this.f1259l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.D();
            this.f1238d.E();
        }
    }

    @Override
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean zB = u0.b(this);
        int paddingRight = zB ? (i12 - i10) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1258k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1258k.getLayoutParams();
            int i14 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i15 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iD = AbsActionBarView.d(paddingRight, i14, zB);
            paddingRight = AbsActionBarView.d(iD + e(this.f1258k, iD, paddingTop, paddingTop2, zB), i15, zB);
        }
        int iE = paddingRight;
        LinearLayout linearLayout = this.f1261n;
        if (linearLayout != null && this.f1260m == null && linearLayout.getVisibility() != 8) {
            iE += e(this.f1261n, iE, paddingTop, paddingTop2, zB);
        }
        int i16 = iE;
        View view2 = this.f1260m;
        if (view2 != null) {
            e(view2, i16, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i12 - i10) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1237c;
        if (actionMenuView != null) {
            e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i11) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i10);
        int size2 = this.f1239e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i11);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f1258k;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1258k.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f1237c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f1237c, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.f1261n;
        if (linearLayout != null && this.f1260m == null) {
            if (this.f1266s) {
                this.f1261n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f1261n.getMeasuredWidth();
                boolean z10 = measuredWidth <= paddingLeft;
                if (z10) {
                    paddingLeft -= measuredWidth;
                }
                this.f1261n.setVisibility(z10 ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.f1260m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i12 = layoutParams.width;
            int i13 = i12 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i12 >= 0) {
                paddingLeft = Math.min(i12, paddingLeft);
            }
            int i14 = layoutParams.height;
            int i15 = i14 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i14 >= 0) {
                iMin = Math.min(i14, iMin);
            }
            this.f1260m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i13), View.MeasureSpec.makeMeasureSpec(iMin, i15));
        }
        if (this.f1239e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            int measuredHeight = getChildAt(i17).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i16) {
                i16 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i16);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void postShowOverflowMenu() {
        super.postShowOverflowMenu();
    }

    @Override
    public void setContentHeight(int i10) {
        this.f1239e = i10;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1260m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1260m = view;
        if (view != null && (linearLayout = this.f1261n) != null) {
            removeView(linearLayout);
            this.f1261n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1257j = charSequence;
        f();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1256i = charSequence;
        f();
        ViewCompat.setAccessibilityPaneTitle(this, charSequence);
    }

    public void setTitleOptional(boolean z10) {
        if (z10 != this.f1266s) {
            requestLayout();
        }
        this.f1266s = z10;
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    @Override
    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i10, long j10) {
        return super.setupAnimatorToVisibility(i10, j10);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override
    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1238d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.N();
        }
        return false;
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.actionModeStyle);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.ActionMode, i10, 0);
        setBackground(j0VarV.g(R$styleable.ActionMode_background));
        this.f1264q = j0VarV.n(R$styleable.ActionMode_titleTextStyle, 0);
        this.f1265r = j0VarV.n(R$styleable.ActionMode_subtitleTextStyle, 0);
        this.f1239e = j0VarV.m(R$styleable.ActionMode_height, 0);
        this.f1267t = j0VarV.n(R$styleable.ActionMode_closeItemLayout, R$layout.abc_action_mode_close_item_material);
        j0VarV.x();
    }
}

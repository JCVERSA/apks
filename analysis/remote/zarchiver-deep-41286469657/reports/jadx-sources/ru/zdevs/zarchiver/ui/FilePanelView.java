package ru.zdevs.zarchiver.ui;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.constraint.ConstraintLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.SectionIndexer;
import android.widget.StackView;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

public class FilePanelView extends ViewGroup {
    public static final int D = 0;
    public final b A;
    public final d B;
    public final e C;

    public int f1750a;

    public final int f1751b;

    public final int f1752c;

    public ConstraintLayout f1753d;

    public View f1754e;

    public final TextView f1755f;

    public View[] f1756g;

    public final AbsListView[] f1757h;

    public LayoutAnimationController f1758i;

    public boolean f1759j;

    public boolean f1760k;

    public Rect f1761l;

    public int f1762m;

    public float f1763n;

    public float f1764o;

    public float f1765p;

    public float f1766q;

    public int f1767r;

    public final DecelerateInterpolator f1768s;

    public AdapterView.OnItemClickListener f1769t;

    public AdapterView.OnItemLongClickListener f1770u;

    public d0.h.a f1771v;

    public g f1772w;

    public f f1773x;

    public h f1774y;

    public int f1775z;

    public class a implements Animation.AnimationListener {

        public final boolean f1776a;

        public a(boolean z2) {
            this.f1776a = z2;
        }

        @Override
        public final void onAnimationEnd(Animation animation) {
            g gVar;
            FilePanelView filePanelView = FilePanelView.this;
            filePanelView.f1753d.setVisibility(8);
            if (!this.f1776a || (gVar = filePanelView.f1772w) == null) {
                return;
            }
            gVar.h(filePanelView.f1750a);
        }

        @Override
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override
        public final void onAnimationStart(Animation animation) {
        }
    }

    public class b extends Animation {
        public b() {
        }

        @Override
        public final void applyTransformation(float f2, Transformation transformation) {
            int repeatMode = getRepeatMode();
            int i2 = repeatMode + ((int) ((-repeatMode) * f2));
            int i3 = FilePanelView.D;
            FilePanelView.this.f(i2, false);
        }
    }

    public class c implements Animation.AnimationListener {
        public c() {
        }

        @Override
        public final void onAnimationEnd(Animation animation) {
            FilePanelView filePanelView = FilePanelView.this;
            View[] viewArr = filePanelView.f1756g;
            if (viewArr != null) {
                viewArr[0].postDelayed(filePanelView.C, 600L);
            }
        }

        @Override
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override
        public final void onAnimationStart(Animation animation) {
        }
    }

    public class d extends Animation {
        public d() {
        }

        @Override
        public final void applyTransformation(float f2, Transformation transformation) {
            int repeatMode = getRepeatMode();
            FilePanelView filePanelView = FilePanelView.this;
            filePanelView.i(filePanelView.f1750a == 1 ? repeatMode + ((int) ((-repeatMode) * f2)) : (-repeatMode) + ((int) (repeatMode * f2)), false);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public final void run() {
            FilePanelView filePanelView = FilePanelView.this;
            z0.f.a(filePanelView.f1756g[0]);
            z0.f.a(filePanelView.f1756g[1]);
        }
    }

    public interface f {
        void g();
    }

    public interface g {
        void h(int i2);
    }

    public interface h {
    }

    public FilePanelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1759j = true;
        this.f1760k = true;
        this.f1762m = -1;
        this.A = new b();
        this.B = new d();
        this.C = new e();
        this.f1757h = new AbsListView[2];
        this.f1750a = 0;
        this.f1775z = 256;
        this.f1751b = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f1752c = z0.c.a(12);
        setWillNotDraw(false);
        this.f1768s = new DecelerateInterpolator(2.0f);
        TextView textView = new TextView(context, attributeSet);
        this.f1755f = textView;
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        textView.setGravity(1);
        textView.setTextIsSelectable(false);
        textView.setVisibility(8);
        addView(textView, 0);
        addView(new View(context), 1);
        addView(new View(context), 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setListAnimation(AbsListView absListView) {
        if (absListView == 0) {
            return;
        }
        if (absListView.getLayoutAnimation() != null) {
            absListView.scheduleLayoutAnimation();
            return;
        }
        if (this.f1758i == null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(100L);
            LayoutAnimationController layoutAnimationController = new LayoutAnimationController(alphaAnimation, 0.1f);
            this.f1758i = layoutAnimationController;
            layoutAnimationController.setInterpolator(new DecelerateInterpolator(2.0f));
        }
        int maxVisibleItemCount = ((e1.c) absListView).getMaxVisibleItemCount();
        this.f1758i.setDelay((absListView.getCount() < maxVisibleItemCount ? ((maxVisibleItemCount - absListView.getCount()) * 0.14f) / maxVisibleItemCount : 0.0f) + 0.1f);
        absListView.setLayoutAnimation(this.f1758i);
    }

    public final void a() {
        c cVar = new c();
        d dVar = this.B;
        dVar.reset();
        int i2 = this.f1750a;
        AbsListView[] absListViewArr = this.f1757h;
        dVar.setRepeatMode(Math.abs(absListViewArr[i2].getLeft()));
        dVar.setDuration(400L);
        dVar.setInterpolator(this.f1768s);
        dVar.setAnimationListener(cVar);
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.clearAnimation();
            absListViewArr[0].startAnimation(dVar);
        }
    }

    public final d0.h b(int i2) {
        AbsListView absListView = this.f1757h[i2];
        if (absListView != null) {
            return (d0.h) absListView.getAdapter();
        }
        return null;
    }

    public final int c(int i2) {
        AbsListView absListView = this.f1757h[i2];
        if (absListView != null) {
            return absListView.getFirstVisiblePosition();
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(int i2) {
        int maxVisibleItemCount;
        StackView stackView = this.f1757h[this.f1750a];
        if (stackView == 0) {
            return;
        }
        int count = 0;
        if (i2 == 0 || i2 == 1) {
            maxVisibleItemCount = (((e1.c) stackView).getMaxVisibleItemCount() * i2 * (-1)) + stackView.getFirstVisiblePosition();
        } else {
            maxVisibleItemCount = 0;
        }
        if (i2 == 3 || maxVisibleItemCount > stackView.getCount()) {
            count = stackView.getCount();
        } else if (maxVisibleItemCount >= 0) {
            count = maxVisibleItemCount;
        }
        stackView.setSelection(count);
    }

    @Override
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = windowInsets.getSystemWindowInsetTop();
        WindowInsets windowInsetsReplaceSystemWindowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        Rect rect = new Rect(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        this.f1761l = rect;
        AbsListView[] absListViewArr = this.f1757h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setPadding(rect.left, rect.top, rect.right, rect.bottom);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            Rect rect2 = this.f1761l;
            absListView2.setPadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        return windowInsetsReplaceSystemWindowInsets;
    }

    public final void e(int i2, boolean z2) {
        View view = this.f1754e;
        view.offsetTopAndBottom(((-view.getMeasuredHeight()) + i2) - this.f1754e.getTop());
        if (z2) {
            invalidate();
        }
    }

    public final void f(int i2, boolean z2) {
        ConstraintLayout constraintLayout = this.f1753d;
        constraintLayout.offsetTopAndBottom(((-constraintLayout.getMeasuredHeight()) + i2) - this.f1753d.getTop());
        if (z2) {
            invalidate();
        }
    }

    public final boolean g(int i2) {
        d0.h hVarB;
        int listFocusItem = getListFocusItem();
        if (listFocusItem >= 0 && (hVarB = b(this.f1750a)) != null) {
            return hVarB.j(listFocusItem, i2);
        }
        return false;
    }

    public Point getClickPoint() {
        int clickRawX;
        int clickRawY;
        int i2 = this.f1750a;
        Object[] objArr = this.f1757h;
        Object obj = objArr[i2];
        if (obj != null) {
            clickRawX = ((e1.c) obj).getClickRawX();
            clickRawY = ((e1.c) objArr[this.f1750a]).getClickRawY();
        } else {
            clickRawX = -1;
            clickRawY = -1;
        }
        if (clickRawX == -1 || clickRawY == -1) {
            return null;
        }
        return new Point(clickRawX, clickRawY);
    }

    public d0.h getListAdapter() {
        return b(this.f1750a);
    }

    public int getListFocusItem() {
        AbsListView absListView = this.f1757h[this.f1750a];
        if (absListView == null) {
            return -1;
        }
        View selectedView = absListView.getSelectedView();
        if (!(selectedView instanceof ViewGroup)) {
            return -1;
        }
        View viewFindViewById = selectedView.findViewById(R.id.icon);
        if (viewFindViewById.getTag() instanceof Integer) {
            return ((Integer) viewFindViewById.getTag()).intValue();
        }
        return -1;
    }

    public int getListMaxVisibleItemCount() {
        Object obj = this.f1757h[this.f1750a];
        if (obj != null) {
            return ((e1.c) obj).getMaxVisibleItemCount();
        }
        return 0;
    }

    public int getListPosition() {
        return c(this.f1750a);
    }

    public Point getListSize() {
        int i2 = this.f1750a;
        AbsListView[] absListViewArr = this.f1757h;
        if (absListViewArr[i2] != null) {
            return new Point(absListViewArr[this.f1750a].getWidth() - absListViewArr[this.f1750a].getPaddingRight(), absListViewArr[this.f1750a].getHeight());
        }
        return null;
    }

    public final void h(int i2, d0.h hVar, boolean z2, boolean z3) {
        Rect rect;
        AbsListView[] absListViewArr = this.f1757h;
        if (hVar == null) {
            AbsListView absListView = absListViewArr[i2];
            if (absListView != null) {
                absListView.setAdapter((ListAdapter) null);
                return;
            }
            return;
        }
        AbsListView absListView2 = absListViewArr[i2];
        if (absListView2 != null && (absListView2 instanceof GridView) == hVar.e()) {
            if (z3) {
                setListAnimation(absListViewArr[i2]);
            }
            absListViewArr[i2].setAdapter((ListAdapter) hVar);
            return;
        }
        if (hVar.e()) {
            absListViewArr[i2] = new e1.a(getContext());
        } else {
            absListViewArr[i2] = new e1.b(getContext());
        }
        if (z2) {
            this.f1750a = i2;
        }
        if (z3) {
            setListAnimation(absListViewArr[i2]);
        }
        absListViewArr[i2].setAdapter((ListAdapter) hVar);
        int i3 = i2 + 1;
        removeViewAt(i3);
        addView(absListViewArr[i2], i3, new ViewGroup.LayoutParams(-1, -1));
        z0.e.l(absListViewArr[i2]);
        if (Build.VERSION.SDK_INT >= 20 && (rect = this.f1761l) != null) {
            absListViewArr[i2].setPadding(rect.left, rect.top, rect.right, rect.bottom);
        }
        absListViewArr[i2].setClipToPadding(false);
        absListViewArr[i2].setAnimationCacheEnabled(false);
        if (this.f1759j) {
            absListViewArr[i2].setCacheColorHint(0);
        } else {
            absListViewArr[i2].setDrawingCacheEnabled(true);
        }
        if (this.f1760k) {
            absListViewArr[i2].setVerticalScrollBarEnabled(false);
            absListViewArr[i2].setFastScrollEnabled(true);
        }
        absListViewArr[i2].setOnItemLongClickListener(this.f1770u);
        absListViewArr[i2].setOnItemClickListener(this.f1769t);
        setPageChangeEnable(true);
    }

    public final void i(int i2, boolean z2) {
        int measuredWidth;
        AbsListView[] absListViewArr = this.f1757h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null && (measuredWidth = absListView.getMeasuredWidth()) > 0) {
            AbsListView absListView2 = absListViewArr[0];
            if (absListView2 != null) {
                absListView2.offsetLeftAndRight((((this.f1750a == 0 ? 0 : -1) * measuredWidth) + i2) - absListView2.getLeft());
            }
            AbsListView absListView3 = absListViewArr[1];
            if (absListView3 != null) {
                absListView3.offsetLeftAndRight((((this.f1750a == 0 ? 1 : 0) * measuredWidth) + i2) - absListView3.getLeft());
            }
            if (this.f1756g != null) {
                float fAbs = (Math.abs(i2) / measuredWidth) / 2.0f;
                if (fAbs > 0.5f) {
                    fAbs = 0.5f;
                } else if (fAbs < 0.0f) {
                    fAbs = 0.0f;
                }
                char c2 = this.f1750a == 0 ? (char) 1 : (char) 0;
                float f2 = 0.5f + fAbs;
                this.f1756g[c2].setScaleX(f2);
                this.f1756g[c2].setScaleY(f2);
                float f3 = 1.0f - fAbs;
                this.f1756g[this.f1750a].setScaleX(f3);
                this.f1756g[this.f1750a].setScaleY(f3);
            }
            if (z2) {
                invalidate();
            }
        }
    }

    public final void j(int i2, int i3) {
        AbsListView absListView = this.f1757h[i2];
        if (absListView != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                absListView.setSelectionFromTop(i3, 0);
            } else {
                absListView.setSelection(i3);
            }
        }
    }

    public final void k(ru.zdevs.zarchiver.b bVar, q0.g gVar, int i2, int i3) {
        d0.h hVarB = b(bVar.f1652b);
        d0.h hVarB2 = bVar.b(getContext(), hVarB);
        hVarB2.f566n = this.f1771v;
        boolean z2 = this.f1760k && hVarB2.getCount() > getListMaxVisibleItemCount() && (hVarB2 instanceof SectionIndexer);
        boolean z3 = t0.b.l(32) && a0.c.K(i3, 128);
        AbsListView[] absListViewArr = this.f1757h;
        int i4 = bVar.f1652b;
        if (i2 <= 0 || hVarB2 != hVarB) {
            hVarB2.m(a0.c.K(this.f1775z, 256));
            if (gVar != null) {
                hVarB2.f565m = gVar;
            }
            h(i4, hVarB2, false, z3);
            if (this.f1760k) {
                absListViewArr[i4].setFastScrollEnabled(z2);
                if (z2) {
                    hVarB2.notifyDataSetChanged();
                }
            }
            if (i2 > 0) {
                j(i4, i2);
            }
        } else {
            if (this.f1760k) {
                absListViewArr[i4].setFastScrollEnabled(z2);
            }
            if (z3) {
                setListAnimation(absListViewArr[i4]);
            }
            hVarB2.notifyDataSetChanged();
            if (Math.abs(i2 - getListPosition()) > 1) {
                j(i4, i2);
            }
        }
        if (a0.c.K(i3, 1024)) {
            this.f1750a = i4;
            a();
        }
        boolean z4 = i4 == this.f1750a;
        if (z4) {
            setMessage(bVar.e());
        }
        if (gVar != null && gVar.f1399g && z4) {
            hVarB2.n(getListPosition(), getListMaxVisibleItemCount());
        }
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:74:0x0110  */
    @Override
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        AbsListView absListView;
        int iFindPointerIndex;
        float f2;
        float f3;
        AbsListView absListView2;
        if (!isEnabled()) {
            return false;
        }
        int i2 = Build.VERSION.SDK_INT;
        AbsListView[] absListViewArr = this.f1757h;
        if ((i2 >= 22 ? !((absListView = absListViewArr[this.f1750a]) == null || !absListView.canScrollList(-1)) : !((absListView2 = absListViewArr[this.f1750a]) == null || absListView2.getChildCount() <= 0 || (absListViewArr[this.f1750a].getFirstVisiblePosition() <= 0 && absListViewArr[this.f1750a].getChildAt(0).getTop() >= absListViewArr[this.f1750a].getPaddingTop()))) || (this.f1753d == null && this.f1754e == null)) {
            this.f1775z &= -33;
        } else {
            this.f1775z |= 32;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1775z &= -4;
            int pointerId = motionEvent.getPointerId(0);
            this.f1762m = pointerId;
            int iFindPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex2 >= 0) {
                this.f1764o = motionEvent.getY(iFindPointerIndex2);
                this.f1766q = motionEvent.getX(iFindPointerIndex2);
            }
            if (this.f1760k && this.f1766q >= getWidth() - this.f1752c) {
                this.f1762m = -1;
                this.f1775z &= -33;
                return false;
            }
            if (a0.c.K(this.f1775z, 32)) {
                if (this.f1753d != null) {
                    f(0, false);
                }
                if (this.f1754e != null) {
                    e(0, false);
                }
            }
            if (a0.c.K(this.f1775z, 16)) {
                i(0, false);
            }
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int i3 = this.f1762m;
                if (i3 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i3)) < 0) {
                    return false;
                }
                if (a0.c.L(this.f1775z, 3)) {
                    return true;
                }
                float y2 = motionEvent.getY(iFindPointerIndex) - this.f1764o;
                float fAbs = Math.abs(motionEvent.getX(iFindPointerIndex) - this.f1766q);
                float fAbs2 = Math.abs(y2) / 2.0f;
                int i4 = this.f1751b;
                if (fAbs2 > fAbs) {
                    float f4 = i4;
                    if (y2 > f4 && a0.c.K(this.f1775z, 32)) {
                        this.f1763n = this.f1764o + f4;
                        this.f1775z |= 2;
                        f fVar = this.f1773x;
                        if (fVar != null) {
                            fVar.g();
                        }
                    } else if (Math.abs(y2) < fAbs / 2.0f) {
                        f2 = i4;
                        if (fAbs > f2 && Math.abs(y2) < f2 && a0.c.K(this.f1775z, 16)) {
                            f3 = this.f1766q;
                            if (f3 >= motionEvent.getX(iFindPointerIndex)) {
                                i4 = -i4;
                            }
                            this.f1765p = f3 + i4;
                            this.f1775z |= 1;
                        }
                    }
                } else if (Math.abs(y2) < fAbs / 2.0f) {
                    f2 = i4;
                    if (fAbs > f2) {
                        f3 = this.f1766q;
                        if (f3 >= motionEvent.getX(iFindPointerIndex)) {
                            i4 = -i4;
                        }
                        this.f1765p = f3 + i4;
                        this.f1775z |= 1;
                    }
                }
            } else if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == this.f1762m) {
                        this.f1762m = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    }
                }
            }
            return a0.c.L(this.f1775z, 3);
        }
        this.f1775z &= -4;
        this.f1762m = -1;
        return false;
    }

    @Override
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        AbsListView[] absListViewArr = this.f1757h;
        if (absListViewArr[0] == null) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingLeft2 = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int paddingTop2 = (measuredHeight - getPaddingTop()) - getPaddingBottom();
        AbsListView absListView = absListViewArr[0];
        int i6 = this.f1750a;
        int i7 = paddingTop + paddingTop2;
        absListView.layout(paddingLeft - (i6 * paddingLeft2), paddingTop, ((1 - i6) * paddingLeft2) + paddingLeft, i7);
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            int i8 = this.f1750a;
            absListView2.layout(((1 - i8) * paddingLeft2) + paddingLeft, paddingTop, ((2 - i8) * paddingLeft2) + paddingLeft, i7);
        }
        this.f1755f.layout(0, measuredHeight / 2, paddingLeft2, measuredHeight);
        ConstraintLayout constraintLayout = this.f1753d;
        if (constraintLayout != null) {
            int i9 = measuredWidth / 2;
            constraintLayout.layout(i9 - (constraintLayout.getMeasuredWidth() / 2), -this.f1753d.getMeasuredHeight(), (this.f1753d.getMeasuredWidth() / 2) + i9, 0);
            if (Build.VERSION.SDK_INT >= 16 && absListViewArr[0].getFitsSystemWindows()) {
                ConstraintLayout constraintLayout2 = this.f1753d;
                constraintLayout2.setPadding(constraintLayout2.getPaddingLeft(), absListViewArr[0].getPaddingTop(), this.f1753d.getPaddingRight(), 0);
            }
        }
        View view = this.f1754e;
        if (view != null) {
            int i10 = measuredWidth / 2;
            view.layout(i10 - (view.getMeasuredWidth() / 2), -this.f1754e.getMeasuredHeight(), (this.f1754e.getMeasuredWidth() / 2) + i10, 0);
            if (Build.VERSION.SDK_INT >= 16 && absListViewArr[0].getFitsSystemWindows()) {
                this.f1754e.setPadding(0, absListViewArr[0].getPaddingTop() + z0.c.a(50), 0, 0);
            }
        }
        if (this.f1756g != null) {
            int iA = z0.c.a(12);
            int i11 = (paddingTop2 - iA) - (iA / 2);
            Rect rect = this.f1761l;
            int i12 = i11 - (rect == null ? 0 : rect.bottom);
            int i13 = paddingLeft2 / 2;
            int i14 = (iA * 5) / 4;
            int i15 = iA / 4;
            int i16 = iA + i12;
            this.f1756g[0].layout(i13 - i14, i12, i13 - i15, i16);
            this.f1756g[1].layout(i15 + i13, i12, i13 + i14, i16);
        }
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        AbsListView[] absListViewArr = this.f1757h;
        if (absListViewArr[0] == null) {
            return;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824);
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 0);
        absListViewArr[0].measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        AbsListView absListView = absListViewArr[1];
        if (absListView != null) {
            absListView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        }
        this.f1755f.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
        ConstraintLayout constraintLayout = this.f1753d;
        if (constraintLayout != null) {
            constraintLayout.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
        }
        View view = this.f1754e;
        if (view != null) {
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
        }
        this.f1767r = getMeasuredWidth() / 3;
        int iA = z0.c.a(72);
        if (this.f1767r > iA) {
            this.f1767r = iA;
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:97:0x0173  */
    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        AbsListView[] absListViewArr;
        AbsListView absListView;
        boolean z3;
        h hVar;
        int measuredHeight;
        if (!isEnabled() || !a0.c.L(this.f1775z, 48)) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f1762m);
                    if (iFindPointerIndex < 0) {
                        return false;
                    }
                    if (a0.c.K(this.f1775z, 2)) {
                        int y2 = (int) ((motionEvent.getY(iFindPointerIndex) - this.f1763n) * 0.8f);
                        ConstraintLayout constraintLayout = this.f1753d;
                        if (constraintLayout == null) {
                            measuredHeight = 0;
                        } else if (y2 <= constraintLayout.getMeasuredHeight()) {
                            ConstraintLayout constraintLayout2 = this.f1753d;
                            if (constraintLayout2 == null || constraintLayout2.getVisibility() == 0) {
                                View view = this.f1754e;
                                if (view != null && view.getVisibility() != 0) {
                                    e(0, false);
                                    this.f1754e.setVisibility(0);
                                }
                            } else {
                                this.f1753d.setVisibility(0);
                            }
                            f(y2, true);
                        } else {
                            measuredHeight = this.f1753d.getMeasuredHeight();
                            f(measuredHeight, false);
                        }
                        View view2 = this.f1754e;
                        if (view2 != null && y2 <= view2.getMeasuredHeight() + measuredHeight) {
                            if (this.f1754e.getVisibility() != 0) {
                                this.f1754e.setVisibility(0);
                            }
                            e(y2, true);
                        }
                    } else {
                        if (!a0.c.K(this.f1775z, 1)) {
                            return false;
                        }
                        float x2 = motionEvent.getX(iFindPointerIndex) - this.f1765p;
                        int i2 = this.f1750a;
                        e eVar = this.C;
                        if ((i2 == 0 && x2 < 0.0f) || (i2 == 1 && x2 > 0.0f)) {
                            i((int) x2, true);
                            this.f1756g[0].removeCallbacks(eVar);
                        }
                        View[] viewArr = this.f1756g;
                        if (viewArr != null) {
                            if (viewArr[0].getVisibility() != 0) {
                                this.f1756g[0].postDelayed(eVar, 600L);
                                this.f1756g[0].setVisibility(0);
                            }
                            if (this.f1756g[1].getVisibility() != 0) {
                                this.f1756g[1].setVisibility(0);
                            }
                        }
                    }
                } else if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (actionIndex < 0) {
                            return false;
                        }
                        this.f1762m = motionEvent.getPointerId(actionIndex);
                    } else if (actionMasked == 6) {
                        int actionIndex2 = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex2) == this.f1762m) {
                            this.f1762m = motionEvent.getPointerId(actionIndex2 == 0 ? 1 : 0);
                        }
                    }
                }
            }
            if (a0.c.K(this.f1775z, 1) && (absListView = (absListViewArr = this.f1757h)[0]) != null && absListView.getLeft() != 0 && absListViewArr[0].getLeft() != absListViewArr[0].getMeasuredWidth()) {
                if (actionMasked != 3) {
                    if (this.f1750a == 0 && absListViewArr[0].getLeft() < (-this.f1767r)) {
                        this.f1750a = 1;
                    } else if (this.f1750a != 1 || absListViewArr[0].getLeft() <= (-absListViewArr[0].getMeasuredWidth()) + this.f1767r) {
                        z3 = false;
                    } else {
                        this.f1750a = 0;
                    }
                    z3 = true;
                } else {
                    z3 = false;
                }
                a();
                if (z3 && (hVar = this.f1774y) != null) {
                    ((ZArchiver) hVar).C(this.f1750a);
                }
            }
            if (a0.c.K(this.f1775z, 2)) {
                View view3 = this.f1754e;
                if (view3 == null || actionMasked == 3) {
                    z2 = false;
                } else {
                    if (this.f1772w != null) {
                        int top = view3.getTop();
                        int i3 = (-this.f1754e.getMeasuredHeight()) / 4;
                        ConstraintLayout constraintLayout3 = this.f1753d;
                        z2 = top >= i3 + (constraintLayout3 != null ? constraintLayout3.getMeasuredHeight() : 0);
                    }
                    if (!z2) {
                        this.f1754e.setVisibility(8);
                    }
                }
                if (this.f1753d != null) {
                    a aVar = new a(z2);
                    b bVar = this.A;
                    bVar.reset();
                    bVar.setRepeatMode(Math.abs(Math.abs(this.f1753d.getTop()) - this.f1753d.getMeasuredHeight()));
                    bVar.setDuration(200L);
                    bVar.setInterpolator(this.f1768s);
                    bVar.setAnimationListener(aVar);
                    this.f1753d.clearAnimation();
                    this.f1753d.startAnimation(bVar);
                } else if (z2) {
                    this.f1772w.h(this.f1750a);
                }
            }
            this.f1775z &= -4;
            this.f1762m = -1;
            return false;
        }
        this.f1762m = motionEvent.getPointerId(0);
        this.f1775z &= -4;
        return true;
    }

    public void setCacheEnabled(boolean z2) {
        this.f1759j = z2;
        AbsListView[] absListViewArr = this.f1757h;
        if (z2) {
            AbsListView absListView = absListViewArr[0];
            if (absListView != null) {
                absListView.setCacheColorHint(0);
            }
            AbsListView absListView2 = absListViewArr[1];
            if (absListView2 != null) {
                absListView2.setCacheColorHint(0);
                return;
            }
            return;
        }
        AbsListView absListView3 = absListViewArr[0];
        if (absListView3 != null) {
            absListView3.setDrawingCacheEnabled(true);
        }
        AbsListView absListView4 = absListViewArr[1];
        if (absListView4 != null) {
            absListView4.setDrawingCacheEnabled(true);
        }
    }

    public void setCircleView(View view) {
        this.f1754e = view;
        view.setVisibility(8);
        addView(this.f1754e);
    }

    public void setExtendView(ConstraintLayout constraintLayout) {
        this.f1753d = constraintLayout;
        constraintLayout.setVisibility(8);
        addView(this.f1753d);
    }

    public void setExtendVisible(boolean z2) {
        ConstraintLayout constraintLayout = this.f1753d;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(z2 ? 0 : 8);
            ConstraintLayout constraintLayout2 = this.f1753d;
            constraintLayout2.setTranslationY(z2 ? constraintLayout2.getMeasuredHeight() : 0.0f);
            this.f1753d.invalidate();
        }
    }

    public void setFastScrollEnabled(boolean z2) {
        this.f1760k = z2;
        AbsListView[] absListViewArr = this.f1757h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setFastScrollEnabled(z2);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            absListView2.setFastScrollEnabled(z2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
    public void setMessage(int i2) {
        AbsListView absListView = this.f1757h[this.f1750a];
        boolean z2 = i2 > 0;
        if (z2 && absListView != null && absListView.getCount() > t0.b.g(1)) {
            z2 = false;
        }
        TextView textView = this.f1755f;
        if (!z2) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(i2);
        }
    }

    public void setOnExtendShowListener(f fVar) {
        this.f1773x = fVar;
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1769t = onItemClickListener;
        AbsListView[] absListViewArr = this.f1757h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setOnItemClickListener(onItemClickListener);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            absListView2.setOnItemClickListener(onItemClickListener);
        }
    }

    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f1770u = onItemLongClickListener;
        AbsListView[] absListViewArr = this.f1757h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setOnItemLongClickListener(onItemLongClickListener);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            absListView2.setOnItemLongClickListener(onItemLongClickListener);
        }
    }

    public void setOnItemSelectChanged(d0.h.a aVar) {
        this.f1771v = aVar;
        AbsListView[] absListViewArr = this.f1757h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null && absListView.getAdapter() != null) {
            ((d0.h) absListViewArr[0].getAdapter()).f566n = aVar;
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 == null || absListView2.getAdapter() == null) {
            return;
        }
        ((d0.h) absListViewArr[1].getAdapter()).f566n = aVar;
    }

    public void setOnListRefreshListener(g gVar) {
        this.f1772w = gVar;
    }

    public void setOnPageChangedListener(h hVar) {
        this.f1774y = hVar;
    }

    public void setPageChangeEnable(boolean z2) {
        AbsListView[] absListViewArr = this.f1757h;
        if (absListViewArr[0] == null || absListViewArr[1] == null || !z2) {
            if (z2) {
                return;
            }
            this.f1775z &= -17;
            return;
        }
        this.f1775z |= 16;
        if (this.f1756g != null) {
            return;
        }
        Context context = getContext();
        Drawable drawableG = z0.c.g(context, R.drawable.bg_page_indicator);
        this.f1756g = new View[2];
        for (int i2 = 0; i2 < 2; i2++) {
            this.f1756g[i2] = new View(context);
            this.f1756g[i2].setBackgroundDrawable(drawableG);
            this.f1756g[i2].setVisibility(8);
            addView(this.f1756g[i2]);
        }
        invalidate();
    }

    public void setSelectByIcon(boolean z2) {
        if (z2) {
            this.f1775z |= 256;
        } else {
            this.f1775z &= -257;
        }
        AbsListView[] absListViewArr = this.f1757h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            ((d0.h) absListView.getAdapter()).m(z2);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            ((d0.h) absListView2.getAdapter()).m(z2);
        }
    }
}

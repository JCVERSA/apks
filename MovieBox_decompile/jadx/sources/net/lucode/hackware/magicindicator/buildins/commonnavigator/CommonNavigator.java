package net.lucode.hackware.magicindicator.buildins.commonnavigator;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import net.lucode.hackware.magicindicator.R$id;
import net.lucode.hackware.magicindicator.R$layout;
import uy.b;
import xy.c;
import xy.d;

public class CommonNavigator extends FrameLayout implements vy.a, b.a {

    private HorizontalScrollView f67181a;

    private LinearLayout f67182b;

    private LinearLayout f67183c;

    private c f67184d;

    private xy.a f67185e;

    private b f67186f;

    private boolean f67187g;

    private boolean f67188h;

    private float f67189i;

    private boolean f67190j;

    private boolean f67191k;

    private int f67192l;

    private int f67193m;

    private boolean f67194n;

    private boolean f67195o;

    private boolean f67196p;

    private List f67197q;

    private DataSetObserver f67198r;

    class a extends DataSetObserver {
        a() {
        }

        @Override
        public void onChanged() {
            CommonNavigator.this.f67186f.m(CommonNavigator.this.f67185e.a());
            CommonNavigator.this.d();
        }

        @Override
        public void onInvalidated() {
        }
    }

    public CommonNavigator(Context context) {
        super(context);
        this.f67189i = 0.5f;
        this.f67190j = true;
        this.f67191k = true;
        this.f67196p = true;
        this.f67197q = new ArrayList();
        this.f67198r = new a();
        b bVar = new b();
        this.f67186f = bVar;
        bVar.k(this);
    }

    public void d() {
        removeAllViews();
        View viewInflate = this.f67187g ? LayoutInflater.from(getContext()).inflate(R$layout.pager_navigator_layout_no_scroll, this) : LayoutInflater.from(getContext()).inflate(R$layout.pager_navigator_layout, this);
        this.f67181a = (HorizontalScrollView) viewInflate.findViewById(R$id.scroll_view);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R$id.title_container);
        this.f67182b = linearLayout;
        linearLayout.setPadding(this.f67193m, 0, this.f67192l, 0);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R$id.indicator_container);
        this.f67183c = linearLayout2;
        if (this.f67194n) {
            linearLayout2.getParent().bringChildToFront(this.f67183c);
        }
        e();
    }

    private void e() {
        LinearLayout.LayoutParams layoutParams;
        int iG = this.f67186f.g();
        for (int i10 = 0; i10 < iG; i10++) {
            Object objC = this.f67185e.c(getContext(), i10);
            if (objC instanceof View) {
                View view = (View) objC;
                if (this.f67187g) {
                    layoutParams = new LinearLayout.LayoutParams(0, -1);
                    layoutParams.weight = this.f67185e.d(getContext(), i10);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-2, -1);
                }
                this.f67182b.addView(view, layoutParams);
            }
        }
        xy.a aVar = this.f67185e;
        if (aVar != null) {
            c cVarB = aVar.b(getContext());
            this.f67184d = cVarB;
            if (cVarB instanceof View) {
                this.f67183c.addView((View) this.f67184d, new FrameLayout.LayoutParams(-1, -1));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        this.f67197q.clear();
        int iG = this.f67186f.g();
        for (int i10 = 0; i10 < iG; i10++) {
            yy.a aVar = new yy.a();
            View childAt = this.f67182b.getChildAt(i10);
            if (childAt != 0) {
                aVar.f76426a = childAt.getLeft();
                aVar.f76427b = childAt.getTop();
                aVar.f76428c = childAt.getRight();
                int bottom = childAt.getBottom();
                aVar.f76429d = bottom;
                if (childAt instanceof xy.b) {
                    xy.b bVar = (xy.b) childAt;
                    aVar.f76430e = bVar.getContentLeft();
                    aVar.f76431f = bVar.getContentTop();
                    aVar.f76432g = bVar.getContentRight();
                    aVar.f76433h = bVar.getContentBottom();
                } else {
                    aVar.f76430e = aVar.f76426a;
                    aVar.f76431f = aVar.f76427b;
                    aVar.f76432g = aVar.f76428c;
                    aVar.f76433h = bottom;
                }
            }
            this.f67197q.add(aVar);
        }
    }

    public xy.a getAdapter() {
        return this.f67185e;
    }

    public int getLeftPadding() {
        return this.f67193m;
    }

    public c getPagerIndicator() {
        return this.f67184d;
    }

    public d getPagerTitleView(int i10) {
        LinearLayout linearLayout = this.f67182b;
        if (linearLayout == null) {
            return null;
        }
        return (d) linearLayout.getChildAt(i10);
    }

    public int getRightPadding() {
        return this.f67192l;
    }

    public float getScrollPivotX() {
        return this.f67189i;
    }

    public LinearLayout getTitleContainer() {
        return this.f67182b;
    }

    public boolean isAdjustMode() {
        return this.f67187g;
    }

    public boolean isEnablePivotScroll() {
        return this.f67188h;
    }

    public boolean isFollowTouch() {
        return this.f67191k;
    }

    public boolean isIndicatorOnTop() {
        return this.f67194n;
    }

    public boolean isReselectWhenLayout() {
        return this.f67196p;
    }

    public boolean isSkimOver() {
        return this.f67195o;
    }

    public boolean isSmoothScroll() {
        return this.f67190j;
    }

    @Override
    public void notifyDataSetChanged() {
        xy.a aVar = this.f67185e;
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override
    public void onAttachToMagicIndicator() {
        d();
    }

    @Override
    public void onDeselected(int i10, int i11) {
        LinearLayout linearLayout = this.f67182b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).onDeselected(i10, i11);
        }
    }

    @Override
    public void onDetachFromMagicIndicator() {
    }

    @Override
    public void onEnter(int i10, int i11, float f10, boolean z10) {
        LinearLayout linearLayout = this.f67182b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).onEnter(i10, i11, f10, z10);
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f67185e != null) {
            f();
            c cVar = this.f67184d;
            if (cVar != null) {
                cVar.onPositionDataProvide(this.f67197q);
            }
            if (this.f67196p && this.f67186f.f() == 0) {
                onPageSelected(this.f67186f.e());
                onPageScrolled(this.f67186f.e(), 0.0f, 0);
            }
        }
    }

    @Override
    public void onLeave(int i10, int i11, float f10, boolean z10) {
        LinearLayout linearLayout = this.f67182b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).onLeave(i10, i11, f10, z10);
        }
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
        if (this.f67185e != null) {
            this.f67186f.h(i10);
            c cVar = this.f67184d;
            if (cVar != null) {
                cVar.onPageScrollStateChanged(i10);
            }
        }
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        if (this.f67185e != null) {
            this.f67186f.i(i10, f10, i11);
            c cVar = this.f67184d;
            if (cVar != null) {
                cVar.onPageScrolled(i10, f10, i11);
            }
            if (this.f67181a == null || this.f67197q.size() <= 0 || i10 < 0 || i10 >= this.f67197q.size() || !this.f67191k) {
                return;
            }
            int iMin = Math.min(this.f67197q.size() - 1, i10);
            int iMin2 = Math.min(this.f67197q.size() - 1, i10 + 1);
            yy.a aVar = (yy.a) this.f67197q.get(iMin);
            yy.a aVar2 = (yy.a) this.f67197q.get(iMin2);
            float fA = aVar.a() - (this.f67181a.getWidth() * this.f67189i);
            this.f67181a.scrollTo((int) (fA + (((aVar2.a() - (this.f67181a.getWidth() * this.f67189i)) - fA) * f10)), 0);
        }
    }

    @Override
    public void onPageSelected(int i10) {
        if (this.f67185e != null) {
            this.f67186f.j(i10);
            c cVar = this.f67184d;
            if (cVar != null) {
                cVar.onPageSelected(i10);
            }
        }
    }

    @Override
    public void onSelected(int i10, int i11) {
        LinearLayout linearLayout = this.f67182b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).onSelected(i10, i11);
        }
        if (this.f67187g || this.f67191k || this.f67181a == null || this.f67197q.size() <= 0) {
            return;
        }
        yy.a aVar = (yy.a) this.f67197q.get(Math.min(this.f67197q.size() - 1, i10));
        if (this.f67188h) {
            float fA = aVar.a() - (this.f67181a.getWidth() * this.f67189i);
            if (this.f67190j) {
                this.f67181a.smoothScrollTo((int) fA, 0);
                return;
            } else {
                this.f67181a.scrollTo((int) fA, 0);
                return;
            }
        }
        int scrollX = this.f67181a.getScrollX();
        int i12 = aVar.f76426a;
        if (scrollX > i12) {
            if (this.f67190j) {
                this.f67181a.smoothScrollTo(i12, 0);
                return;
            } else {
                this.f67181a.scrollTo(i12, 0);
                return;
            }
        }
        int scrollX2 = this.f67181a.getScrollX() + getWidth();
        int i13 = aVar.f76428c;
        if (scrollX2 < i13) {
            if (this.f67190j) {
                this.f67181a.smoothScrollTo(i13 - getWidth(), 0);
            } else {
                this.f67181a.scrollTo(i13 - getWidth(), 0);
            }
        }
    }

    public void setAdapter(xy.a aVar) {
        xy.a aVar2 = this.f67185e;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.g(this.f67198r);
        }
        this.f67185e = aVar;
        if (aVar == null) {
            this.f67186f.m(0);
            d();
            return;
        }
        aVar.f(this.f67198r);
        this.f67186f.m(this.f67185e.a());
        if (this.f67182b != null) {
            this.f67185e.e();
        }
    }

    public void setAdjustMode(boolean z10) {
        this.f67187g = z10;
    }

    public void setEnablePivotScroll(boolean z10) {
        this.f67188h = z10;
    }

    public void setFollowTouch(boolean z10) {
        this.f67191k = z10;
    }

    public void setIndicatorOnTop(boolean z10) {
        this.f67194n = z10;
    }

    public void setLeftPadding(int i10) {
        this.f67193m = i10;
    }

    public void setReselectWhenLayout(boolean z10) {
        this.f67196p = z10;
    }

    public void setRightPadding(int i10) {
        this.f67192l = i10;
    }

    public void setScrollPivotX(float f10) {
        this.f67189i = f10;
    }

    public void setSkimOver(boolean z10) {
        this.f67195o = z10;
        this.f67186f.l(z10);
    }

    public void setSmoothScroll(boolean z10) {
        this.f67190j = z10;
    }
}

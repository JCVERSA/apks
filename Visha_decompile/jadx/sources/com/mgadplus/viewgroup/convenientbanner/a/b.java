package com.mgadplus.viewgroup.convenientbanner.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.mgadplus.viewgroup.convenientbanner.view.PauseCBLoopViewPager;
import com.mgadplus.viewgroup.dynamicview.ContainerFLayout;
import com.mgmi.R;
import defpackage.k2d;
import defpackage.y5d;
import java.util.List;

public class b<T> extends PagerAdapter {
    public List f;
    public k2d g;
    public PauseCBLoopViewPager i;
    public y5d k;
    public y5d l;
    public boolean h = true;
    public int j = -1;

    public b(k2d k2dVar, List list) {
        this.g = k2dVar;
        this.f = list;
    }

    public int a(int i) {
        int iA = a();
        if (iA == 0) {
            return 0;
        }
        return i % iA;
    }

    public void b(View view) {
        y5d y5dVar;
        if (view instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) view;
            int childCount = viewPager.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (viewPager.getChildAt(i) != null && (y5dVar = (y5d) viewPager.getChildAt(i).getTag(R.id.cb_item_tag)) != null) {
                    y5dVar.c();
                    e(i);
                }
            }
        }
    }

    public void c(PauseCBLoopViewPager pauseCBLoopViewPager) {
        this.i = pauseCBLoopViewPager;
    }

    public void d() {
        y5d y5dVar;
        int childCount = this.i.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (this.i.getChildAt(i) != null && (y5dVar = (y5d) this.i.getChildAt(i).getTag(R.id.cb_item_tag)) != null) {
                y5dVar.a(i);
            }
        }
    }

    @Override
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        if (a(i) == this.i.getCurrentItem()) {
            viewGroup.removeView(view);
            return;
        }
        if (String.valueOf(this.i.getCurrentItem()).equals(view.getTag())) {
            viewGroup.removeView(view);
            return;
        }
        if (view instanceof ContainerFLayout) {
            Object parentViewWrf = ((ContainerFLayout) view).getParentViewWrf();
            y5d y5dVarJ = j();
            if (parentViewWrf instanceof y5d) {
                if (y5dVarJ == parentViewWrf) {
                    viewGroup.removeView(view);
                    return;
                }
                ((y5d) parentViewWrf).a(i);
            }
        }
        viewGroup.removeView(view);
    }

    public void e(int i) {
        y5d y5dVar;
        PauseCBLoopViewPager pauseCBLoopViewPager = this.i;
        if (pauseCBLoopViewPager == null) {
            return;
        }
        int currentItem = pauseCBLoopViewPager.getCurrentItem();
        int iA = a(currentItem);
        if (this.i.getChildCount() == 0) {
            y5d y5dVar2 = this.k;
            if (y5dVar2 != null) {
                y5dVar2.b(iA);
                return;
            }
            return;
        }
        if (!String.valueOf(currentItem).equals(this.i.getChildAt(i).getTag()) || (y5dVar = (y5d) this.i.getChildAt(i).getTag(R.id.cb_item_tag)) == null) {
            return;
        }
        y5dVar.b(iA);
    }

    public void f(View view) {
        y5d y5dVar;
        if (view instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) view;
            int childCount = viewPager.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (viewPager.getChildAt(i) != null && (y5dVar = (y5d) viewPager.getChildAt(i).getTag(R.id.cb_item_tag)) != null) {
                    y5dVar.d();
                }
            }
        }
    }

    public void g(int i) {
        PauseCBLoopViewPager pauseCBLoopViewPager = this.i;
        if (pauseCBLoopViewPager == null) {
            return;
        }
        int childCount = pauseCBLoopViewPager.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (String.valueOf(i).equals(this.i.getChildAt(i2).getTag())) {
                y5d y5dVar = (y5d) this.i.getChildAt(i2).getTag(R.id.cb_item_tag);
                y5d y5dVar2 = this.l;
                if (y5dVar2 != null) {
                    y5dVar2.f();
                } else {
                    y5d y5dVar3 = this.k;
                    if (y5dVar3 != null) {
                        y5dVar3.f();
                    }
                }
                if (y5dVar != null) {
                    y5dVar.b(a(i));
                    this.l = y5dVar;
                    return;
                }
            }
        }
    }

    @Override
    public int getCount() {
        boolean z = this.h;
        int iA = a();
        return z ? iA * 300 : iA;
    }

    @Override
    public int getItemPosition(Object obj) {
        return super.getItemPosition(obj);
    }

    public void h(View view) {
        ViewPager viewPager;
        int currentItem;
        if (!(view instanceof ViewPager) || (currentItem = (viewPager = (ViewPager) view).getCurrentItem()) == this.j) {
            return;
        }
        int childCount = viewPager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (String.valueOf(currentItem).equals(viewPager.getChildAt(i).getTag())) {
                y5d y5dVar = (y5d) viewPager.getChildAt(i).getTag(R.id.cb_item_tag);
                if (y5dVar != null) {
                    this.j = currentItem;
                    y5dVar.a();
                }
            } else {
                y5d y5dVar2 = (y5d) viewPager.getChildAt(i).getTag(R.id.cb_item_tag);
                if (y5dVar2 != null) {
                    y5dVar2.b();
                }
            }
        }
    }

    public boolean i() {
        y5d y5dVar;
        if (this.j != -1) {
            int childCount = this.i.getChildCount();
            int currentItem = this.i.getCurrentItem();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    y5dVar = null;
                    break;
                }
                if (String.valueOf(currentItem).equals(this.i.getChildAt(i).getTag())) {
                    y5dVar = (y5d) this.i.getChildAt(i).getTag(R.id.cb_item_tag);
                    break;
                }
                i++;
            }
        } else {
            if (this.i.getChildAt(0) == null) {
                return false;
            }
            y5dVar = (y5d) this.i.getChildAt(0).getTag(R.id.cb_item_tag);
        }
        return y5dVar != null && y5dVar.e();
    }

    @Override
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewA = a(i, null, viewGroup);
        viewGroup.addView(viewA, new ViewPager.LayoutParams());
        return viewA;
    }

    @Override
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public final y5d j() {
        PauseCBLoopViewPager pauseCBLoopViewPager = this.i;
        View childAt = pauseCBLoopViewPager.getChildAt(pauseCBLoopViewPager.getCurrentItem());
        if (childAt != null) {
            return (y5d) childAt.getTag(R.id.cb_item_tag);
        }
        return null;
    }

    public int a() {
        List list = this.f;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void a(boolean z) {
        this.h = z;
    }

    public View a(int i, View view, ViewGroup viewGroup) {
        View viewA;
        y5d y5dVar;
        int iA = a(i);
        if (view == null) {
            y5dVar = (y5d) this.g.a(iA);
            viewA = y5dVar.a(viewGroup.getContext(), this.f.get(iA));
            if (viewA == null) {
                return new View(viewGroup.getContext());
            }
            viewA.setTag(R.id.cb_item_tag, y5dVar);
            viewA.setTag(String.valueOf(i));
        } else {
            viewA = view;
            y5dVar = (y5d) view.getTag(R.id.cb_item_tag);
        }
        List list = this.f;
        if (list != null && !list.isEmpty()) {
            y5dVar.a(viewGroup.getContext(), iA, this.f.get(iA));
        }
        PauseCBLoopViewPager pauseCBLoopViewPager = this.i;
        if (pauseCBLoopViewPager != null && pauseCBLoopViewPager.getChildCount() == 0) {
            this.k = y5dVar;
            y5dVar.b(iA);
        }
        return viewA;
    }
}

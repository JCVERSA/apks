package com.mgadplus.viewgroup.convenientbanner.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.mgadplus.viewgroup.convenientbanner.view.CBLoopViewPager;
import com.mgmi.R;
import defpackage.k2d;
import defpackage.y5d;
import java.util.List;

public class a<T> extends PagerAdapter {
    public List f;
    public k2d g;
    public boolean h;
    public CBLoopViewPager i;
    public int j;

    public int a(int i) {
        int iA = a();
        if (iA == 0) {
            return 0;
        }
        return i % iA;
    }

    public void b(View view) {
        if (view instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) view;
            int iA = a(viewPager.getCurrentItem());
            if (iA != this.j) {
                int childCount = viewPager.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    if (viewPager.getChildAt(i).getTag() == String.valueOf(iA)) {
                        y5d y5dVar = (y5d) viewPager.getChildAt(i).getTag(R.id.cb_item_tag);
                        if (y5dVar != null) {
                            this.j = iA;
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
        }
    }

    public boolean c() {
        y5d y5dVar;
        if (this.j != -1) {
            int childCount = this.i.getChildCount();
            int iA = a(this.i.getCurrentItem());
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    y5dVar = null;
                    break;
                }
                if (this.i.getChildAt(i).getTag() == String.valueOf(iA)) {
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
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        y5d y5dVar = (y5d) view.getTag(R.id.cb_item_tag);
        int iA = a(i);
        if (y5dVar != null) {
            y5dVar.a(iA);
        }
        viewGroup.removeView(view);
    }

    @Override
    public void finishUpdate(ViewGroup viewGroup) {
        int currentItem = this.i.getCurrentItem();
        if (currentItem == 0) {
            currentItem = this.i.getFristItem();
        } else if (currentItem == getCount() - 1) {
            currentItem = this.i.getLastItem();
        }
        try {
            this.i.setCurrentItem(currentItem, false);
        } catch (IllegalStateException unused) {
        }
    }

    @Override
    public int getCount() {
        boolean z = this.h;
        int iA = a();
        return z ? iA * 300 : iA;
    }

    @Override
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewA = a(a(i), null, viewGroup);
        viewGroup.addView(viewA);
        return viewA;
    }

    @Override
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
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
        if (view == null) {
            y5dVar = (y5d) this.g.a(i);
            viewA = y5dVar.a(viewGroup.getContext(), this.f.get(i));
            viewA.setTag(R.id.cb_item_tag, y5dVar);
            viewA.setTag(String.valueOf(i));
        } else {
            viewA = view;
            y5dVar = (y5d) view.getTag(R.id.cb_item_tag);
        }
        List list = this.f;
        if (list != null && !list.isEmpty()) {
            y5dVar.a(viewGroup.getContext(), i, this.f.get(i));
        }
        return viewA;
    }
}

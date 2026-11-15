package com.mgmi.ViewGroup.convenientbanner.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.mgmi.R;
import com.mgmi.ViewGroup.convenientbanner.b.b;
import com.mgmi.ViewGroup.convenientbanner.view.CBLoopViewPager;
import java.util.List;

public class a<T> extends PagerAdapter {
    protected List<T> a;
    protected com.mgmi.ViewGroup.convenientbanner.b.a b;
    private CBLoopViewPager d;
    private boolean c = true;
    private final int e = 300;

    public a(com.mgmi.ViewGroup.convenientbanner.b.a aVar, List<T> list) {
        this.b = aVar;
        this.a = list;
    }

    public int a(int i) {
        int iA = a();
        if (iA == 0) {
            return 0;
        }
        return i % iA;
    }

    @Override
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override
    public void finishUpdate(ViewGroup viewGroup) {
        int currentItem = this.d.getCurrentItem();
        if (currentItem == 0) {
            currentItem = this.d.getFristItem();
        } else if (currentItem == getCount() - 1) {
            currentItem = this.d.getLastItem();
        }
        try {
            this.d.setCurrentItem(currentItem, false);
        } catch (IllegalStateException unused) {
        }
    }

    @Override
    public int getCount() {
        boolean z = this.c;
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
        List<T> list = this.a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void a(CBLoopViewPager cBLoopViewPager) {
        this.d = cBLoopViewPager;
    }

    public View a(int i, View view, ViewGroup viewGroup) {
        View viewA;
        b bVar;
        if (view == null) {
            bVar = (b) this.b.a();
            viewA = bVar.a(viewGroup.getContext(), this.a.get(i));
            viewA.setTag(R.id.cb_item_tag, bVar);
        } else {
            viewA = view;
            bVar = (b) view.getTag(R.id.cb_item_tag);
        }
        List<T> list = this.a;
        if (list != null && !list.isEmpty()) {
            bVar.a(viewGroup.getContext(), i, this.a.get(i));
        }
        return viewA;
    }
}

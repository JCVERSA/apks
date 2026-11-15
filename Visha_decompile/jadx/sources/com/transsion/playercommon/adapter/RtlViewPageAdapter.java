package com.transsion.playercommon.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import java.util.List;

public class RtlViewPageAdapter extends PagerAdapter {
    public final List f;

    public RtlViewPageAdapter(List list) {
        this.f = list;
    }

    @Override
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override
    public int getCount() {
        return this.f.size();
    }

    @Override
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View view = (View) this.f.get(i);
        view.setTag(Integer.valueOf(i));
        viewGroup.addView(view);
        return view;
    }

    @Override
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}

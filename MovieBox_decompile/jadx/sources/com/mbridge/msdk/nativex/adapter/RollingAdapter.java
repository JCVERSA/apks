package com.mbridge.msdk.nativex.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.mbridge.msdk.nativex.view.MBNativeRollView;
import com.mbridge.msdk.out.Frame;
import java.util.ArrayList;
import java.util.List;

public class RollingAdapter extends PagerAdapter {
    private List<Frame> list;
    private List<View> listview = new ArrayList();
    private MBNativeRollView.a mvinterface;

    public RollingAdapter(List<Frame> list) {
        this.list = new ArrayList();
        this.list = list;
    }

    @Override
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        viewGroup.removeView(this.listview.get(i10));
    }

    @Override
    public int getCount() {
        return this.list.size();
    }

    public MBNativeRollView.a getMvinterface() {
        return null;
    }

    @Override
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        return null;
    }

    @Override
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public void setMvinterface(MBNativeRollView.a aVar) {
    }
}

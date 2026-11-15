package com.transsion.playercommon.adapter;

import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.List;

public class RtlPageAdapter2 extends TrassionFragmentStateAdapter {
    public List x;
    public String[] y;

    public RtlPageAdapter2(Fragment fragment, List list, String[] strArr) {
        super(fragment);
        this.y = strArr;
        this.x = list;
    }

    @Override
    public Fragment createFragment(int i) {
        return (Fragment) this.x.get(i);
    }

    @Override
    public int getItemCount() {
        return this.x.size();
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    public void t(int i) {
        for (int i2 = 0; i2 < getItemCount(); i2++) {
            View view = createFragment(i2).getView();
            if (view != null) {
                if (i2 != i) {
                    view.setVisibility(8);
                } else if (view.getVisibility() != 0) {
                    view.setVisibility(0);
                    view.requestLayout();
                }
            }
        }
    }
}

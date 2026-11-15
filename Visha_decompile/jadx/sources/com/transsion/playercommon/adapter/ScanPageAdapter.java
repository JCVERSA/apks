package com.transsion.playercommon.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;

public class ScanPageAdapter extends FragmentPagerAdapter {
    public List f;

    public ScanPageAdapter(FragmentManager fragmentManager, List list) {
        super(fragmentManager);
        this.f = list;
    }

    @Override
    public int getCount() {
        return this.f.size();
    }

    @Override
    public Fragment getItem(int i) {
        return (Fragment) this.f.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public int getItemPosition(Object obj) {
        return -2;
    }
}

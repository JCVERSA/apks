package com.transsion.playercommon.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;

public class PageAdapter extends FragmentPagerAdapter {
    public List f;

    @Override
    public int getCount() {
        return this.f.size();
    }

    @Override
    public Fragment getItem(int i) {
        return (Fragment) this.f.get(i);
    }
}

package com.transsion.playercommon.adapter;

import android.util.SparseArray;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.p004lifecycle.Lifecycle;
import com.transsion.playercommon.fragments.BaseFragment;
import java.util.ArrayList;
import java.util.List;

public class PagerAdapter2 extends TrassionFragmentStateAdapter {
    public List x;
    public a y;
    public final SparseArray z;

    public interface a {
        BaseFragment create(int i);

        int getCount();
    }

    public PagerAdapter2(FragmentManager fragmentManager, Lifecycle lifecycle) {
        super(fragmentManager, lifecycle);
        this.x = new ArrayList();
        this.z = new SparseArray();
    }

    @Override
    public Fragment createFragment(int i) {
        BaseFragment baseFragment = (BaseFragment) this.z.get(i);
        if (baseFragment != null) {
            return baseFragment;
        }
        a aVar = this.y;
        if (aVar == null) {
            return (Fragment) this.x.get(i);
        }
        BaseFragment baseFragmentCreate = aVar.create(i);
        this.z.put(i, baseFragmentCreate);
        return baseFragmentCreate;
    }

    @Override
    public int getItemCount() {
        a aVar = this.y;
        return aVar != null ? aVar.getCount() : this.x.size();
    }

    public void release() {
        this.z.clear();
        this.x.clear();
        this.y = null;
        g();
    }

    public void t(int i) {
        int itemCount = getItemCount();
        for (int i2 = 0; i2 < itemCount; i2++) {
            BaseFragment baseFragmentU = u(i2);
            if (baseFragmentU != null && baseFragmentU.getView() != null) {
                View view = baseFragmentU.getView();
                if (i2 != i) {
                    view.setVisibility(8);
                } else if (view.getVisibility() != 0) {
                    view.setVisibility(0);
                    view.requestLayout();
                }
            }
        }
    }

    public BaseFragment u(int i) {
        BaseFragment baseFragment = (BaseFragment) this.z.get(i);
        if (baseFragment != null) {
            return baseFragment;
        }
        if (this.y != null || i < 0 || i >= this.x.size()) {
            return null;
        }
        return (BaseFragment) this.x.get(i);
    }

    public void v(a aVar) {
        this.y = aVar;
        this.x = new ArrayList();
        this.z.clear();
    }
}

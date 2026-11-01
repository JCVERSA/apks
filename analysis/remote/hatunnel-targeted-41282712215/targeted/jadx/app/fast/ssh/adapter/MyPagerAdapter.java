package app.fast.ssh.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import java.util.List;

public class MyPagerAdapter extends FragmentStatePagerAdapter {
    private final List<Fragment> mFragments;
    private final List<String> mHeaders;

    public MyPagerAdapter(List<Fragment> list, List<String> list2, FragmentManager fragmentManager, int i) {
        super(fragmentManager, i);
        this.mFragments = list;
        this.mHeaders = list2;
    }

    @Override
    public int getCount() {
        return this.mFragments.size();
    }

    @Override
    public Fragment getItem(int i) {
        return this.mFragments.get(i);
    }

    @Override
    public CharSequence getPageTitle(int i) {
        return this.mHeaders.get(i);
    }
}

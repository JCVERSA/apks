package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.ref.WeakReference;

public final class TabLayoutMediator {

    @Nullable
    private RecyclerView.Adapter adapter;
    private boolean attached;
    private final boolean autoRefresh;

    @Nullable
    private b onPageChangeCallback;

    @Nullable
    private TabLayout.OnTabSelectedListener onTabSelectedListener;

    @Nullable
    private RecyclerView.g pagerAdapterObserver;
    private final boolean smoothScroll;
    private final TabConfigurationStrategy tabConfigurationStrategy;

    @NonNull
    private final TabLayout tabLayout;

    @NonNull
    private final ViewPager2 viewPager;

    public interface TabConfigurationStrategy {
        void onConfigureTab(@NonNull TabLayout.Tab tab, int i10);
    }

    private class a extends RecyclerView.g {
        a() {
        }

        @Override
        public void onChanged() {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override
        public void onItemRangeChanged(int i10, int i11) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override
        public void onItemRangeInserted(int i10, int i11) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override
        public void onItemRangeMoved(int i10, int i11, int i12) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override
        public void onItemRangeRemoved(int i10, int i11) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }
    }

    private static class b extends ViewPager2.OnPageChangeCallback {

        private final WeakReference f29001a;

        private int f29002b;

        private int f29003c;

        b(TabLayout tabLayout) {
            this.f29001a = new WeakReference(tabLayout);
            a();
        }

        void a() {
            this.f29003c = 0;
            this.f29002b = 0;
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            this.f29002b = this.f29003c;
            this.f29003c = i10;
            TabLayout tabLayout = (TabLayout) this.f29001a.get();
            if (tabLayout != null) {
                tabLayout.updateViewPagerScrollState(this.f29003c);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = (TabLayout) this.f29001a.get();
            if (tabLayout != null) {
                int i12 = this.f29003c;
                tabLayout.setScrollPosition(i10, f10, i12 != 2 || this.f29002b == 1, (i12 == 2 && this.f29002b == 0) ? false : true, false);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            TabLayout tabLayout = (TabLayout) this.f29001a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.f29003c;
            tabLayout.selectTab(tabLayout.getTabAt(i10), i11 == 0 || (i11 == 2 && this.f29002b == 0));
        }
    }

    private static class c implements TabLayout.OnTabSelectedListener {

        private final ViewPager2 f29004a;

        private final boolean f29005b;

        c(ViewPager2 viewPager2, boolean z10) {
            this.f29004a = viewPager2;
            this.f29005b = z10;
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            this.f29004a.setCurrentItem(tab.getPosition(), this.f29005b);
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, true, tabConfigurationStrategy);
    }

    public void attach() {
        if (this.attached) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        RecyclerView.Adapter adapter = this.viewPager.getAdapter();
        this.adapter = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.attached = true;
        b bVar = new b(this.tabLayout);
        this.onPageChangeCallback = bVar;
        this.viewPager.registerOnPageChangeCallback(bVar);
        c cVar = new c(this.viewPager, this.smoothScroll);
        this.onTabSelectedListener = cVar;
        this.tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) cVar);
        if (this.autoRefresh) {
            a aVar = new a();
            this.pagerAdapterObserver = aVar;
            this.adapter.registerAdapterDataObserver(aVar);
        }
        populateTabsFromPagerAdapter();
        this.tabLayout.setScrollPosition(this.viewPager.getCurrentItem(), 0.0f, true);
    }

    public void detach() {
        RecyclerView.Adapter adapter;
        if (this.autoRefresh && (adapter = this.adapter) != null) {
            adapter.unregisterAdapterDataObserver(this.pagerAdapterObserver);
            this.pagerAdapterObserver = null;
        }
        this.tabLayout.removeOnTabSelectedListener(this.onTabSelectedListener);
        this.viewPager.unregisterOnPageChangeCallback(this.onPageChangeCallback);
        this.onTabSelectedListener = null;
        this.onPageChangeCallback = null;
        this.adapter = null;
        this.attached = false;
    }

    public boolean isAttached() {
        return this.attached;
    }

    void populateTabsFromPagerAdapter() {
        this.tabLayout.removeAllTabs();
        RecyclerView.Adapter adapter = this.adapter;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                TabLayout.Tab tabNewTab = this.tabLayout.newTab();
                this.tabConfigurationStrategy.onConfigureTab(tabNewTab, i10);
                this.tabLayout.addTab(tabNewTab, false);
            }
            if (itemCount > 0) {
                int iMin = Math.min(this.viewPager.getCurrentItem(), this.tabLayout.getTabCount() - 1);
                if (iMin != this.tabLayout.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.tabLayout;
                    tabLayout.selectTab(tabLayout.getTabAt(iMin));
                }
            }
        }
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, z10, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, boolean z11, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this.tabLayout = tabLayout;
        this.viewPager = viewPager2;
        this.autoRefresh = z10;
        this.smoothScroll = z11;
        this.tabConfigurationStrategy = tabConfigurationStrategy;
    }
}

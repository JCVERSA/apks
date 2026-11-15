package com.transsion.widgets;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;

public class DelegatingPagerAdapter extends PagerAdapter {
    private final PagerAdapter mDelegate;

    public static class MyDataSetObserver extends DataSetObserver {
        final DelegatingPagerAdapter mParent;

        @Override
        public void onChanged() {
            DelegatingPagerAdapter delegatingPagerAdapter = this.mParent;
            if (delegatingPagerAdapter != null) {
                delegatingPagerAdapter.superNotifyDataSetChanged();
            }
        }

        @Override
        public void onInvalidated() {
            onChanged();
        }

        private MyDataSetObserver(DelegatingPagerAdapter delegatingPagerAdapter) {
            this.mParent = delegatingPagerAdapter;
        }
    }

    public DelegatingPagerAdapter(@NonNull PagerAdapter pagerAdapter) {
        this.mDelegate = pagerAdapter;
        pagerAdapter.registerDataSetObserver(new MyDataSetObserver());
    }

    public void superNotifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    @Override
    public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        this.mDelegate.destroyItem(viewGroup, i, obj);
    }

    @Override
    public void finishUpdate(@NonNull ViewGroup viewGroup) {
        this.mDelegate.finishUpdate(viewGroup);
    }

    @Override
    public int getCount() {
        return this.mDelegate.getCount();
    }

    public PagerAdapter getDelegate() {
        return this.mDelegate;
    }

    @Override
    public int getItemPosition(@NonNull Object obj) {
        return this.mDelegate.getItemPosition(obj);
    }

    @Override
    public CharSequence getPageTitle(int i) {
        return this.mDelegate.getPageTitle(i);
    }

    @Override
    public float getPageWidth(int i) {
        return this.mDelegate.getPageWidth(i);
    }

    @Override
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        return this.mDelegate.instantiateItem(viewGroup, i);
    }

    @Override
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return this.mDelegate.isViewFromObject(view, obj);
    }

    @Override
    public void notifyDataSetChanged() {
        this.mDelegate.notifyDataSetChanged();
    }

    @Override
    public void registerDataSetObserver(@NonNull DataSetObserver dataSetObserver) {
        this.mDelegate.registerDataSetObserver(dataSetObserver);
    }

    @Override
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        this.mDelegate.restoreState(parcelable, classLoader);
    }

    @Override
    public Parcelable saveState() {
        return this.mDelegate.saveState();
    }

    @Override
    public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        this.mDelegate.setPrimaryItem(viewGroup, i, obj);
    }

    @Override
    public void startUpdate(@NonNull ViewGroup viewGroup) {
        this.mDelegate.startUpdate(viewGroup);
    }

    @Override
    public void unregisterDataSetObserver(@NonNull DataSetObserver dataSetObserver) {
        this.mDelegate.unregisterDataSetObserver(dataSetObserver);
    }

    @Override
    @Deprecated
    public void destroyItem(@NonNull View view, int i, @NonNull Object obj) {
        this.mDelegate.destroyItem(view, i, obj);
    }

    @Override
    @Deprecated
    public void finishUpdate(@NonNull View view) {
        this.mDelegate.finishUpdate(view);
    }

    @Override
    @NonNull
    @Deprecated
    public Object instantiateItem(@NonNull View view, int i) {
        return this.mDelegate.instantiateItem(view, i);
    }

    @Override
    @Deprecated
    public void setPrimaryItem(@NonNull View view, int i, @NonNull Object obj) {
        this.mDelegate.setPrimaryItem(view, i, obj);
    }

    @Override
    @Deprecated
    public void startUpdate(@NonNull View view) {
        this.mDelegate.startUpdate(view);
    }
}

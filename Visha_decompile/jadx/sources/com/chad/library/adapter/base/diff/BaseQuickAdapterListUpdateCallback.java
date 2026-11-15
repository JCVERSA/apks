package com.chad.library.adapter.base.diff;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.ListUpdateCallback;
import com.chad.library.adapter.base.BaseQuickAdapter;

public final class BaseQuickAdapterListUpdateCallback implements ListUpdateCallback {

    @NonNull
    private final BaseQuickAdapter mAdapter;

    public BaseQuickAdapterListUpdateCallback(@NonNull BaseQuickAdapter baseQuickAdapter) {
        this.mAdapter = baseQuickAdapter;
    }

    @Override
    public void onChanged(int i, int i2, @Nullable Object obj) {
        BaseQuickAdapter baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeChanged(i + baseQuickAdapter.getHeaderLayoutCount(), i2, obj);
    }

    @Override
    public void onInserted(int i, int i2) {
        BaseQuickAdapter baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeInserted(i + baseQuickAdapter.getHeaderLayoutCount(), i2);
    }

    @Override
    public void onMoved(int i, int i2) {
        BaseQuickAdapter baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemMoved(i + baseQuickAdapter.getHeaderLayoutCount(), i2 + this.mAdapter.getHeaderLayoutCount());
    }

    @Override
    public void onRemoved(int i, int i2) {
        BaseQuickAdapter baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeRemoved(i + baseQuickAdapter.getHeaderLayoutCount(), i2);
    }
}

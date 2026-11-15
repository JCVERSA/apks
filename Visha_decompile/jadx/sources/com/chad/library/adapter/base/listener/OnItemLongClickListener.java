package com.chad.library.adapter.base.listener;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;

public abstract class OnItemLongClickListener extends SimpleClickListener {
    @Override
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    @Override
    public void onItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    @Override
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    @Override
    public void onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        onSimpleItemLongClick(baseQuickAdapter, view, i);
    }

    public abstract void onSimpleItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i);
}

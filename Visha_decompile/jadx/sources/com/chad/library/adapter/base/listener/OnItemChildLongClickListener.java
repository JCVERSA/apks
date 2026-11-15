package com.chad.library.adapter.base.listener;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;

public abstract class OnItemChildLongClickListener extends SimpleClickListener {
    @Override
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    @Override
    public void onItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        onSimpleItemChildLongClick(baseQuickAdapter, view, i);
    }

    @Override
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    @Override
    public void onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
    }

    public abstract void onSimpleItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i);
}

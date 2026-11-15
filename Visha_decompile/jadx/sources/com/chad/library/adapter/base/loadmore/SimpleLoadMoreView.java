package com.chad.library.adapter.base.loadmore;

import com.chad.library.R;

public final class SimpleLoadMoreView extends LoadMoreView {
    @Override
    public int getLayoutId() {
        return R.layout.brvah_quick_view_load_more;
    }

    @Override
    public int getLoadEndViewId() {
        return R.id.load_more_load_end_view;
    }

    @Override
    public int getLoadFailViewId() {
        return R.id.load_more_load_fail_view;
    }

    @Override
    public int getLoadingViewId() {
        return R.id.load_more_loading_view;
    }
}

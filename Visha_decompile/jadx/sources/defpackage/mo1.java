package defpackage;

import android.content.Context;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.loadmore.LoadMoreView;
import com.transsion.playercommon.R;

public class mo1 extends LoadMoreView {
    public Context a;
    public Boolean b = Boolean.TRUE;
    public int c = 1;

    public mo1(Context context) {
        this.a = context;
    }

    private void visibleLoadEnd(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadEndViewId(), z);
    }

    private void visibleLoadFail(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadFailViewId(), z);
    }

    private void visibleLoading(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadingViewId(), z);
    }

    public mo1 a(Boolean bool) {
        this.b = bool;
        return this;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder) {
        int i = this.c;
        if (i == 1) {
            visibleLoading(baseViewHolder, false);
            visibleLoadFail(baseViewHolder, false);
            visibleLoadEnd(baseViewHolder, false);
            return;
        }
        if (i == 2) {
            visibleLoading(baseViewHolder, true);
            visibleLoadFail(baseViewHolder, false);
            visibleLoadEnd(baseViewHolder, false);
        } else if (i == 3) {
            visibleLoading(baseViewHolder, false);
            visibleLoadFail(baseViewHolder, true);
            visibleLoadEnd(baseViewHolder, false);
        } else {
            if (i != 4) {
                return;
            }
            visibleLoading(baseViewHolder, false);
            visibleLoadFail(baseViewHolder, false);
            if (this.b.booleanValue()) {
                visibleLoadEnd(baseViewHolder, true);
            }
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.custom_load_more_view;
    }

    @Override
    public int getLoadEndViewId() {
        return R.id.load_more_load_end_view;
    }

    @Override
    public int getLoadFailViewId() {
        return R.id.load_fail_view;
    }

    @Override
    public int getLoadMoreStatus() {
        return this.c;
    }

    @Override
    public int getLoadingViewId() {
        return R.id.loading_view;
    }

    @Override
    public void setLoadMoreStatus(int i) {
        this.c = i;
    }
}

package defpackage;

import android.content.Context;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.loadmore.LoadMoreView;
import com.transsion.playercommon.R;

public class uqa extends LoadMoreView {
    public Context a;
    public int b = 1;

    public uqa(Context context) {
        this.a = context;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder) {
        int i = this.b;
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
            visibleLoadEnd(baseViewHolder, true);
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.topic_detail_load_more_view;
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
        return this.b;
    }

    @Override
    public int getLoadingViewId() {
        return R.id.loading_view;
    }

    @Override
    public void setLoadMoreStatus(int i) {
        this.b = i;
    }

    public final void visibleLoadEnd(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadEndViewId(), z);
    }

    public final void visibleLoadFail(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadFailViewId(), z);
    }

    public final void visibleLoading(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadingViewId(), z);
    }
}

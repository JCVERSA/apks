package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;

public class SessionAdapter extends BaseQuickAdapter<TranVideoDetail.VideoSeries, BaseViewHolder> {
    public TranVideoDetail.VideoSeries o;
    public int p;
    public int q;

    public SessionAdapter(Context context) {
        super(R.layout.item_session);
        this.p = ContextCompat.getColor(context, R.color.os_text_tertiary_color);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.q = typedValue.data;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, TranVideoDetail.VideoSeries videoSeries) {
        int i = R.id.tv_session;
        baseViewHolder.setTextColor(i, videoSeries == this.o ? this.q : this.p);
        baseViewHolder.setText(i, videoSeries.getSeriesName());
    }

    public void c(TranVideoDetail.VideoSeries videoSeries) {
        this.o = videoSeries;
    }
}

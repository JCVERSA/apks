package com.transsion.onlinevideo.adapter;

import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.onlinevideo.R;
import defpackage.at7;

public class ChannelHistoryAdapter extends BaseQuickAdapter<HistoryBean, BaseViewHolder> {
    public ChannelHistoryAdapter() {
        super(R.layout.rv_item_top_online_history_list);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, HistoryBean historyBean) {
        if (historyBean == null) {
            return;
        }
        Glide.with(this.mContext).asBitmap().load2(historyBean.videoCover).placeholder(ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.ic_empty_placeholder, this.mContext.getTheme())).into((ImageView) baseViewHolder.itemView.findViewById(com.transsion.magicvideo.R.id.iv_bucket_fragment_item));
        int i = 0;
        baseViewHolder.setVisible(com.transsion.magicvideo.R.id.tv_more, false);
        baseViewHolder.setText(R.id.iv_serial_tag, at7.a(Integer.valueOf(historyBean.serial_count), historyBean.finish_status));
        long j = historyBean.lastPos;
        if (j > 0) {
            long j2 = historyBean.duration;
            if (j2 > 0) {
                i = (int) ((j * 100) / j2);
            }
        }
        int i2 = com.transsion.magicvideo.R.id.sb_history;
        baseViewHolder.setVisible(i2, true).setProgress(i2, i);
    }
}

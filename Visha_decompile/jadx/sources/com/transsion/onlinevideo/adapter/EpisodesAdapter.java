package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class EpisodesAdapter extends BaseQuickAdapter<TranVideoDetail.VideoSerials, BaseViewHolder> {
    public int o;
    public int p;
    public int q;
    public boolean r;

    public EpisodesAdapter(Context context, boolean z, boolean z2) {
        super(z ? R.layout.item_episodes_expand : R.layout.item_episodes);
        this.r = z2;
        c(context);
    }

    private void c(Context context) {
        this.o = ContextCompat.getColor(context, this.r ? R.color.os_color_white70 : R.color.os_text_secondary_color);
        this.p = ContextCompat.getColor(context, R.color.os_button_on_color);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.q = typedValue.data;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, TranVideoDetail.VideoSerials videoSerials) {
        int i = R.id.tv_episode;
        baseViewHolder.setText(i, String.valueOf(videoSerials.getSerialNo()));
        LogUtils.v(videoSerials.getSerialNo() + StringUtils.PROCESS_POSTFIX_DELIMITER + videoSerials.getSerialTitle() + StringUtils.PROCESS_POSTFIX_DELIMITER + videoSerials.getSerialId() + ", sCurrentSerialId:" + PlayDetailDataManger.sCurrentSerialId);
        boolean z = videoSerials.getSerialId() == PlayDetailDataManger.sCurrentSerialId;
        baseViewHolder.setTextColor(i, z ? this.p : this.o);
        baseViewHolder.setBackgroundRes(R.id.container_episode, z ? R.drawable.bg_episodes_round_5dp_selected : R.drawable.bg_episodes_round_5dp);
        baseViewHolder.setVisible(R.id.iv_vip, videoSerials.getPayType() > 0);
    }

    public EpisodesAdapter(Context context, boolean z) {
        super(z ? R.layout.item_episodes_expand : R.layout.item_episodes);
        this.r = false;
        c(context);
    }
}

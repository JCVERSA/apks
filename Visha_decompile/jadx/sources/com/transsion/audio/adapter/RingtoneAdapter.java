package com.transsion.audio.adapter;

import android.content.Context;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.audio.widgets.AudioRingTypeListView;
import com.transsion.playercommon.R;

public class RingtoneAdapter extends BaseQuickAdapter<AudioRingTypeListView.AudioRing, BaseViewHolder> {
    public int o;

    public RingtoneAdapter(Context context) {
        super(R.layout.rv_item_playlist_list);
        this.o = context.getResources().getColor(R.color.os_text_primary_color);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, AudioRingTypeListView.AudioRing audioRing) {
        int i = R.id.tv_item_name;
        baseViewHolder.setText(i, audioRing.name);
        baseViewHolder.setTextColor(i, this.o);
        baseViewHolder.setImageResource(R.id.iv_item, audioRing.resId);
    }
}

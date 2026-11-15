package com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter;

import android.content.Context;
import android.util.TypedValue;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;

public class SubtitleAdapter extends BaseQuickAdapter<VideoSubtitle, BaseViewHolder> {
    private int mThemeColor;

    public SubtitleAdapter(Context context) {
        super(R.layout.item_subtitle);
        if (context != null) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
            this.mThemeColor = typedValue.data;
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoSubtitle videoSubtitle) {
        int i = R.id.tv_subtitle;
        baseViewHolder.setChecked(i, videoSubtitle.isSelected());
        baseViewHolder.setTextColor(i, videoSubtitle.isSelected() ? this.mThemeColor : -1);
        baseViewHolder.setText(i, videoSubtitle.getName());
    }
}

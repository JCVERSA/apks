package com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;

public class ClarityAdatpter extends BaseQuickAdapter<VideoDefinition, BaseViewHolder> {
    private final Context mContext;
    private final int mThemeColor;

    public ClarityAdatpter(Context context) {
        super(R.layout.item_clarity);
        this.mContext = context;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.mThemeColor = typedValue.data;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoDefinition videoDefinition) {
        boolean z = videoDefinition.bCurrent;
        int i = R.id.tv_clarity;
        baseViewHolder.setChecked(i, z);
        baseViewHolder.setTextColor(i, z ? this.mThemeColor : -1);
        String name = videoDefinition.getName();
        if (TextUtils.isEmpty(name)) {
            name = videoDefinition.getName();
        }
        baseViewHolder.setText(i, name);
        baseViewHolder.setVisible(R.id.iv_vip, videoDefinition.isNeedVip());
    }
}

package com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter;

import android.content.Context;
import android.util.TypedValue;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.data.Speed;

public class PlaySpeedAdatpter extends BaseQuickAdapter<Speed, BaseViewHolder> {
    private Context mContext;
    private int mThemeColor;

    public PlaySpeedAdatpter(Context context) {
        super(R.layout.item_play_speed);
        this.mContext = context;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.mThemeColor = typedValue.data;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, Speed speed) {
        boolean z = Math.abs(speed.getSpeed() - PlayHandler.getInstance().mSpeed) < 0.001f;
        int i = R.id.tv_speed;
        baseViewHolder.setChecked(i, z);
        baseViewHolder.setTextColor(i, z ? this.mThemeColor : -1);
        baseViewHolder.setText(i, speed.getName());
    }
}

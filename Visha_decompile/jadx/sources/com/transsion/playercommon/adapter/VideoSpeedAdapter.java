package com.transsion.playercommon.adapter;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;

public class VideoSpeedAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public int o;

    public VideoSpeedAdapter() {
        super(R.layout.player_speed_choose_item);
    }

    public void setSelectedItemPosition(int i) {
        this.o = i;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        View view = baseViewHolder.itemView;
        int i = R.id.tv_speed;
        TextView textView = (TextView) view.findViewById(i);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) baseViewHolder.itemView.findViewById(R.id.iv_forward);
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.itemView.findViewById(R.id.ll_background);
        baseViewHolder.setText(i, str);
        if (baseViewHolder.getLayoutPosition() != this.o) {
            lottieAnimationView.setVisibility(8);
            textView.setTextSize(18.0f);
            linearLayout.setBackgroundResource(R.drawable.ic_speed_bg);
        } else {
            baseViewHolder.setText(i, this.mContext.getString(R.string.play_speed_forward, str));
            lottieAnimationView.setVisibility(0);
            textView.setTextSize(20.0f);
            linearLayout.setBackgroundResource(R.drawable.ic_speed_bg_select);
        }
    }
}

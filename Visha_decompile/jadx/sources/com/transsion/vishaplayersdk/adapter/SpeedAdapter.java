package com.transsion.vishaplayersdk.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.vishaplayersdk.R;

public class SpeedAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    private int mSelectedItemPosition;

    public SpeedAdapter() {
        super(R.layout.vishasdk_player_speed_choose_item);
    }

    public void setSelectedItemPosition(int i) {
        this.mSelectedItemPosition = i;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        View view = baseViewHolder.itemView;
        int i = R.id.tv_speed;
        TextView textView = (TextView) view.findViewById(i);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_forward);
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.itemView.findViewById(R.id.ll_background);
        baseViewHolder.setText(i, str);
        if (baseViewHolder.getLayoutPosition() == this.mSelectedItemPosition) {
            imageView.setVisibility(0);
            textView.setTextSize(20.0f);
            linearLayout.setBackgroundResource(R.drawable.ic_speed_bg_select);
        } else {
            imageView.setVisibility(8);
            textView.setTextSize(18.0f);
            linearLayout.setBackgroundResource(R.drawable.ic_speed_bg);
        }
    }
}

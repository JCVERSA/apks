package com.transsion.magicvideo.adapter;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.data.VideoSettingItem;
import java.util.List;

public abstract class VideoSettingSelectAdapter extends BaseQuickAdapter<VideoSettingItem, BaseViewHolder> {
    public int o;

    public VideoSettingSelectAdapter(List list, int i) {
        super(R.layout.video_setting_item_raidobutton, list);
        this.o = i;
    }

    public void d(int i, View view) {
        this.o = i;
        notifyDataSetChanged();
        g(this.o, getData().get(this.o));
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoSettingItem videoSettingItem) {
        View view = baseViewHolder.getView(R.id.fl_bg_plus);
        TextView textView = (TextView) baseViewHolder.getView(R.id.rb_item);
        if (videoSettingItem.isTimer()) {
            textView.setText(String.valueOf(videoSettingItem.getValue()));
        } else {
            textView.setText(videoSettingItem.displayText());
        }
        final int iIndexOf = getData().indexOf(videoSettingItem);
        if (this.o != iIndexOf) {
            view.setBackgroundResource(0);
            textView.setTextColor(this.mContext.getColor(R.color.os_color_gray65));
            textView.setTypeface(Typeface.DEFAULT);
        } else {
            view.setBackgroundResource(R.drawable.timer_select_item);
            textView.setTextColor(this.mContext.getColor(R.color.black));
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        textView.setGravity(17);
        baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.d(iIndexOf, view2);
            }
        });
    }

    public abstract void g(int i, VideoSettingItem videoSettingItem);
}

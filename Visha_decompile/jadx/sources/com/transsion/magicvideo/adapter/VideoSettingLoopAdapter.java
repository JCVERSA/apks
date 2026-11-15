package com.transsion.magicvideo.adapter;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.data.VideoSettingItem;
import com.transsion.widgetslib.widget.OSIconTextView;
import java.util.List;

public abstract class VideoSettingLoopAdapter extends BaseQuickAdapter<VideoSettingItem, BaseViewHolder> {
    public int o;
    public int p;

    public VideoSettingLoopAdapter(List list, int i) {
        super(R.layout.video_loop_item_layout, list);
        this.p = i;
    }

    public void g(int i, View view) {
        this.o = i;
        notifyDataSetChanged();
        VideoSettingItem videoSettingItem = getData().get(this.o);
        this.p = videoSettingItem.getValue();
        h(this.o, videoSettingItem);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoSettingItem videoSettingItem) {
        OSIconTextView oSIconTextView = (OSIconTextView) baseViewHolder.getView(R.id.image);
        View view = baseViewHolder.getView(R.id.fl_bg);
        final int adapterPosition = baseViewHolder.getAdapterPosition();
        oSIconTextView.setText(d(videoSettingItem));
        if (this.p == videoSettingItem.getValue()) {
            view.setBackgroundResource(R.drawable.loop_select_item);
            oSIconTextView.setTextColor(-16777216);
        } else {
            view.setBackgroundResource(0);
            oSIconTextView.setTextColor(-1493172225);
        }
        baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.g(adapterPosition, view2);
            }
        });
    }

    public final int d(VideoSettingItem videoSettingItem) {
        int iconResId = videoSettingItem.getIconResId();
        return iconResId != 0 ? iconResId : com.transsion.playercommon.R.string.os_play;
    }

    public abstract void h(int i, VideoSettingItem videoSettingItem);
}

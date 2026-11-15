package com.transsion.tools.adapter;

import android.text.format.Formatter;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.signature.ObjectKey;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.tools.R;
import defpackage.wna;
import java.text.ParseException;
import java.util.HashMap;

public class VideoItemAdapter extends BaseQuickAdapter<MediaItem, BaseViewHolder> {
    public MediaItem o;
    public boolean p;
    public HashMap q;

    public VideoItemAdapter() {
        super(R.layout.rv_item_select_video_list);
        this.p = false;
        this.q = new HashMap();
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_tool_fragment_item);
        baseViewHolder.setText(R.id.tv_tool_item_size, Formatter.formatFileSize(this.mContext, mediaItem.size));
        BaseViewHolder text = baseViewHolder.setText(R.id.tv_main_fragment_item, mediaItem.displayName);
        int i = R.id.iv_tool_radioButton;
        text.addOnClickListener(i).setText(R.id.tv_tool_item_duration, wna.c(mediaItem.duration)).setChecked(i, mediaItem.equals(this.o));
        Glide.with(this.mContext).asBitmap().load2(mediaItem.getUri()).signature(new ObjectKey(Long.valueOf(mediaItem.dateModified))).placeholder(R.drawable.bucket_fragment_placeholder).into(imageView);
        if (!this.p) {
            baseViewHolder.setGone(R.id.tv_date, false);
            return;
        }
        try {
            String strG = wna.g(this.mContext, mediaItem.dateModified);
            int adapterPosition = baseViewHolder.getAdapterPosition();
            if (this.q.get(strG) == null) {
                this.q.put(strG, Integer.valueOf(adapterPosition));
                int i2 = R.id.tv_date;
                baseViewHolder.setVisible(i2, true);
                baseViewHolder.setText(i2, strG);
            } else if (((Integer) this.q.get(strG)).intValue() == baseViewHolder.getAdapterPosition()) {
                int i3 = R.id.tv_date;
                baseViewHolder.setVisible(i3, true);
                baseViewHolder.setText(i3, strG);
            } else {
                baseViewHolder.setGone(R.id.tv_date, false);
            }
        } catch (ParseException e) {
            Log.e("VideoItemAdapter", "VideoItemAdapter date parse Exception:" + e.getMessage());
        }
    }
}

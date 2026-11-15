package com.transsion.magicvideo.adapter;

import android.graphics.Typeface;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.magicvideo.R;
import defpackage.wna;
import defpackage.z7c;

public class PlayListAdapter extends BaseQuickAdapter<MediaItem, BaseViewHolder> {
    public int o;
    public int p;

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        int i = R.id.tv_main_fragment_item;
        baseViewHolder.setText(i, mediaItem.displayName).setText(R.id.tv_main_fragment_item_duration, wna.c(mediaItem.duration));
        boolean z = mediaItem.isSelected;
        baseViewHolder.setVisible(R.id.iv_fragment_item_playing, z);
        baseViewHolder.setTextColor(i, z ? this.o : this.p);
        ((TextView) baseViewHolder.itemView.findViewById(i)).setTypeface(Typeface.DEFAULT, z ? 1 : 0);
        z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item));
    }
}

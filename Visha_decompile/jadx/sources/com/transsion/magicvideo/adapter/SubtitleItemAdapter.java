package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RadioButton;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.subtitle.settings.SubtitleSelectView;
import defpackage.av3;
import defpackage.pp3;

public class SubtitleItemAdapter extends BaseQuickAdapter<SubtitleTrackInfo, BaseViewHolder> {
    public int o;
    public boolean p;
    public boolean q;

    public SubtitleItemAdapter(Context context) {
        super(R.layout.video_subtitle_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SubtitleTrackInfo subtitleTrackInfo) {
        String strQ;
        baseViewHolder.itemView.setTag(subtitleTrackInfo);
        int i = R.id.iv_subtitle;
        baseViewHolder.setImageResource(i, R.drawable.ic_subtitle_local);
        boolean zEquals = TextUtils.equals(subtitleTrackInfo.name, SubtitleSelectView.UNSELECTED_ITEM_TAG);
        if (pp3.j()) {
            int i2 = R.id.tv_subtitle_name;
            if (subtitleTrackInfo.isInnerSubtitle) {
                strQ = subtitleTrackInfo.name;
            } else {
                strQ = subtitleTrackInfo.path;
                if (!zEquals) {
                    strQ = av3.q(strQ);
                }
            }
            baseViewHolder.setText(i2, strQ).addOnClickListener(R.id.cb_subtitle);
        } else {
            int i3 = R.id.tv_subtitle_name;
            String strQ2 = subtitleTrackInfo.path;
            if (!zEquals) {
                strQ2 = av3.q(strQ2);
            }
            baseViewHolder.setText(i3, strQ2).addOnClickListener(R.id.cb_subtitle);
        }
        int i4 = 8;
        ((ImageView) baseViewHolder.getView(R.id.iv_subtitle_arrow)).setVisibility(subtitleTrackInfo.showArrow ? 0 : 8);
        int i5 = R.id.cb_subtitle;
        baseViewHolder.getView(i5).setVisibility((this.p || subtitleTrackInfo.showArrow) ? 8 : 0);
        ImageView imageView = (ImageView) baseViewHolder.getView(i);
        if (!this.q && !subtitleTrackInfo.isInnerSubtitle && !zEquals) {
            i4 = 0;
        }
        imageView.setVisibility(i4);
        ((RadioButton) baseViewHolder.getView(i5)).setChecked(baseViewHolder.getAdapterPosition() == this.o);
    }

    public void d(boolean z) {
        this.q = z;
    }

    public void g(boolean z) {
        this.p = z;
    }

    public void r(int i) {
        this.o = i;
    }
}

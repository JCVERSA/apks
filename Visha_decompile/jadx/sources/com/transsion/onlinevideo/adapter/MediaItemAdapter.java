package com.transsion.onlinevideo.adapter;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.collect.OnlineCollectDataManager;
import com.transsion.preload.OptimizeListAdapter;
import defpackage.at7;
import defpackage.ea;
import defpackage.pcc;
import defpackage.pp3;
import defpackage.r16;

public class MediaItemAdapter extends OptimizeListAdapter<MediaBean, BaseViewHolder> {
    public boolean q;
    public boolean r;
    public long s;
    public long t;
    public String u;

    public MediaItemAdapter() {
        super(R.layout.media_item);
    }

    public static void l(ImageView imageView, int i) {
        Object tag = imageView.getTag();
        if ((tag instanceof Integer) && ((Integer) tag).intValue() == i) {
            return;
        }
        imageView.setImageResource(i);
        imageView.setTag(Integer.valueOf(i));
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaBean mediaBean) {
        baseViewHolder.setText(R.id.tv_media_title, mediaBean.getTitle());
        int i = R.id.iv_vip;
        baseViewHolder.setVisible(i, pp3.L && mediaBean.showVipLogo());
        if (pp3.L && mediaBean.showVipLogo()) {
            pcc.d((ImageView) baseViewHolder.itemView.findViewById(i));
        }
        int iShowDisplayType = mediaBean.showDisplayType();
        int i2 = R.id.iv_tag;
        baseViewHolder.setVisible(i2, iShowDisplayType > 0);
        baseViewHolder.setText(R.id.iv_serial_tag, at7.a(mediaBean.getSerial_count(), mediaBean.getFinish_status()));
        if (iShowDisplayType > 0) {
            int i3 = iShowDisplayType == 2 ? R.drawable.ic_display_hot_tag : R.drawable.ic_display_new_tag;
            ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(i2);
            l(imageView, i3);
            pcc.d(imageView);
        }
        ImageView imageView2 = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover);
        int i4 = R.id.iv_collect;
        baseViewHolder.setVisible(i4, ea.d.contains(Long.valueOf(this.t)));
        l((ImageView) baseViewHolder.itemView.findViewById(i4), OnlineCollectDataManager.d().f(String.valueOf(mediaBean.getId())) ? R.drawable.ic_collected_recommend : R.drawable.ic_collect_recommend);
        baseViewHolder.addOnClickListener(i4);
        Glide.with(this.mContext).load2(this.q ? mediaBean.getCover_x() : mediaBean.getCover_y()).placeholder(this.q ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(this.q ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).centerCrop().into(imageView2);
        if (this.r && this.q) {
            View view = baseViewHolder.itemView;
            int i5 = R.id.tv_media_description;
            TextView textView = (TextView) view.findViewById(i5);
            if (TextUtils.isEmpty(mediaBean.getShort_describe())) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                baseViewHolder.setText(i5, mediaBean.getShort_describe());
            }
        }
        r16.c(baseViewHolder.itemView, mediaBean.getId(), mediaBean.getTitle(), this.s, this.u, this.t, mediaBean.getPay_type().intValue());
    }

    public void k(long j) {
        this.s = j;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (this.q) {
            return new BaseViewHolder(i(viewGroup, this.r ? R.layout.media_horizontal_grid_item : R.layout.media_horizontal_item));
        }
        return new BaseViewHolder(i(viewGroup, this.r ? R.layout.media_grid_item : R.layout.media_item));
    }

    public void r(boolean z) {
        this.r = z;
    }

    public void s(boolean z) {
        this.q = z;
    }

    public void t(String str) {
        this.u = str;
    }

    public void u(long j) {
        this.t = j;
        notifyDataSetChanged();
    }
}

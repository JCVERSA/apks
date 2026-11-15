package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;

public class VarietyShowAdapter extends BaseQuickAdapter<TranVideoDetail.VideoSerials, BaseViewHolder> {
    public int o;
    public int p;
    public int q;

    public VarietyShowAdapter(Context context, boolean z, int i) {
        super(!z ? R.layout.item_varietyshow : R.layout.item_varietyshow_expand);
        c(context, false);
        this.q = i;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, TranVideoDetail.VideoSerials videoSerials) {
        boolean z = false;
        boolean z2 = videoSerials.getSerialId() == PlayDetailDataManger.sCurrentSerialId;
        int i = R.id.tv_title;
        baseViewHolder.setTextColor(i, z2 ? this.p : this.o);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover);
        RequestBuilder<Bitmap> requestBuilderLoad2 = Glide.with(this.mContext).asBitmap().load2(videoSerials.getCoverX());
        int i2 = R.drawable.ic_empty_placeholder;
        requestBuilderLoad2.placeholder(i2).error(i2).into(imageView);
        baseViewHolder.setVisible(R.id.iv_vip, videoSerials.getPayType() > 0);
        boolean z3 = this.q == 3;
        int i3 = R.id.tv_duration;
        baseViewHolder.setVisible(i3, !z3);
        int i4 = R.id.tv_date;
        if (z3 && !TextUtils.isEmpty(videoSerials.getUpdateTime())) {
            z = true;
        }
        baseViewHolder.setVisible(i4, z);
        baseViewHolder.setText(i4, TextUtils.isEmpty(videoSerials.getUpdateTime()) ? "" : videoSerials.getUpdateTime());
        baseViewHolder.setText(i3, CommonUtil.stringForTime(videoSerials.getDuration() * 1000));
        baseViewHolder.setText(i, this.q == 4 ? this.mContext.getString(R.string.video_onlinevideo_trivia_title, videoSerials.getSerialTitle()) : videoSerials.getSerialTitle());
        baseViewHolder.setVisible(R.id.lottie_layer_view, z2);
        baseViewHolder.setVisible(R.id.iv_selected_frame, z2);
    }

    public final void c(Context context, boolean z) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.o = ContextCompat.getColor(context, z ? R.color.os_text_primary_color_dark : R.color.os_text_primary_color);
        this.p = typedValue.data;
    }

    public VarietyShowAdapter(Context context, boolean z, boolean z2) {
        super(!z ? R.layout.item_varietyshow : R.layout.item_varietyshow_expand);
        c(context, z2);
    }
}

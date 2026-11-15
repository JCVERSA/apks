package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.VkRecommendBean;
import com.transsion.onlinevideo.R;
import com.transsion.playercommon.router.RouterUtils;
import defpackage.dt7;
import defpackage.ek4;
import defpackage.of0;
import defpackage.wna;

public class VkRecommendAdapter extends BaseQuickAdapter<VkRecommendBean, BaseViewHolder> {
    public VkRecommendAdapter() {
        super(R.layout.media_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VkRecommendBean vkRecommendBean) {
        if (vkRecommendBean != null) {
            baseViewHolder.setText(R.id.tv_title, vkRecommendBean.getTitle());
            if (!TextUtils.isEmpty(vkRecommendBean.getDescription())) {
                baseViewHolder.setText(R.id.tv_sec_title, vkRecommendBean.getDescription());
            }
            ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover);
            baseViewHolder.setText(R.id.tv_duration, wna.c(((long) vkRecommendBean.getDuration().intValue()) * 1000));
            Glide.with(baseViewHolder.itemView.getContext()).asBitmap().load2(dt7.k(vkRecommendBean.getImages())).placeholder(R.drawable.ic_feed_stream_placeholder).apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(new of0())).into(imageView);
        }
    }

    public void c(Context context, int i, boolean z) {
        if (i >= getData().size()) {
            return;
        }
        FeedStreamBean feedStreamBean = getData().get(i).toFeedStreamBean();
        FeedStreamBean.VideoBean video = feedStreamBean.getVideo();
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(video.getVkVideoId(), video.getTitle(), video.getVideoLink().toString(), 5, ek4.i(feedStreamBean))).withMarkParam("vd_ott_detail_related_cl", z ? 1 : 0).build(), context);
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.item_search_vk, viewGroup, false));
    }
}

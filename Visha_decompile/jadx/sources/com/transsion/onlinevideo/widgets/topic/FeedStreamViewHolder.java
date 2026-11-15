package com.transsion.onlinevideo.widgets.topic;

import android.graphics.Rect;
import android.util.Log;
import android.view.TouchDelegate;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.transsion.dbdata.beans.VideoIndex;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.utils.WebcastListUtils;
import com.transsion.onlinevideo.widgets.topic.FeedStreamViewHolder;
import defpackage.at7;
import defpackage.dt7;
import defpackage.fi1;
import defpackage.oc2;
import defpackage.of0;
import defpackage.r0a;
import defpackage.r16;
import defpackage.wna;
import java.util.ArrayList;

public class FeedStreamViewHolder extends TopicBaseViewHolder {
    public boolean r;

    public FeedStreamViewHolder(View view, boolean z) {
        super(view);
        this.r = z;
    }

    public static void e(ImageView imageView) {
        Rect rect = new Rect();
        imageView.getHitRect(rect);
        int iMax = (160 - Math.max(rect.width(), rect.height())) / 2;
        if (iMax > 0) {
            rect.left -= iMax;
            rect.right += iMax;
            rect.top -= iMax;
            rect.bottom += iMax;
            TouchDelegate touchDelegate = new TouchDelegate(rect, imageView);
            if (imageView.getParent() instanceof View) {
                ((View) imageView.getParent()).setTouchDelegate(touchDelegate);
            }
        }
    }

    @Override
    public void a(TopicBean topicBean) {
        FeedStreamBean.VideoBean video;
        String channelName;
        FeedStreamBean firstFeedStreamBean = topicBean.getFirstFeedStreamBean();
        if (firstFeedStreamBean == null || (video = firstFeedStreamBean.getVideo()) == null) {
            return;
        }
        boolean z = video.getSourceType().intValue() == 5;
        setText(R.id.tv_title, video.getTitle());
        if (z) {
            Object sourceName = video.getSourceName();
            channelName = dt7.h(video.getViews().longValue(), video.getCreated(), sourceName == null ? null : sourceName.toString());
            int i = R.id.tv_duration;
            setGone(i, true);
            setText(i, wna.c(((long) video.getDuration().intValue()) * 1000));
        } else {
            channelName = this.r ? firstFeedStreamBean.getChannelName() : firstFeedStreamBean.getShortDescribe();
        }
        if (r0a.g(channelName)) {
            setGone(R.id.tv_sec_title, false);
        } else {
            setText(R.id.tv_sec_title, channelName);
        }
        setText(R.id.iv_serial_tag, at7.a(video.getSerialCount(), video.getFinishStatus()));
        ImageView imageView = (ImageView) this.itemView.findViewById(R.id.iv_cover);
        ImageView imageView2 = (ImageView) this.itemView.findViewById(R.id.iv_logo);
        if (z) {
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            Glide.with(this.itemView.getContext()).asBitmap().load2(dt7.k(video.getImages())).placeholder(R.drawable.ic_feed_stream_placeholder).apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(new of0())).into(imageView);
        } else {
            Glide.with(this.itemView.getContext()).asBitmap().load2(video.getCoverX()).placeholder(R.drawable.ic_feed_stream_placeholder).into(imageView);
        }
        if (this.r || z) {
            Glide.with(this.itemView.getContext()).asBitmap().load2(z ? firstFeedStreamBean.getVideo().getSourceImage() : firstFeedStreamBean.getChannelConver()).placeholder(R.drawable.ic_avator_default).circleCrop().into(imageView2);
        } else {
            Glide.with(this.itemView.getContext()).asBitmap().apply((BaseRequestOptions<?>) new RequestOptions().transform(new CenterInside(), new RoundedCorners(oc2.a(this.itemView.getContext(), 4.0f)))).placeholder(R.drawable.ic_feed_small_default).load2(video.getCoverY()).into(imageView2);
        }
        addOnClickListener(R.id.cover_container);
        int i2 = R.id.iv_play_logo;
        addOnClickListener(i2);
        final ImageView imageView3 = (ImageView) getView(i2);
        imageView3.setVisibility(WebcastListUtils.t(this.itemView.getContext()) ? 8 : 0);
        imageView3.post(new Runnable() {
            @Override
            public final void run() {
                FeedStreamViewHolder.e(imageView3);
            }
        });
        f(topicBean, z);
    }

    public final void f(TopicBean topicBean, boolean z) {
        try {
            ArrayList arrayList = new ArrayList();
            FeedStreamBean firstFeedStreamBean = topicBean.getFirstFeedStreamBean();
            FeedStreamBean.VideoBean video = firstFeedStreamBean.getVideo();
            arrayList.add(new VideoIndex(1, z ? 0L : firstFeedStreamBean.getVideoId().intValue()));
            r16.f(this.itemView, topicBean.getTopic_id().longValue(), topicBean.getSort().intValue(), topicBean.getChannel_id().longValue(), topicBean.getN_biz_group_id(), fi1.e(arrayList), 0, topicBean.getRecommendPart().intValue(), topicBean.getRequestId(), 0, video.getVkVideoId());
            r16.g(this.itemView, topicBean.getTopic_id().longValue(), topicBean.getSort().intValue(), topicBean.getChannel_id().longValue(), topicBean.getN_biz_group_id(), fi1.e(arrayList), 0, topicBean.getRecommendPart().intValue(), firstFeedStreamBean.getTitle(), z ? 0 : firstFeedStreamBean.getVideoId().intValue(), video.getVkVideoId());
        } catch (Exception e) {
            Log.e("MarkViewIds", "markViewIds: " + e.getMessage());
        }
    }
}

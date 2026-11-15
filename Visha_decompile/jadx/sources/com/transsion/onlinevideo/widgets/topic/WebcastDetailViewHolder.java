package com.transsion.onlinevideo.widgets.topic;

import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.transsion.dbdata.beans.VideoIndex;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.dbdata.beans.onlinevideo.WebcastSerialBean;
import com.transsion.onlinevideo.R;
import com.transsion.utils.a;
import defpackage.fi1;
import defpackage.r0a;
import defpackage.r16;
import java.util.ArrayList;
import java.util.List;

public class WebcastDetailViewHolder extends TopicBaseViewHolder {
    public FrameLayout r;
    public FrameLayout s;
    public TextView t;
    public ImageView u;
    public ImageView v;
    public TextView w;

    public WebcastDetailViewHolder(View view) {
        super(view);
        this.r = (FrameLayout) view.findViewById(R.id.cover_container);
        this.t = (TextView) this.itemView.findViewById(R.id.tv_title);
        this.u = (ImageView) this.itemView.findViewById(R.id.iv_cover);
        this.w = (TextView) this.itemView.findViewById(R.id.tv_description);
        this.v = (ImageView) this.itemView.findViewById(R.id.iv_mark);
        FrameLayout frameLayout = (FrameLayout) this.itemView.findViewById(R.id.container);
        this.s = frameLayout;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = (a.m(view.getContext()) * 9) / 16;
        this.s.setLayoutParams(layoutParams);
    }

    @Override
    public void a(TopicBean topicBean) {
        WebcastSerialBean webcastSerialBean;
        super.a(topicBean);
        List<WebcastSerialBean> videoSerialList = topicBean.getWebcastBeanList().get(0).getVideoSerialList();
        String vkVideoId = null;
        if (videoSerialList != null) {
            webcastSerialBean = videoSerialList.get(0);
            if (webcastSerialBean == null) {
                return;
            }
        } else {
            webcastSerialBean = null;
        }
        Glide.with(this.itemView.getContext()).asBitmap().load2(webcastSerialBean.getCoverX()).placeholder(R.drawable.ic_webcast_placeholder).into(this.u);
        this.w.setText(topicBean.getWebcastBeanList().get(0).getDescription());
        if (!r0a.g(topicBean.getWebcastBeanList().get(0).getTvMark())) {
            Glide.with(this.itemView.getContext()).asBitmap().load2(topicBean.getWebcastBeanList().get(0).getTvMark()).into(this.v);
        }
        SpannableString spannableString = new SpannableString("  " + topicBean.getWebcastBeanList().get(0).getTitle());
        Drawable drawable = this.itemView.getContext().getResources().getDrawable(R.drawable.ic_24h);
        drawable.setBounds(0, 0, a.d(this.itemView.getContext(), 20.0f), a.d(this.itemView.getContext(), 20.0f));
        spannableString.setSpan(new ImageSpan(drawable, 2), 0, 1, 33);
        this.t.setText(spannableString);
        addOnClickListener(R.id.cover_container);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VideoIndex(1, topicBean.getWebcastBeanList().get(0).getId().intValue()));
        FeedStreamBean firstFeedStreamBean = topicBean.getFirstFeedStreamBean();
        if (firstFeedStreamBean != null && firstFeedStreamBean.getVideo() != null) {
            vkVideoId = firstFeedStreamBean.getVideo().getVkVideoId();
        }
        String str = vkVideoId;
        r16.f(this.itemView, topicBean.getTopic_id().longValue(), topicBean.getSort().intValue(), topicBean.getChannel_id().longValue(), topicBean.getN_biz_group_id(), fi1.e(arrayList), 0, topicBean.getRecommendPart().intValue(), topicBean.getRequestId(), 0, str);
        r16.g(this.itemView, topicBean.getTopic_id().longValue(), topicBean.getSort().intValue(), topicBean.getChannel_id().longValue(), topicBean.getN_biz_group_id(), fi1.e(arrayList), 0, topicBean.getRecommendPart().intValue(), topicBean.getWebcastBeanList().get(0).getTitle(), topicBean.getWebcastBeanList().get(0).getId().intValue(), str);
    }
}

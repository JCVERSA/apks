package com.transsion.onlinevideo.widgets.topic;

import android.view.View;
import androidx.p004lifecycle.LifecycleOwner;
import com.transsion.dbdata.beans.appconfig.BannerBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.widgets.banner.ChannelBanner;

public class BannerViewHolder extends TopicBaseViewHolder {
    public ChannelBanner r;

    public class a implements ChannelBanner.b {
        public final TopicBean a;

        public a(TopicBean topicBean) {
            this.a = topicBean;
        }

        @Override
        public void b(BannerBean bannerBean, int i) {
            ChannelBanner.bannerClick(BannerViewHolder.this.itemView.getContext(), bannerBean, i, this.a);
        }
    }

    public BannerViewHolder(View view) {
        super(view);
        this.r = (ChannelBanner) view.findViewById(R.id.banner_channel);
    }

    @Override
    public void a(TopicBean topicBean) {
        if (topicBean.getTypeList() != null) {
            if (topicBean.getTypeList().size() == 0) {
                this.r.setVisibility(8);
                return;
            }
            LifecycleOwner lifecycleOwner = androidx.p004lifecycle.View.get(this.itemView);
            if (lifecycleOwner == null && (this.itemView.getContext() instanceof LifecycleOwner)) {
                lifecycleOwner = (LifecycleOwner) this.itemView.getContext();
            }
            if (lifecycleOwner != null) {
                lifecycleOwner.getLifecycle().addObserver(this.r);
            }
            this.r.setData(topicBean);
            this.r.setListener(new a(topicBean));
        }
    }
}

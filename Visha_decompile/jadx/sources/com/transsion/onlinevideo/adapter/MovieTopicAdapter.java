package com.transsion.onlinevideo.adapter;

import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.widgets.banner.ChannelBanner;
import com.transsion.onlinevideo.widgets.topic.BannerViewHolder;
import com.transsion.onlinevideo.widgets.topic.FeedStreamViewHolder;
import com.transsion.onlinevideo.widgets.topic.HistoryViewHolder;
import com.transsion.onlinevideo.widgets.topic.LabelViewHolder;
import com.transsion.onlinevideo.widgets.topic.TopicBaseViewHolder;
import com.transsion.onlinevideo.widgets.topic.VideoViewHolder;
import com.transsion.onlinevideo.widgets.topic.WebcastDetailViewHolder;
import com.transsion.preload.OptimizeListAdapter;
import defpackage.h27;

public class MovieTopicAdapter extends OptimizeListAdapter<TopicBean, TopicBaseViewHolder> {
    public boolean q;
    public String r;
    public boolean s;
    public int t;
    public SparseArray u;

    public MovieTopicAdapter() {
        super(R.layout.topic_item);
        this.q = false;
        this.t = 1;
        this.u = new SparseArray();
    }

    @Override
    public int getDefItemViewType(int i) {
        return getData().get(i).getData_type().intValue();
    }

    @Override
    public void convert(TopicBaseViewHolder topicBaseViewHolder, TopicBean topicBean) {
        topicBaseViewHolder.a(topicBean);
        topicBaseViewHolder.itemView.setClickable(true);
        v(topicBaseViewHolder);
    }

    @Override
    public TopicBaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new BannerViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.topic_widget_banner, viewGroup, false));
        }
        if (i == 2) {
            LabelViewHolder labelViewHolder = new LabelViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.topic_widget_label, viewGroup, false));
            labelViewHolder.f(this.r);
            this.u.put(1084, labelViewHolder);
            h27.c().b(labelViewHolder, 1084);
            return labelViewHolder;
        }
        if (i == 3 || i == 6) {
            VideoViewHolder videoViewHolder = new VideoViewHolder(i(viewGroup, R.layout.topic_widget_video), this.t);
            videoViewHolder.A(this.r);
            videoViewHolder.B(this.t);
            return videoViewHolder;
        }
        if (i == 4) {
            return new HistoryViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.topic_widget_history, viewGroup, false));
        }
        if (i == 5) {
            return new WebcastDetailViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.topic_widget_webcast_detail, viewGroup, false));
        }
        return i == 7 ? new FeedStreamViewHolder(i(viewGroup, R.layout.topic_widget_feed_stream), this.s) : new HistoryViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.topic_widget_history, viewGroup, false));
    }

    public void l() {
        for (int i = 0; i < this.u.size(); i++) {
            h27.c().f((h27.b) this.u.valueAt(i), this.u.keyAt(i));
        }
    }

    public void r(String str) {
        this.r = str;
    }

    public void s(boolean z) {
        this.s = z;
    }

    public void t(int i) {
        this.t = i;
    }

    public void u(boolean z) {
        Log.i(BaseQuickAdapter.TAG, "setVisible: " + z);
        if (z != this.q) {
            this.q = z;
            try {
                notifyDataSetChanged();
            } catch (Exception e) {
                Log.i(BaseQuickAdapter.TAG, "setVisible notifyDataSetChanged: " + e);
            }
        }
    }

    public void v(TopicBaseViewHolder topicBaseViewHolder) {
        if (topicBaseViewHolder instanceof BannerViewHolder) {
            ((ChannelBanner) topicBaseViewHolder.itemView.findViewById(R.id.banner_channel)).start(this.q);
        }
    }
}

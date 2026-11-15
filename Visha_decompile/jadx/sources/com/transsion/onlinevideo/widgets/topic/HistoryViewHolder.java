package com.transsion.onlinevideo.widgets.topic;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.ChannelHistoryAdapter;
import com.transsion.onlinevideo.widgets.topic.HistoryViewHolder;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.utils.CustomPagerSnapHelper;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import defpackage.fo1;
import defpackage.hb0;
import defpackage.p06;
import defpackage.uz5;

public class HistoryViewHolder extends TopicBaseViewHolder {
    public TextView r;
    public RecyclerView s;
    public ChannelHistoryAdapter t;
    public CustomPagerSnapHelper u;
    public final com.transsion.onlinevideo.a v;
    public final int w;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            HistoryViewHolder.this.b(false);
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public final TopicBean b;

        public b(TopicBean topicBean) {
            this.b = topicBean;
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (i < 9) {
                HistoryBean historyBean = this.b.getHistoryBeanList().get(i);
                RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(historyBean.videoId, historyBean.sourceId, historyBean.serialId, true).setShortVideo(PlayDetailDataManger.isShortVideo(historyBean.videoId + ""))).withMarkParam("vd_ott_history_video_cl", 0).build(), HistoryViewHolder.this.itemView.getContext());
                uz5.b(i, historyBean.videoId, "vd_ott_history_video_cl", historyBean.serialId, hb0.checkPayType(historyBean.payType));
            }
        }
    }

    public class c extends fo1 {
        public c() {
        }

        @Override
        public void onClick(View view) {
            p06.d0("vd_ott_hislog_cl");
            if (com.transsion.palmsdk.b.s()) {
                com.transsion.palmsdk.b.C((Activity) view.getContext());
            } else {
                com.transsion.palmsdk.b.g((Activity) view.getContext());
            }
        }
    }

    public HistoryViewHolder(View view) {
        super(view);
        this.q = this.itemView.getContext().getResources().getDimensionPixelOffset(R.dimen.recycler_last_view_max_width);
        int dimensionPixelOffset = this.itemView.getContext().getResources().getDimensionPixelOffset(R.dimen.recycler_last_view_min_width_for_history);
        this.p = dimensionPixelOffset;
        this.v = new com.transsion.onlinevideo.a(dimensionPixelOffset, this.q, new com.transsion.onlinevideo.a.d() {
            @Override
            public final void route() {
                this.a.g();
            }
        });
        TypedValue typedValue = new TypedValue();
        view.getContext().getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.w = typedValue.data;
    }

    public static void f(View view) {
    }

    public void g() {
        b(true);
    }

    @Override
    public void a(TopicBean topicBean) {
        ((ImageView) getView(R.id.iv_history_btn)).setOnClickListener(new a());
        int i = 8;
        getView(R.id.ll_history).setVisibility((topicBean.getTypeList() == null || topicBean.getTypeList().size() == 0) ? 8 : 0);
        View view = getView(R.id.ll_login);
        if (topicBean.getTypeList() != null && topicBean.getTypeList().size() != 0 && !com.transsion.palmsdk.b.s()) {
            i = 0;
        }
        view.setVisibility(i);
        RecyclerView recyclerView = (RecyclerView) getView(R.id.rv_history);
        this.s = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this.itemView.getContext(), 0, false));
        ChannelHistoryAdapter channelHistoryAdapter = new ChannelHistoryAdapter();
        this.t = channelHistoryAdapter;
        this.s.setAdapter(channelHistoryAdapter);
        if (this.u == null) {
            CustomPagerSnapHelper customPagerSnapHelper = new CustomPagerSnapHelper();
            this.u = customPagerSnapHelper;
            customPagerSnapHelper.attachToRecyclerView(this.s);
        }
        if (topicBean.getHistoryBeanList() != null && topicBean.getHistoryBeanList().size() == 9) {
            this.v.j(this.t, this.s, LayoutInflater.from(this.itemView.getContext()).inflate(R.layout.recycler_pull_last_view_for_history, (ViewGroup) this.s, false));
        }
        this.t.setNewData(topicBean.getTypeList());
        this.t.setOnItemClickListener(new b(topicBean));
        if (!com.transsion.palmsdk.b.s()) {
            p06.d0("vd_ott_hislog_show");
        }
        TextView textView = (TextView) getView(R.id.tv_login);
        this.r = textView;
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                HistoryViewHolder.f(view2);
            }
        });
        Context context = this.r.getContext();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) context.getResources().getString(com.transsion.magicvideo.R.string.login_sync));
        c cVar = new c();
        SpannableString spannableString = new SpannableString(context.getResources().getString(com.transsion.magicvideo.R.string.login_now));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(this.w);
        spannableString.setSpan(cVar, 0, spannableString.length(), 18);
        spannableString.setSpan(foregroundColorSpan, 0, spannableString.length(), 18);
        this.r.setMovementMethod(LinkMovementMethod.getInstance());
        spannableString.setSpan(new AbsoluteSizeSpan(com.transsion.utils.a.C(context, 14.0f)), 0, spannableString.length(), 18);
        spannableStringBuilder.append((CharSequence) spannableString);
        this.r.setText(spannableStringBuilder);
    }

    @Override
    public void b(boolean z) {
        super.b(z);
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(6).build(), this.itemView.getContext());
        hb0.markDirect(z ? "vd_ott_history_more_slideinto" : "vd_ott_history_more_cl");
    }
}

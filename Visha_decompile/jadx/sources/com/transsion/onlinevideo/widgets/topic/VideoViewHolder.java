package com.transsion.onlinevideo.widgets.topic;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.VideoIndex;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.MediaItemAdapter;
import com.transsion.onlinevideo.collect.OnlineCollectDataManager;
import com.transsion.onlinevideo.viewmodel.ChannelViewModel;
import com.transsion.onlinevideo.widgets.topic.VideoViewHolder;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsModel;
import com.transsion.preload.OptimizeListAdapter;
import com.transsion.utils.CustomPagerSnapHelper;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import defpackage.d06;
import defpackage.fi1;
import defpackage.o18;
import defpackage.r16;
import defpackage.sf7;
import defpackage.wz5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class VideoViewHolder extends TopicBaseViewHolder {
    public static final int G = R.layout.topic_widget_video;
    public View A;
    public View B;
    public View C;
    public List D;
    public int E;
    public int F;
    public RecyclerView r;
    public MediaItemAdapter s;
    public TopicBean t;
    public CustomPagerSnapHelper u;
    public final com.transsion.onlinevideo.a v;
    public String w;
    public int x;
    public int y;
    public View z;

    public class a extends RecyclerView.OnScrollListener {
        public final TopicBean c;

        public a(TopicBean topicBean) {
            this.c = topicBean;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 1) {
                d06.f(this.c.getChannel_id().longValue(), this.c.getTopic_id().longValue(), this.c.getName());
            }
        }
    }

    public VideoViewHolder(View view, int i) {
        super(view);
        this.x = i;
        this.q = this.itemView.getContext().getResources().getDimensionPixelOffset(R.dimen.recycler_last_view_max_width);
        int dimensionPixelOffset = this.itemView.getContext().getResources().getDimensionPixelOffset(R.dimen.recycler_last_view_min_width_for_media);
        this.p = dimensionPixelOffset;
        this.v = new com.transsion.onlinevideo.a(dimensionPixelOffset, this.q, new com.transsion.onlinevideo.a.d() {
            @Override
            public final void route() {
                this.a.v();
            }
        });
    }

    private void n() {
        Activity activity;
        WeakReference weakReference = o18.g;
        if (weakReference != null) {
            Object obj = weakReference.get();
            if (obj instanceof VideosService) {
                ((VideosService) obj).n();
            }
        }
        WeakReference weakReference2 = o18.f;
        if (weakReference2 == null || (activity = (Activity) weakReference2.get()) == null) {
            return;
        }
        activity.finish();
    }

    public static void t(TopicBean topicBean, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.iv_collect) {
            MediaBean mediaBean = topicBean.getMediaBeanList().get(i);
            wz5.p(1, topicBean.getTopic_id().longValue(), topicBean.getChannel_id().longValue(), mediaBean.getId(), OnlineCollectDataManager.d().f(String.valueOf(mediaBean.getId())));
            sf7.a((ImageView) view, new CollectItem(mediaBean.getId(), mediaBean.getTitle(), mediaBean.getSource_type(), mediaBean.getSource_id(), mediaBean.getCover_x(), mediaBean.getCover_y(), mediaBean.getPay_type(), System.currentTimeMillis() / 1000, topicBean.getTopic_id().longValue()), String.valueOf(mediaBean.getId()), 1);
        }
    }

    public void v() {
        c(true, this.t);
    }

    public void A(String str) {
        this.w = str;
    }

    public void B(int i) {
        this.x = i;
    }

    public void C(TopicBean topicBean) {
        this.r.setLayoutManager(new LinearLayoutManager(this.itemView.getContext(), 0, false));
        if (this.u == null) {
            CustomPagerSnapHelper customPagerSnapHelper = new CustomPagerSnapHelper();
            this.u = customPagerSnapHelper;
            customPagerSnapHelper.attachToRecyclerView(this.r);
        }
        if (topicBean.getMediaBeanList() != null && topicBean.getMediaBeanList().size() == 9) {
            this.v.j(this.s, this.r, LayoutInflater.from(this.itemView.getContext()).inflate(R.layout.recycler_pull_last_view_for_media, (ViewGroup) this.r, false));
        }
        this.r.addOnScrollListener(new a(topicBean));
        this.s.setNewData(topicBean.getMediaBeanList());
        FeedStreamBean firstFeedStreamBean = this.t.getFirstFeedStreamBean();
        r16.f(this.itemView, this.t.getTopic_id().longValue(), this.t.getSort().intValue(), this.t.getChannel_id().longValue(), this.t.getN_biz_group_id(), q(this.s.getData()), this.E > 0 ? 1 : 0, this.t.getRecommendPart().intValue(), this.t.getRequestId(), 0, (firstFeedStreamBean == null || firstFeedStreamBean.getVideo() == null) ? null : firstFeedStreamBean.getVideo().getVkVideoId());
    }

    public void D(final TopicBean topicBean) {
        if (topicBean.isHorizontal()) {
            this.r.setLayoutManager(new GridLayoutManager(this.itemView.getContext(), 2));
        } else {
            this.r.setLayoutManager(new GridLayoutManager(this.itemView.getContext(), 3));
        }
        this.D = topicBean.getMediaBeanList();
        View viewFindViewById = this.itemView.findViewById(R.id.btn_more);
        this.z = viewFindViewById;
        viewFindViewById.setVisibility(0);
        this.z.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.w(topicBean, view);
            }
        });
        View viewFindViewById2 = this.itemView.findViewById(R.id.btn_all);
        this.C = viewFindViewById2;
        viewFindViewById2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.x(topicBean, view);
            }
        });
        View viewFindViewById3 = this.itemView.findViewById(R.id.btn_more_small);
        this.A = viewFindViewById3;
        viewFindViewById3.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.y(topicBean, view);
            }
        });
        View viewFindViewById4 = this.itemView.findViewById(R.id.btn_roll_back);
        this.B = viewFindViewById4;
        viewFindViewById4.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.z(topicBean, view);
            }
        });
        this.F = topicBean.isHorizontal() ? p(topicBean.getData_type().intValue()) : 6;
        this.E = 0;
        o(true);
    }

    @Override
    public void a(final TopicBean topicBean) {
        this.y = topicBean.getData_type().intValue();
        this.s = new MediaItemAdapter();
        this.t = topicBean;
        setText(R.id.tv_topic_title, topicBean.getName());
        TextView textView = (TextView) getView(R.id.tv_topic_btn);
        ImageView imageView = (ImageView) getView(R.id.iv_refrash);
        textView.setVisibility(topicBean.getData_type().intValue() != 6 ? 0 : 8);
        imageView.setVisibility(topicBean.getData_type().intValue() == 6 ? 0 : 8);
        LinearLayout linearLayout = (LinearLayout) getView(R.id.ll_topic);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.r(topicBean, view);
            }
        });
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.s(topicBean, view);
            }
        });
        this.s.s(topicBean.isHorizontal());
        this.s.r(this.x != 1);
        RecyclerView recyclerView = (RecyclerView) getView(R.id.rv_media);
        this.r = recyclerView;
        recyclerView.setAdapter(this.s);
        if (this.x != 1) {
            this.r.setNestedScrollingEnabled(false);
        }
        OptimizeListAdapter.h().e(this.r, R.layout.media_grid_item, 20);
        if (this.x == 1) {
            C(topicBean);
        } else {
            D(topicBean);
        }
        this.s.k(topicBean.getChannel_id().longValue());
        this.s.u(topicBean.getTopic_id().longValue());
        this.s.t(topicBean.getRequestId());
        this.s.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                VideoViewHolder.t(topicBean, baseQuickAdapter, view, i);
            }
        });
        this.s.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.u(topicBean, baseQuickAdapter, view, i);
            }
        });
    }

    @Override
    public void c(boolean z, TopicBean topicBean) {
        super.c(z, topicBean);
        RouterBean.RouterData topic = new RouterBean.RouterData().setTopic(this.t.getTopic_id().longValue(), this.t.getName(), getAdapterPosition());
        List typeList = topicBean.getTypeList();
        if (typeList != null && typeList.size() > 0) {
            topic.setBottom_position(((MediaBean) topicBean.getTypeList().get(0)).getSource_type().intValue());
        }
        topic.setData_type(this.t.getData_type().intValue());
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(2).withParam(topic).withMarkParam(z ? d06.e : d06.d).build(), this.itemView.getContext());
        d06.e(this.t.getTopic_id().longValue(), this.t.getChannel_id().longValue(), z ? d06.e : d06.d);
    }

    public void m() {
        View view = this.C;
        int size = this.D.size();
        int i = this.F;
        int i2 = this.E;
        int i3 = 8;
        view.setVisibility((size > i * i2 || i2 <= 1 || this.y == 6) ? 8 : 0);
        this.B.setVisibility(this.E > 1 ? 0 : 8);
        this.A.setVisibility((this.E <= 1 || this.D.size() <= this.F * this.E) ? 8 : 0);
        View view2 = this.z;
        if (this.E == 1 && this.D.size() > this.F * this.E) {
            i3 = 0;
        }
        view2.setVisibility(i3);
    }

    public void o(boolean z) {
        if (this.D == null) {
            this.D = new ArrayList();
        }
        if (z) {
            int size = this.D.size();
            int i = this.E;
            int i2 = this.F;
            if (size > i * i2) {
                int i3 = i + 1;
                this.E = i3;
                this.s.setNewData(this.D.subList(0, Math.min(i3 * i2, size)));
            }
        } else {
            this.E = 1;
            this.s.setNewData(this.D.subList(0, this.F));
        }
        m();
        FeedStreamBean firstFeedStreamBean = this.t.getFirstFeedStreamBean();
        r16.f(this.itemView, this.t.getTopic_id().longValue(), this.t.getSort().intValue(), this.t.getChannel_id().longValue(), this.t.getN_biz_group_id(), q(this.s.getData()), this.E > 0 ? 1 : 0, this.t.getRecommendPart().intValue(), this.t.getRequestId(), 0, (firstFeedStreamBean == null || firstFeedStreamBean.getVideo() == null) ? null : firstFeedStreamBean.getVideo().getVkVideoId());
    }

    public int p(int i) {
        return i == 6 ? 6 : 4;
    }

    public final String q(List list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaBean mediaBean = (MediaBean) it.next();
                arrayList.add(new VideoIndex(list.indexOf(mediaBean) + 1, mediaBean.getId()));
            }
        }
        return fi1.e(arrayList);
    }

    public final void r(TopicBean topicBean, View view) {
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
        } else {
            ChannelViewModel.v(this, topicBean, topicBean.getTopic_id().longValue(), topicBean.getChannel_id().longValue(), 6, topicBean.getContent_source());
        }
    }

    public final void s(TopicBean topicBean, View view) {
        if (topicBean.getData_type().intValue() == 6) {
            ChannelViewModel.v(this, topicBean, topicBean.getTopic_id().longValue(), topicBean.getChannel_id().longValue(), 6, topicBean.getContent_source());
        } else {
            c(false, topicBean);
        }
    }

    public final void u(TopicBean topicBean, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        n();
        MediaBean mediaBean = topicBean.getMediaBeanList().get(i);
        if (mediaBean.getSource_type() != null && mediaBean.getSource_type().intValue() == 0) {
            RouterUtils.jumpToVishaWebViewInApp(view.getContext(), mediaBean.getVideo_link(), mediaBean.getTitle(), false, 0);
        } else if (mediaBean.getSource_type().intValue() != 4) {
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(mediaBean.getId(), mediaBean.getSource_id(), mediaBean.getTitle(), topicBean.getName()).setShortVideo(PlayDetailDataManger.isShortVideo(mediaBean.getId() + ""))).withMarkParam(d06.b, 0, topicBean.getRequestId(), topicBean.getTopic_id().longValue()).build(), this.itemView.getContext());
        }
        AiStatisticsModel.markAlgorithmRecommend(d06.b, d06.g(topicBean.getTopic_id().longValue(), mediaBean.getId(), i, topicBean.getSort().intValue(), topicBean.getChannel_id().longValue(), topicBean.getName(), mediaBean.getPay_type().intValue(), topicBean.getHorizontalFlag(), mediaBean.getTitle(), this.w, topicBean.getN_biz_group_id(), topicBean.getRequestId()));
        d06.h(topicBean.getTopic_id().longValue(), mediaBean.getId(), "topic", mediaBean.getPay_type().intValue());
    }

    public final void w(TopicBean topicBean, View view) {
        o(true);
        d06.c(topicBean.getTopic_id().longValue(), topicBean.getName(), d06.g);
    }

    public final void x(TopicBean topicBean, View view) {
        c(false, topicBean);
    }

    public final void y(TopicBean topicBean, View view) {
        o(true);
        d06.c(topicBean.getTopic_id().longValue(), topicBean.getName(), d06.g);
    }

    public final void z(TopicBean topicBean, View view) {
        o(false);
        d06.c(topicBean.getTopic_id().longValue(), topicBean.getName(), d06.h);
    }
}

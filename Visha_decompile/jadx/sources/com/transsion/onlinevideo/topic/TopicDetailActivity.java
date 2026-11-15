package com.transsion.onlinevideo.topic;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.dbdata.beans.onlinevideo.ComplexLabelBean;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.VideoTag;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.TopicDetailTypeAdapter;
import com.transsion.onlinevideo.adapter.VideoTypeAdapter;
import com.transsion.onlinevideo.viewmodel.TopicViewModel;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import defpackage.d06;
import defpackage.et7;
import defpackage.g16;
import defpackage.hb0;
import defpackage.p06;
import defpackage.pp3;
import defpackage.se;
import defpackage.uqa;
import defpackage.vz5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TopicDetailActivity extends OnlineBaseActivity implements AppBarLayout.OnOffsetChangedListener {
    public RecyclerView N;
    public TopicDetailTypeAdapter O;
    public TextView P;
    public View Q;
    public long R;
    public List S;
    public String T;
    public TopicViewModel U;
    public CustomSwipeRefreshLayout X;
    public View Y;
    public boolean Z;
    public LinearLayout a0;
    public LinearLayout b0;
    public LinearLayout c0;
    public TextView d0;
    public TextView e0;
    public TextView f0;
    public RouterBean.RouterData g0;
    public int h0;
    public long i0;
    public int k0;
    public LinearLayout l0;
    public LinearLayout m0;
    public AppBarLayout n0;
    public FrameLayout o0;
    public long p0;
    public int q0;
    public int r0;
    public List t0;
    public boolean w0;
    public CustomGridLayoutManager x0;
    public int y0;
    public View z0;
    public int V = 1;
    public final int W = 18;
    public boolean j0 = false;
    public String s0 = "vd_ott_label_cl";
    public final List u0 = new ArrayList();
    public final List v0 = new ArrayList();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (MainApp.w == 0) {
                ToastUtils.s(R.string.network_error);
                return;
            }
            TopicDetailActivity topicDetailActivity = TopicDetailActivity.this;
            topicDetailActivity.j0 = true;
            if (topicDetailActivity.k0 != 2) {
                topicDetailActivity.c1(topicDetailActivity.R, TopicDetailActivity.this.V, 18, false);
            } else {
                topicDetailActivity.b1(topicDetailActivity.V, 18, false);
            }
            TopicDetailActivity.this.f1();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            TopicDetailActivity.this.b0.setVisibility(8);
            TopicDetailActivity.this.c0.setVisibility(8);
            TopicDetailActivity.this.a0.setVisibility(0);
            TopicDetailActivity topicDetailActivity = TopicDetailActivity.this;
            topicDetailActivity.V = 1;
            if (topicDetailActivity.k0 != 2) {
                topicDetailActivity.c1(topicDetailActivity.R, TopicDetailActivity.this.V, 18, true);
            } else {
                topicDetailActivity.b1(1, 18, true);
            }
        }
    }

    public class c implements CustomSwipeRefreshLayout.OnRefreshListener {
        public c() {
        }

        public final void b() {
            TopicDetailActivity.this.X.setRefreshing(false);
        }

        @Override
        public void onRefresh() {
            TopicDetailActivity topicDetailActivity = TopicDetailActivity.this;
            topicDetailActivity.V = 1;
            if (topicDetailActivity.k0 != 2) {
                topicDetailActivity.c1(topicDetailActivity.R, TopicDetailActivity.this.V, 18, true);
            } else {
                topicDetailActivity.b1(1, 18, true);
            }
            TopicDetailActivity.this.X.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.b();
                }
            }, 1000L);
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            TopicDetailActivity.this.n0.setExpanded(true, true);
        }
    }

    public class e implements Observer {
        public e() {
        }

        @Override
        public void onChanged(Integer num) {
            if (TopicDetailActivity.this.O == null) {
                Log.e("visha_TopicDetailActivity", "getLoadStatus onChanged mMediaItemAdapter == null");
                return;
            }
            int iIntValue = num.intValue();
            if (iIntValue == 0) {
                TopicDetailActivity.this.O.loadMoreComplete();
                TopicDetailActivity.this.e1(true);
                TopicDetailActivity.this.j0 = false;
                return;
            }
            if (iIntValue == 1) {
                TopicDetailActivity.this.e1(true);
                TopicDetailActivity topicDetailActivity = TopicDetailActivity.this;
                topicDetailActivity.j0 = false;
                topicDetailActivity.O.loadMoreEnd();
                return;
            }
            if (iIntValue != 2) {
                return;
            }
            if (TopicDetailActivity.this.O.getData().size() != 0) {
                TopicDetailActivity.this.O.loadMoreFail();
                if (MainApp.w == 0) {
                    ToastUtils.s(R.string.no_network);
                    TopicDetailActivity.this.e1(false);
                    vz5.b();
                    return;
                }
                return;
            }
            if (MainApp.w != 0) {
                TopicDetailActivity.this.g1(R.string.loading_error);
                return;
            }
            ToastUtils.s(R.string.no_network);
            TopicDetailActivity.this.h1();
            TopicDetailActivity.this.e1(false);
            vz5.b();
        }
    }

    public class f extends RecyclerView.OnScrollListener {
        public f() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                p06.d0("vd_ott_label_more_sl");
            }
        }
    }

    public void W0(List list) {
        this.N.stopScroll();
        if (list.get(0) != null) {
            boolean z = ((MediaBean) list.get(0)).getSource_type().intValue() == 2;
            this.O.g(z);
            this.x0.setSpanCount(z ? 2 : 3);
        }
        this.O.setNewData(list);
    }

    public void X0(List list) {
        this.N.stopScroll();
        this.O.setNewData(list);
    }

    public void Y0(List list) {
        RecyclerView recyclerView;
        this.Z = true;
        final ArrayList arrayList = list != null ? new ArrayList(list) : new ArrayList();
        if (!arrayList.isEmpty()) {
            PlayDetailDataManger.parseMediaBean(arrayList);
            View view = this.Y;
            if (view != null) {
                view.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (TopicDetailActivity.this.Y != null) {
                            TopicDetailActivity.this.Y.setVisibility(8);
                            TopicDetailActivity.this.X.setVisibility(0);
                        }
                    }
                }, 300L);
            }
            if (this.O == null || (recyclerView = this.N) == null) {
                return;
            }
            recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.W0(arrayList);
                }
            });
            return;
        }
        TopicDetailTypeAdapter topicDetailTypeAdapter = this.O;
        if (topicDetailTypeAdapter != null) {
            RecyclerView recyclerView2 = this.N;
            if (recyclerView2 != null) {
                recyclerView2.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.X0(arrayList);
                    }
                });
            } else {
                topicDetailTypeAdapter.setNewData(arrayList);
            }
        }
        J0();
        View view2 = this.Y;
        if (view2 != null) {
            view2.setVisibility(0);
            if (MainApp.w == 0) {
                h1();
            } else {
                g1(R.string.net_not_connect);
            }
        }
    }

    public void Z0(List list) {
        LinearLayout linearLayout = this.l0;
        if (linearLayout == null || list == null) {
            return;
        }
        this.t0 = list;
        linearLayout.removeAllViews();
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                break;
            }
            List list2 = (List) list.get(i);
            if (list2 != null && list2.size() > 0) {
                P0(i, list2, i == list.size() - 1);
            }
            i++;
        }
        List list3 = this.t0;
        if (list3 != null && list3.size() > 0 && this.t0.get(0) != null && ((List) this.t0.get(0)).size() > 0 && ((List) this.t0.get(0)).get(0) != null) {
            this.w0 = ((VideoTag) ((List) this.t0.get(0)).get(0)).getTagRelation() != null;
        }
        K0();
        b1(this.V, 18, false);
    }

    private void parseIntent(Intent intent) {
        if (intent != null) {
            RouterBean.RouterData routerData = (RouterBean.RouterData) intent.getParcelableExtra(RouterUtils.ROUTER_DATA);
            this.g0 = routerData;
            this.R = routerData.getTopic_id();
            this.T = this.g0.getTopic_name();
            this.h0 = this.g0.getTop_position();
            this.k0 = this.g0.getData_type();
            this.q0 = this.g0.getSourceType();
            this.p0 = this.g0.getChannel();
            this.r0 = this.g0.getBottom_position();
            this.s0 = this.g0.getFrom_card();
            this.S = this.g0.getLabelRal();
        }
        Log.d("visha_TopicDetailActivity", "onNewIntent mTopicId：" + this.R + "，mTitle:" + this.T + ",mLabelType:" + this.q0 + ",mLabelId:" + this.p0 + ",mLabelRal:" + this.S + ",dataType:" + this.k0);
    }

    public final int I0(String str) {
        return (str != null ? this.z0.getWidth() : 0) + com.transsion.utils.a.d(this, this.z0.getPaddingStart());
    }

    public final void J0() {
        if (this.Y != null) {
            return;
        }
        L0(this.k0 == 2);
    }

    public final void K0() {
        boolean z;
        if (!this.w0 || this.u0 == null || this.t0 == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (VideoTypeAdapter videoTypeAdapter : this.u0) {
            if (videoTypeAdapter.s() != null && videoTypeAdapter.s().getTagRelation() != null) {
                arrayList.add(videoTypeAdapter.s().getTagRelation());
            }
        }
        for (int i = 0; i < this.t0.size(); i++) {
            List<VideoTag> list = (List) this.t0.get(i);
            if (list != null && list.size() > 0) {
                int tagType = ((VideoTag) list.get(0)).getTagType();
                for (VideoTag videoTag : list) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        z = false;
                        while (true) {
                            if (it.hasNext()) {
                                HashSet hashSet = (HashSet) ((Map) it.next()).get(String.valueOf(tagType));
                                if (hashSet != null) {
                                    if (z || !hashSet.contains(Long.valueOf(videoTag.getTagId()))) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                    videoTag.setNeedHide(z);
                }
            }
            ((VideoTypeAdapter) this.u0.get(i)).setNewData(list);
        }
    }

    public void L0(boolean z) {
        if (this.Y == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.online_video_empty_view)).inflate();
            this.Y = viewInflate;
            this.c0 = (LinearLayout) viewInflate.findViewById(R.id.ll_empty);
            this.a0 = (LinearLayout) this.Y.findViewById(R.id.ll_loading_topic);
            this.b0 = (LinearLayout) this.Y.findViewById(R.id.ll_no_wifi);
            this.d0 = (TextView) this.Y.findViewById(R.id.tv_content_retry);
            this.e0 = (TextView) this.Y.findViewById(R.id.tv_wifi_retry);
            this.f0 = (TextView) this.Y.findViewById(R.id.tv_no_content);
            if (z) {
                this.c0.setGravity(49);
                this.a0.setGravity(49);
                this.b0.setGravity(49);
                this.c0.setPadding(0, com.transsion.utils.a.d(this, 100.0f), 0, 0);
                this.b0.setPadding(0, com.transsion.utils.a.d(this, 100.0f), 0, 0);
            }
            this.e0.setOnClickListener(new a());
            this.d0.setOnClickListener(new b());
        }
    }

    public void M0() {
        TopicDetailTypeAdapter topicDetailTypeAdapter = new TopicDetailTypeAdapter();
        this.O = topicDetailTypeAdapter;
        topicDetailTypeAdapter.d(true);
        this.O.g(this.r0 == 2);
        this.O.setLoadMoreView(new uqa(this));
        this.N = (RecyclerView) findViewById(R.id.rv_media);
        CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(this, this.r0 == 2 ? 2 : 3);
        this.x0 = customGridLayoutManager;
        this.N.setLayoutManager(customGridLayoutManager);
        this.N.setAdapter(this.O);
        this.O.setPreLoadNumber(1);
        this.O.disableLoadMoreIfNotFullPage(this.N);
        this.O.enableLoadMoreEndClick(false);
        this.O.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() {
            @Override
            public final void onLoadMoreRequested() {
                this.a.S0();
            }
        }, this.N);
        this.O.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.T0(baseQuickAdapter, view, i);
            }
        });
        AppBarLayout appBarLayout = (AppBarLayout) findViewById(R.id.top_bar);
        this.n0 = appBarLayout;
        appBarLayout.setVisibility(this.k0 != 2 ? 8 : 0);
        if (this.k0 != 2) {
            return;
        }
        this.l0 = (LinearLayout) findViewById(R.id.ll_type);
        this.m0 = (LinearLayout) findViewById(R.id.ll_filter);
        this.o0 = (FrameLayout) findViewById(R.id.fl_content);
        this.n0.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        this.m0.setOnClickListener(new d());
    }

    public void N0() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) findViewById(R.id.topic_pull_damping_layout);
        this.X = customSwipeRefreshLayout;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new c());
    }

    public void O0() {
        View viewInflate = ((ViewStub) findViewById(R.id.title_bar)).inflate();
        this.P = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        View viewFindViewById = viewInflate.findViewById(R.id.title_bar_back);
        this.Q = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.U0(view);
            }
        });
        if (this.k0 == 2) {
            this.P.setText(R.string.tab_all);
        } else {
            this.P.setText(this.T);
        }
        this.P.setTextColor(getResources().getColor(R.color.os_text_primary_color));
    }

    public final void P0(int i, List list, boolean z) {
        RecyclerView recyclerView;
        VideoTypeAdapter videoTypeAdapter;
        if (i < this.v0.size()) {
            recyclerView = (RecyclerView) this.v0.get(i);
            videoTypeAdapter = (VideoTypeAdapter) this.u0.get(i);
            recyclerView.setAdapter(videoTypeAdapter);
        } else {
            RecyclerView recyclerView2 = new RecyclerView(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.bottomMargin = com.transsion.utils.a.d(this, z ? 20.0f : 10.0f);
            int iD = com.transsion.utils.a.d(this, 13.0f);
            recyclerView2.setPadding(iD, 0, iD, 0);
            recyclerView2.setLayoutParams(layoutParams);
            recyclerView2.setClipToPadding(false);
            recyclerView2.addOnScrollListener(new f());
            VideoTypeAdapter videoTypeAdapter2 = new VideoTypeAdapter(this);
            recyclerView2.setLayoutManager(new LinearLayoutManager(this, 0, false));
            recyclerView2.setAdapter(videoTypeAdapter2);
            videoTypeAdapter2.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.V0(baseQuickAdapter, view, i2);
                }
            });
            this.u0.add(videoTypeAdapter2);
            this.v0.add(recyclerView2);
            recyclerView = recyclerView2;
            videoTypeAdapter = videoTypeAdapter2;
        }
        this.l0.addView(recyclerView);
        if (list != null && list.get(0) != null) {
            List list2 = this.S;
            if (list2 != null && list2.size() != 0) {
                for (ComplexLabelBean complexLabelBean : this.S) {
                    int tag_type = complexLabelBean.getTag_type();
                    long tag_id = complexLabelBean.getTag_id();
                    if (tag_type == ((VideoTag) list.get(0)).getTagType()) {
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            VideoTag videoTag = (VideoTag) list.get(i2);
                            if (videoTag != null && tag_id == videoTag.getTagId()) {
                                videoTypeAdapter.u(videoTag);
                                ((LinearLayoutManager) recyclerView.getLayoutManager()).scrollToPositionWithOffset(i2, (this.y0 - I0(videoTag.getTagName())) / 2);
                                break;
                            }
                        }
                    }
                }
                if (videoTypeAdapter.s() == null) {
                    videoTypeAdapter.u((VideoTag) list.get(0));
                }
            } else if (this.q0 == ((VideoTag) list.get(0)).getTagType()) {
                for (int i3 = 0; i3 < list.size(); i3++) {
                    VideoTag videoTag2 = (VideoTag) list.get(i3);
                    if (videoTag2 != null && this.p0 == videoTag2.getTagId()) {
                        videoTypeAdapter.u(videoTag2);
                        ((LinearLayoutManager) recyclerView.getLayoutManager()).scrollToPositionWithOffset(i3, (this.y0 - I0(videoTag2.getTagName())) / 2);
                        break;
                    }
                }
            } else {
                videoTypeAdapter.u((VideoTag) list.get(0));
            }
        }
        videoTypeAdapter.setNewData(list);
    }

    public void Q0() {
        TopicViewModel topicViewModel = (TopicViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(se.a())).get(TopicViewModel.class);
        this.U = topicViewModel;
        topicViewModel.f().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.Y0((List) obj);
            }
        });
        this.U.g().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.Z0((List) obj);
            }
        });
        if (this.k0 != 2) {
            c1(this.R, 1, 18, true);
        } else {
            d1();
        }
        this.U.getLoadStatus().observe(this, new e());
    }

    public final void R0() {
        if (this.k0 == 2) {
            int i = this.V + 1;
            this.V = i;
            b1(i, 18, false);
        } else {
            long j = this.R;
            int i2 = this.V + 1;
            this.V = i2;
            c1(j, i2, 18, false);
        }
    }

    public final void S0() {
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.R0();
            }
        }, 500L);
    }

    public final void T0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBean mediaBean;
        if (i >= baseQuickAdapter.getData().size() || (mediaBean = (MediaBean) baseQuickAdapter.getData().get(i)) == null) {
            return;
        }
        RouterBean.RouterBeanBuilder routerBeanBuilderWithType = new RouterBean.RouterBeanBuilder().withType(1);
        RouterBean.RouterData routerData = new RouterBean.RouterData(mediaBean.getId(), mediaBean.getSource_id());
        StringBuilder sb = new StringBuilder();
        sb.append(mediaBean.getId());
        String tagName = "";
        sb.append("");
        RouterUtils.route(routerBeanBuilderWithType.withParam(routerData.setShortVideo(PlayDetailDataManger.isShortVideo(sb.toString()))).withMarkParam(this.s0, 0).build(), this);
        g16.b(this.R, mediaBean.getId(), i, this.k0, hb0.checkPayType(mediaBean.getPay_type().intValue()));
        d06.h(this.R, mediaBean.getId(), "topic_more", mediaBean.getPay_type().intValue());
        if (this.k0 == 2) {
            LinearLayout linearLayout = this.l0;
            if (linearLayout != null && linearLayout.getChildCount() >= 2 && this.l0.getChildAt(1) != null && ((RecyclerView) this.l0.getChildAt(1)).getAdapter() != null && ((VideoTypeAdapter) ((RecyclerView) this.l0.getChildAt(1)).getAdapter()).s() != null && ((VideoTypeAdapter) ((RecyclerView) this.l0.getChildAt(1)).getAdapter()).s().getTagName() != null) {
                tagName = ((VideoTypeAdapter) ((RecyclerView) this.l0.getChildAt(1)).getAdapter()).s().getTagName();
            }
            et7.e(mediaBean.getTitle(), (int) mediaBean.getId(), i, tagName, hb0.checkPayType(mediaBean.getPay_type().intValue()));
        }
    }

    public final void U0(View view) {
        onBackPressed();
    }

    public final void V0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        VideoTypeAdapter videoTypeAdapter = (VideoTypeAdapter) baseQuickAdapter;
        videoTypeAdapter.u(videoTypeAdapter.getItem(i));
        this.V = 1;
        K0();
        b1(this.V, 18, true);
        et7.c(this.T, ((VideoTag) baseQuickAdapter.getData().get(i)).tagName);
    }

    public final void a1() {
        if (isFinishing() || isDestroyed() || this.Z) {
            return;
        }
        J0();
        View view = this.Y;
        if (view != null) {
            view.setVisibility(0);
            f1();
        }
    }

    public void b1(int i, int i2, boolean z) {
        LinearLayout linearLayout = this.l0;
        if (linearLayout == null) {
            Log.e("visha_TopicDetailActivity", "loadData ll_type is null");
            return;
        }
        int childCount = linearLayout.getChildCount();
        if (childCount <= 0) {
            return;
        }
        VideoTag[] videoTagArr = new VideoTag[childCount];
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.l0.getChildAt(i3);
            if (childAt instanceof RecyclerView) {
                videoTagArr[i3] = ((VideoTypeAdapter) ((RecyclerView) childAt).getAdapter()).s();
            }
        }
        this.U.e(videoTagArr, i, i2, z);
    }

    public void c1(long j, int i, int i2, boolean z) {
        this.U.d(j, i, i2, z);
    }

    public void d1() {
        this.U.h();
    }

    public final void e1(boolean z) {
        if (this.j0) {
            vz5.c(z);
        }
    }

    public final void f1() {
        J0();
        if (this.a0 == null) {
            return;
        }
        this.c0.setVisibility(8);
        this.a0.setVisibility(0);
        this.b0.setVisibility(8);
        this.X.setVisibility(8);
    }

    public final void g1(int i) {
        J0();
        LinearLayout linearLayout = this.c0;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(0);
        this.a0.setVisibility(8);
        this.b0.setVisibility(8);
        this.X.setVisibility(8);
        this.f0.setText(i);
    }

    public final void h1() {
        J0();
        if (this.b0 == null) {
            return;
        }
        this.c0.setVisibility(8);
        this.a0.setVisibility(8);
        this.b0.setVisibility(0);
        this.X.setVisibility(8);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        TopicDetailTypeAdapter topicDetailTypeAdapter;
        super.onConfigurationChanged(configuration);
        if (!pp3.m() || (topicDetailTypeAdapter = this.O) == null) {
            return;
        }
        topicDetailTypeAdapter.notifyDataSetChanged();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_single_topic);
        parseIntent(getIntent());
        M0();
        O0();
        Q0();
        N0();
        View viewFindViewById = findViewById(R.id.topic_pull_damping_layout);
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.a1();
            }
        };
        if (viewFindViewById != null) {
            viewFindViewById.post(runnable);
        } else {
            runnable.run();
        }
        g16.c(this.R, this.g0.getData_type());
        this.i0 = System.currentTimeMillis();
        if (this.k0 == 2) {
            p06.o0("vd_ott_label_more_show", "topicname", this.T);
        }
        this.y0 = com.transsion.utils.a.m(this);
        this.z0 = LayoutInflater.from(this).inflate(R.layout.adapter_video_tag, (ViewGroup) null, false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        g16.d(this.R, (System.currentTimeMillis() - this.i0) / 1000.0f, this.h0);
        this.v0.clear();
        this.u0.clear();
        AppBarLayout appBarLayout = this.n0;
        if (appBarLayout != null) {
            appBarLayout.removeOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        }
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        parseIntent(intent);
        Q0();
        b1(1, 18, true);
    }

    @Override
    public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        this.m0.setVisibility(i + this.o0.getHeight() <= this.o0.getMinimumHeight() + 3 ? 0 : 4);
    }
}

package com.transsion.onlinevideo.topic;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.dbdata.beans.onlinevideo.ComplexLabelBean;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.VideoTag;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.TopicDetailTypeAdapter;
import com.transsion.onlinevideo.adapter.VideoTypeAdapter;
import com.transsion.onlinevideo.home.OnlineHomeFragment;
import com.transsion.onlinevideo.viewmodel.TopicViewModel;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
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
import defpackage.uqa;
import defpackage.vz5;
import defpackage.zz5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class AllTagFragment extends BaseFragment implements AppBarLayout.OnOffsetChangedListener {
    public TextView A;
    public TextView B;
    public int C;
    public long D;
    public int F;
    public LinearLayout G;
    public LinearLayout H;
    public AppBarLayout I;
    public FrameLayout J;
    public long K;
    public int L;
    public int M;
    public List O;
    public boolean R;
    public CustomGridLayoutManager S;
    public int T;
    public View U;
    public OnlineHomeFragment.e V;
    public RecyclerView l;
    public TopicDetailTypeAdapter m;
    public long n;
    public List o;
    public String p;
    public TopicViewModel q;
    public CustomSwipeRefreshLayout t;
    public View u;
    public boolean v;
    public LinearLayout w;
    public LinearLayout x;
    public LinearLayout y;
    public TextView z;
    public int r = 1;
    public final int s = 18;
    public boolean E = false;
    public String N = "vd_ott_label_cl";
    public final List P = new ArrayList();
    public final List Q = new ArrayList();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (MainApp.w == 0) {
                return;
            }
            AllTagFragment allTagFragment = AllTagFragment.this;
            allTagFragment.E = true;
            if (allTagFragment.F != 2) {
                allTagFragment.z0(allTagFragment.n, AllTagFragment.this.r, 18, false);
            } else {
                allTagFragment.y0(allTagFragment.r, 18, false);
            }
            AllTagFragment.this.F0();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            AllTagFragment.this.x.setVisibility(8);
            AllTagFragment.this.y.setVisibility(8);
            AllTagFragment.this.w.setVisibility(0);
            AllTagFragment allTagFragment = AllTagFragment.this;
            allTagFragment.r = 1;
            if (allTagFragment.F != 2) {
                allTagFragment.z0(allTagFragment.n, AllTagFragment.this.r, 18, true);
            } else {
                allTagFragment.y0(1, 18, true);
            }
        }
    }

    public class c extends RecyclerView.OnScrollListener {
        public c() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                p06.d0("vd_ott_label_more_sl");
            }
        }
    }

    private void B0(boolean z) {
        if (this.E) {
            vz5.c(z);
        }
    }

    public void F0() {
        g0();
        if (this.w == null) {
            return;
        }
        this.y.setVisibility(8);
        this.w.setVisibility(0);
        this.x.setVisibility(8);
        this.t.setVisibility(8);
    }

    private void G0(int i) {
        g0();
        LinearLayout linearLayout = this.y;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(0);
        this.w.setVisibility(8);
        this.x.setVisibility(8);
        this.t.setVisibility(8);
        this.B.setText(i);
    }

    private void H0() {
        g0();
        if (this.x == null) {
            return;
        }
        this.y.setVisibility(8);
        this.w.setVisibility(8);
        this.x.setVisibility(0);
        this.t.setVisibility(8);
    }

    private int f0(String str) {
        View view;
        if (this.U == null && getContext() != null) {
            this.U = LayoutInflater.from(getContext()).inflate(R.layout.adapter_video_tag, (ViewGroup) null, false);
        }
        return ((str == null || (view = this.U) == null) ? 0 : view.getWidth()) + (this.U != null ? com.transsion.utils.a.d(getApplicationContext(), this.U.getPaddingStart()) : 0);
    }

    private void g0() {
        View view;
        if (this.u == null && (view = getView()) != null) {
            j0(this.F == 2, view);
        }
    }

    private void h0() {
        boolean z;
        if (!this.R || this.O == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (VideoTypeAdapter videoTypeAdapter : this.P) {
            if (videoTypeAdapter.s() != null && videoTypeAdapter.s().getTagRelation() != null) {
                arrayList.add(videoTypeAdapter.s().getTagRelation());
            }
        }
        for (int i = 0; i < this.O.size(); i++) {
            List<VideoTag> list = (List) this.O.get(i);
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
            ((VideoTypeAdapter) this.P.get(i)).setNewData(list);
        }
    }

    public void lambda$onViewCreated$0() {
        if (getView() == null || this.v) {
            return;
        }
        g0();
        View view = this.u;
        if (view != null) {
            view.setVisibility(0);
            F0();
        }
    }

    private void m0(int i, List list, boolean z) {
        RecyclerView recyclerView;
        VideoTypeAdapter videoTypeAdapter;
        if (i < this.Q.size()) {
            recyclerView = (RecyclerView) this.Q.get(i);
            videoTypeAdapter = (VideoTypeAdapter) this.P.get(i);
            recyclerView.setAdapter(videoTypeAdapter);
            if (recyclerView.getParent() != null) {
                ((ViewGroup) recyclerView.getParent()).removeView(recyclerView);
            }
        } else {
            RecyclerView recyclerView2 = new RecyclerView(getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.bottomMargin = com.transsion.utils.a.d(getContext(), z ? 20.0f : 10.0f);
            int iD = com.transsion.utils.a.d(getContext(), 13.0f);
            recyclerView2.setPadding(iD, 0, iD, 0);
            recyclerView2.setLayoutParams(layoutParams);
            recyclerView2.setClipToPadding(false);
            recyclerView2.addOnScrollListener(new c());
            VideoTypeAdapter videoTypeAdapter2 = new VideoTypeAdapter(getContext());
            recyclerView2.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            recyclerView2.setAdapter(videoTypeAdapter2);
            videoTypeAdapter2.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.t0(baseQuickAdapter, view, i2);
                }
            });
            this.P.add(videoTypeAdapter2);
            this.Q.add(recyclerView2);
            recyclerView = recyclerView2;
            videoTypeAdapter = videoTypeAdapter2;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) recyclerView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(recyclerView);
            }
            this.G.addView(recyclerView);
        } catch (Exception unused) {
        }
        if (list != null && list.get(0) != null) {
            List list2 = this.o;
            if (list2 != null && list2.size() != 0) {
                for (ComplexLabelBean complexLabelBean : this.o) {
                    int tag_type = complexLabelBean.getTag_type();
                    long tag_id = complexLabelBean.getTag_id();
                    if (tag_type == ((VideoTag) list.get(0)).getTagType()) {
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            VideoTag videoTag = (VideoTag) list.get(i2);
                            if (tag_id == videoTag.getTagId()) {
                                videoTypeAdapter.u(videoTag);
                                ((LinearLayoutManager) recyclerView.getLayoutManager()).scrollToPositionWithOffset(i2, (this.T - f0(videoTag.getTagName())) / 2);
                                break;
                            }
                        }
                    }
                }
                if (videoTypeAdapter.s() == null) {
                    videoTypeAdapter.u((VideoTag) list.get(0));
                }
            } else if (this.L == ((VideoTag) list.get(0)).getTagType()) {
                for (int i3 = 0; i3 < list.size(); i3++) {
                    VideoTag videoTag2 = (VideoTag) list.get(i3);
                    if (this.K == videoTag2.getTagId()) {
                        videoTypeAdapter.u(videoTag2);
                        ((LinearLayoutManager) recyclerView.getLayoutManager()).scrollToPositionWithOffset(i3, (this.T - f0(videoTag2.getTagName())) / 2);
                        break;
                    }
                }
            } else {
                videoTypeAdapter.u((VideoTag) list.get(0));
                C0(videoTypeAdapter, list);
            }
        }
        videoTypeAdapter.setNewData(list);
    }

    public void r0() {
        this.t.setRefreshing(false);
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
        }
    }

    public void s0() {
        this.r = 1;
        if (this.F != 2) {
            z0(this.n, 1, 18, true);
        } else {
            y0(1, 18, true);
        }
        this.t.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.r0();
            }
        }, 1000L);
    }

    public void v0(List list) {
        this.v = true;
        if (list.size() == 0) {
            g0();
            View view = this.u;
            if (view == null) {
                return;
            }
            view.setVisibility(0);
            if (MainApp.w == 0) {
                H0();
                return;
            } else {
                G0(R.string.net_not_connect);
                return;
            }
        }
        View view2 = this.u;
        if (view2 != null) {
            view2.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (AllTagFragment.this.u != null) {
                        AllTagFragment.this.u.setVisibility(8);
                        AllTagFragment.this.t.setVisibility(0);
                    }
                }
            }, 300L);
        }
        this.l.stopScroll();
        if (list.get(0) != null) {
            boolean z = ((MediaBean) list.get(0)).getSource_type().intValue() == 2;
            this.m.g(z);
            this.S.setSpanCount(z ? 2 : 3);
        }
        this.m.setNewData(list);
        PlayDetailDataManger.parseMediaBean(list);
    }

    public void w0(List list) {
        LinearLayout linearLayout = this.G;
        if (linearLayout == null || list == null) {
            return;
        }
        this.O = list;
        linearLayout.removeAllViews();
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                break;
            }
            List list2 = (List) list.get(i);
            if (list2 != null && list2.size() > 0) {
                m0(i, list2, i == list.size() - 1);
            }
            i++;
        }
        List list3 = this.O;
        if (list3 != null && list3.size() > 0 && this.O.get(0) != null && ((List) this.O.get(0)).size() > 0 && ((List) this.O.get(0)).get(0) != null) {
            this.R = ((VideoTag) ((List) this.O.get(0)).get(0)).getTagRelation() != null;
        }
        h0();
        y0(this.r, 18, false);
    }

    public void A0() {
        this.q.h();
    }

    public void C0(VideoTypeAdapter videoTypeAdapter, List list) {
        VideoTag videoTagI0;
        if (list == null || list.size() == 0 || ((VideoTag) list.get(0)).getTagType() != 7 || (videoTagI0 = i0(list)) == null) {
            return;
        }
        videoTypeAdapter.u(videoTagI0);
    }

    public void D0(OnlineHomeFragment.e eVar) {
        this.V = eVar;
    }

    public void E0() {
        OnlineHomeFragment.e eVar = this.V;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    public VideoTag i0(List list) {
        if (list != null && list.size() != 0) {
            for (int i = 0; i < list.size(); i++) {
                if (((VideoTag) list.get(i)).getTagId() != 0) {
                    return (VideoTag) list.get(i);
                }
            }
        }
        return null;
    }

    public void initTitleBar(View view) {
    }

    public void initViewModel() {
        TopicViewModel topicViewModel = (TopicViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(TopicViewModel.class);
        this.q = topicViewModel;
        topicViewModel.f().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.v0((List) obj);
            }
        });
        this.q.g().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.w0((List) obj);
            }
        });
        View view = getView();
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.x0();
            }
        };
        if (view != null) {
            view.post(runnable);
        } else {
            runnable.run();
        }
        this.q.getLoadStatus().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.u0((Integer) obj);
            }
        });
    }

    public void j0(boolean z, View view) {
        if (this.u == null) {
            View viewInflate = ((ViewStub) view.findViewById(R.id.online_video_empty_view)).inflate();
            this.u = viewInflate;
            this.y = (LinearLayout) viewInflate.findViewById(R.id.ll_empty);
            this.w = (LinearLayout) this.u.findViewById(R.id.ll_loading_topic);
            this.x = (LinearLayout) this.u.findViewById(R.id.ll_no_wifi);
            this.z = (TextView) this.u.findViewById(R.id.tv_content_retry);
            this.A = (TextView) this.u.findViewById(R.id.tv_wifi_retry);
            this.B = (TextView) this.u.findViewById(R.id.tv_no_content);
            if (z) {
                this.y.setGravity(49);
                this.w.setGravity(49);
                this.x.setGravity(49);
                this.y.setPadding(0, com.transsion.utils.a.d(getContext(), 100.0f), 0, 0);
                this.x.setPadding(0, com.transsion.utils.a.d(getContext(), 100.0f), 0, 0);
            }
            this.A.setOnClickListener(new a());
            this.z.setOnClickListener(new b());
        }
    }

    public void k0(View view) {
        TopicDetailTypeAdapter topicDetailTypeAdapter = new TopicDetailTypeAdapter();
        this.m = topicDetailTypeAdapter;
        topicDetailTypeAdapter.d(true);
        this.m.g(this.M == 2);
        this.m.setLoadMoreView(new uqa(getContext()));
        this.l = (RecyclerView) view.findViewById(R.id.rv_media);
        CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(getContext(), this.M == 2 ? 2 : 3);
        this.S = customGridLayoutManager;
        this.l.setLayoutManager(customGridLayoutManager);
        this.l.setAdapter(this.m);
        this.m.setPreLoadNumber(1);
        this.m.disableLoadMoreIfNotFullPage(this.l);
        this.m.enableLoadMoreEndClick(false);
        this.m.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() {
            @Override
            public final void onLoadMoreRequested() {
                this.a.o0();
            }
        }, this.l);
        this.m.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.p0(baseQuickAdapter, view2, i);
            }
        });
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(R.id.top_bar);
        this.I = appBarLayout;
        appBarLayout.setVisibility(this.F != 2 ? 8 : 0);
        if (this.F != 2) {
            return;
        }
        this.G = (LinearLayout) view.findViewById(R.id.ll_type);
        this.H = (LinearLayout) view.findViewById(R.id.ll_filter);
        this.J = (FrameLayout) view.findViewById(R.id.fl_content);
        this.I.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        this.H.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.q0(view2);
            }
        });
    }

    public void l0(View view) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) view.findViewById(R.id.topic_pull_damping_layout);
        this.t = customSwipeRefreshLayout;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.s0();
            }
        });
    }

    public final void n0() {
        if (this.F == 2) {
            int i = this.r + 1;
            this.r = i;
            y0(i, 18, false);
        } else {
            long j = this.n;
            int i2 = this.r + 1;
            this.r = i2;
            z0(j, i2, 18, false);
        }
    }

    public final void o0() {
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.n0();
            }
        }, 500L);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        TopicDetailTypeAdapter topicDetailTypeAdapter;
        super.onConfigurationChanged(configuration);
        if (!pp3.m() || (topicDetailTypeAdapter = this.m) == null) {
            return;
        }
        topicDetailTypeAdapter.notifyDataSetChanged();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        g16.d(this.n, (System.currentTimeMillis() - this.D) / 1000.0f, this.C);
        this.Q.clear();
        this.P.clear();
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_all;
    }

    @Override
    public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        this.H.setVisibility(i + this.J.getHeight() <= this.J.getMinimumHeight() + 3 ? 0 : 4);
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.n = 201L;
        this.F = 2;
        this.L = 1;
        this.K = 0L;
        this.M = 0;
        this.N = TtmlNode.COMBINE_ALL;
        this.o = null;
        k0(view);
        initTitleBar(view);
        initViewModel();
        l0(view);
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onViewCreated$0();
            }
        });
        this.D = System.currentTimeMillis();
        if (this.F == 2) {
            p06.o0("vd_ott_label_more_show", "topicname", this.p);
        }
        this.T = com.transsion.utils.a.m(MainApp.f());
    }

    public final void p0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
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
        RouterUtils.route(routerBeanBuilderWithType.withParam(routerData.setShortVideo(PlayDetailDataManger.isShortVideo(sb.toString()))).withMarkParam(this.N, 0).build(), getContext());
        g16.b(this.n, mediaBean.getId(), i, this.F, hb0.checkPayType(mediaBean.getPay_type().intValue()));
        d06.h(this.n, mediaBean.getId(), "topic_more", mediaBean.getPay_type().intValue());
        zz5.c(mediaBean.getId(), mediaBean.getSource_id());
        if (this.F == 2) {
            LinearLayout linearLayout = this.G;
            if (linearLayout != null && linearLayout.getChildCount() >= 2) {
                tagName = ((VideoTypeAdapter) ((RecyclerView) this.G.getChildAt(1)).getAdapter()).s().getTagName();
            }
            et7.e(mediaBean.getTitle(), (int) mediaBean.getId(), i, tagName, hb0.checkPayType(mediaBean.getPay_type().intValue()));
        }
    }

    public final void q0(View view) {
        this.I.setExpanded(true, true);
    }

    @Override
    public void releaseWhenDestroyView() {
        super.releaseWhenDestroyView();
        AppBarLayout appBarLayout = this.I;
        if (appBarLayout != null) {
            appBarLayout.removeOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        }
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        if (z) {
            zz5.b();
        }
    }

    public final void t0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        VideoTypeAdapter videoTypeAdapter = (VideoTypeAdapter) baseQuickAdapter;
        VideoTag item = videoTypeAdapter.getItem(i);
        videoTypeAdapter.u(item);
        this.r = 1;
        zz5.e(item.tagId);
        h0();
        y0(this.r, 18, true);
        et7.c(this.p, ((VideoTag) baseQuickAdapter.getData().get(i)).tagName);
    }

    public final void u0(Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            this.m.loadMoreComplete();
            B0(true);
            this.E = false;
            return;
        }
        if (iIntValue == 1) {
            B0(true);
            this.E = false;
            this.m.loadMoreEnd();
            return;
        }
        if (iIntValue != 2) {
            return;
        }
        if (this.m.getData().size() != 0) {
            this.m.loadMoreFail();
            if (MainApp.w == 0) {
                B0(false);
                vz5.b();
                return;
            }
            return;
        }
        if (MainApp.w != 0) {
            G0(R.string.loading_error);
            return;
        }
        H0();
        B0(false);
        vz5.b();
    }

    public final void x0() {
        if (!isAdded() || this.q == null) {
            return;
        }
        if (this.F != 2) {
            z0(this.n, 1, 18, true);
        } else {
            A0();
        }
    }

    public void y0(int i, int i2, boolean z) {
        int childCount = this.G.getChildCount();
        if (childCount <= 0) {
            return;
        }
        VideoTag[] videoTagArr = new VideoTag[childCount];
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.G.getChildAt(i3);
            if (childAt instanceof RecyclerView) {
                videoTagArr[i3] = ((VideoTypeAdapter) ((RecyclerView) childAt).getAdapter()).s();
            }
        }
        this.q.e(videoTagArr, i, i2, z);
    }

    public void z0(long j, int i, int i2, boolean z) {
        this.q.d(j, i, i2, z);
    }
}

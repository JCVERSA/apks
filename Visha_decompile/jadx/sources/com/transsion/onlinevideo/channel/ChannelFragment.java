package com.transsion.onlinevideo.channel;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.common.C;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.appconfig.ChannelsBean;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.MovieTopicAdapter;
import com.transsion.onlinevideo.channel.ChannelFragment;
import com.transsion.onlinevideo.history.HistoryManager;
import com.transsion.onlinevideo.home.OnlineHomeFragment;
import com.transsion.onlinevideo.utils.WebcastListUtils;
import com.transsion.onlinevideo.viewmodel.ChannelViewModel;
import com.transsion.onlinevideo.widgets.OnlineTopicRecyclerView;
import com.transsion.onlinevideo.widgets.VishaShimmerFrameLayout;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.preload.OptimizeListAdapter;
import com.transsion.privacy.MarkPointUtil;
import com.transsion.tools.fragments.SettingFragment;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.vkPlayer.VkPageManager;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import defpackage.bcc;
import defpackage.c06;
import defpackage.cl4;
import defpackage.d06;
import defpackage.fo1;
import defpackage.h27;
import defpackage.hb0;
import defpackage.uf7;
import defpackage.vz6;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.function.Consumer;

public class ChannelFragment extends BaseFragment {
    public OnlineHomeFragment.e A;
    public LinearLayoutManager B;
    public RelativeLayout C;
    public View D;
    public int E;
    public int F;
    public WebcastListUtils G;
    public TextView H;
    public OnlineTopicRecyclerView l;
    public ChannelViewModel m;
    public MovieTopicAdapter n;
    public boolean o;
    public ChannelsBean p;
    public int q;
    public CustomSwipeRefreshLayout r;
    public boolean s;
    public boolean t;
    public View v;
    public View w;
    public boolean x;
    public TopicBean y;
    public int u = 1;
    public List z = new ArrayList();
    public final Runnable I = new Runnable() {
        @Override
        public final void run() {
            this.b.d1();
        }
    };
    public final ViewTreeObserver.OnPreDrawListener J = new d();

    public class a extends fo1 {
        public a() {
        }

        @Override
        public void onClick(View view) {
            hb0.markDirect(d06.j);
            RouterUtils.jumpToSettingActivity(((BaseFragment) ChannelFragment.this).mActivity, SettingFragment.SHAKE_ITEM_AUTO_PLAY);
        }
    }

    public class b implements vz6 {
        public b() {
        }

        @Override
        public void onConnect(int i) {
            super.onConnect(i);
            ChannelFragment channelFragment = ChannelFragment.this;
            if (channelFragment.mIsVisibleToUser && channelFragment.isResumed() && ((BaseFragment) ChannelFragment.this).mIsParentVisibleToUser) {
                ChannelViewModel channelViewModel = ChannelFragment.this.m;
                int iM = CountryInfoUtil.m();
                int iIntValue = ChannelFragment.this.p.getId().intValue();
                ChannelFragment channelFragment2 = ChannelFragment.this;
                channelViewModel.F(iM, iIntValue, channelFragment2.F0(channelFragment2.u), 20, "other");
            }
        }

        @Override
        public void onDisconnect() {
        }

        @Override
        public void onWifi() {
            ChannelFragment channelFragment = ChannelFragment.this;
            if (channelFragment.mIsVisibleToUser && channelFragment.isResumed() && ((BaseFragment) ChannelFragment.this).mIsParentVisibleToUser) {
                h27.c().e(1098, new Object[0]);
            }
        }
    }

    public class c extends RecyclerView.OnScrollListener {
        public c() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (ChannelFragment.this.G != null && ChannelFragment.this.mIsVisibleToUser && i == 0) {
                ThreadUtils.o().postDelayed(ChannelFragment.this.I, 1000L);
            } else {
                if (!ChannelFragment.this.mIsVisibleToUser || i == 0) {
                    return;
                }
                ThreadUtils.o().removeCallbacks(ChannelFragment.this.I);
            }
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            ChannelFragment.this.C0(i2);
            ChannelFragment channelFragment = ChannelFragment.this;
            if (channelFragment.mIsVisibleToUser) {
                channelFragment.r1();
            }
        }
    }

    public class d implements ViewTreeObserver.OnPreDrawListener {
        public d() {
        }

        public final void b() {
            if (ChannelFragment.this.G != null) {
                ChannelFragment channelFragment = ChannelFragment.this;
                if (channelFragment.mIsVisibleToUser && ((BaseFragment) channelFragment).mIsParentVisibleToUser && ChannelFragment.this.isResumed()) {
                    WebcastListUtils webcastListUtils = ChannelFragment.this.G;
                    LinearLayoutManager linearLayoutManager = ChannelFragment.this.B;
                    ChannelFragment channelFragment2 = ChannelFragment.this;
                    webcastListUtils.v(linearLayoutManager, channelFragment2.z, channelFragment2.p);
                }
            }
        }

        @Override
        public boolean onPreDraw() {
            if (ChannelFragment.this.l.getHeight() <= 0 || ChannelFragment.this.l == null) {
                return true;
            }
            ChannelFragment.this.l.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.b();
                }
            }, 1000L);
            ChannelFragment.this.l.getViewTreeObserver().removeOnPreDrawListener(this);
            return true;
        }
    }

    public static void Q0(TopicBean topicBean) {
        PlayDetailDataManger.parseMediaBean(topicBean.getMediaBeanList());
    }

    public void S0() {
        C0(-1);
    }

    public static ChannelFragment m1(ChannelsBean channelsBean, boolean z, int i) {
        ChannelFragment channelFragment = new ChannelFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean(SettingFragment.SHAKE_ITEM_HISTORY, z);
        bundle.putSerializable("channel", channelsBean);
        bundle.putInt("header_margin", i);
        channelFragment.setArguments(bundle);
        return channelFragment;
    }

    public final void C0(int i) {
        ViewGroup viewGroup;
        int i2;
        ViewGroup viewGroup2;
        int i3;
        ViewGroup viewGroup3;
        for (int i4 = 0; i4 < this.z.size(); i4++) {
            if (((TopicBean) this.z.get(i4)).getData_type().intValue() == 2) {
                this.E = i4;
                break;
            }
        }
        if (i <= 0) {
            if (i >= 0 || (viewGroup = (ViewGroup) this.l.findChildViewUnder(0.0f, this.q + this.F)) == null) {
                return;
            }
            int position = this.B.getPosition(viewGroup);
            if (this.D == null || position > (i2 = this.E) || (viewGroup2 = (ViewGroup) this.B.findViewByPosition(i2)) == null) {
                return;
            }
            o1(this.D, viewGroup2, this.C, false);
            this.D = null;
            WebcastListUtils webcastListUtils = this.G;
            if (webcastListUtils != null) {
                webcastListUtils.W(this.q);
                return;
            }
            return;
        }
        ViewGroup viewGroup4 = (ViewGroup) this.l.findChildViewUnder(0.0f, this.q);
        if (viewGroup4 != null) {
            int position2 = this.B.getPosition(viewGroup4);
            if (this.D != null || position2 < (i3 = this.E) || (viewGroup3 = (ViewGroup) this.B.findViewByPosition(i3)) == null) {
                return;
            }
            this.D = viewGroup3.findViewById(R.id.ll_content);
            VishaShimmerFrameLayout vishaShimmerFrameLayout = (VishaShimmerFrameLayout) viewGroup3.findViewById(R.id.label_content);
            if (vishaShimmerFrameLayout != null) {
                vishaShimmerFrameLayout.setShimmer(null);
            }
            View view = this.D;
            if (view != null) {
                o1(view, viewGroup3, this.C, true);
                int height = viewGroup3.getHeight();
                this.F = height;
                WebcastListUtils webcastListUtils2 = this.G;
                if (webcastListUtils2 != null) {
                    webcastListUtils2.W(this.q + height);
                }
            }
        }
    }

    public void D0(boolean z) {
        List list;
        if (!com.transsion.palmsdk.b.s() && this.y != null && (list = this.z) != null && list.size() != 0 && this.o) {
            List<HistoryBean> typeList = this.y.getTypeList();
            if (typeList.size() > 9) {
                typeList = typeList.subList(0, 9);
            }
            this.y.setHistoryBeanList(typeList);
            if (this.z.size() < 2) {
                this.z.add(this.y);
            } else if (((TopicBean) this.z.get(1)).getHistoryBeanList() != null) {
                ((TopicBean) this.z.get(1)).setHistoryBeanList(typeList);
            } else {
                this.z.add(1, this.y);
            }
        }
        if (z) {
            return;
        }
        p1(this.z);
    }

    public final View E0() {
        ViewStub viewStub;
        View view = this.v;
        if (view != null) {
            return view;
        }
        View view2 = this.w;
        if (view2 == null || (viewStub = (ViewStub) view2.findViewById(R.id.online_video_empty_view)) == null) {
            return null;
        }
        try {
            View viewInflate = viewStub.inflate();
            this.v = viewInflate;
            ((TextView) viewInflate.findViewById(R.id.tv_toview)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.M0(view3);
                }
            });
            final LinearLayout linearLayout = (LinearLayout) this.v.findViewById(R.id.ll_no_wifi);
            final LinearLayout linearLayout2 = (LinearLayout) this.v.findViewById(R.id.ll_loading_channel);
            final LinearLayout linearLayout3 = (LinearLayout) this.v.findViewById(R.id.ll_empty);
            ((TextView) this.v.findViewById(R.id.tv_retry)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.N0(linearLayout, linearLayout2, view3);
                }
            });
            ((TextView) this.v.findViewById(R.id.tv_content_retry)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.O0(linearLayout3, linearLayout2, view3);
                }
            });
            return this.v;
        } catch (Throwable th) {
            Log.w("ChannelFragment", "inflate empty stub error: " + th.getMessage());
            return null;
        }
    }

    public final int F0(int i) {
        Log.i("ChannelFragment", "isVk: " + this.p.isVkChannel());
        return this.p.isVkChannel() ? VkPageManager.getInstance().incrementAndGet() : i;
    }

    public void G0() {
        LogUtils.j("ChannelFragment", "initData: ");
        this.m.D(this.p.getId().intValue()).observe(this.mActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.R0((List) obj);
            }
        });
        if (this.o) {
            this.m.A().observe(this.mActivity, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.T0((List) obj);
                }
            });
            this.m.G().observe(this.mActivity, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.V0((List) obj);
                }
            });
        }
        this.m.B(this.p.getId().intValue()).observe(this.mActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.W0((Integer) obj);
            }
        });
        if (this.s || this.t) {
            this.u = 1;
            if (this.p.isVkChannel()) {
                this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(this.u), 20, "other");
            } else {
                this.m.E(this.mContext, this.p.getId().intValue(), CountryInfoUtil.m(), F0(this.u), 20);
            }
        }
    }

    public void H0(boolean z, boolean z2) {
        if (this.w == null || E0() == null) {
            return;
        }
        this.v.setVisibility(0);
        this.r.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) this.v.findViewById(R.id.ll_loading_channel);
        LinearLayout linearLayout2 = (LinearLayout) this.v.findViewById(R.id.ll_no_wifi);
        LinearLayout linearLayout3 = (LinearLayout) this.v.findViewById(R.id.ll_no_privacy);
        LinearLayout linearLayout4 = (LinearLayout) this.v.findViewById(R.id.ll_empty);
        linearLayout3.setVisibility(!z2 ? 0 : 8);
        linearLayout2.setVisibility((z2 && !z && MainApp.w == 0) ? 0 : 8);
        linearLayout4.setVisibility((!z2 || z || MainApp.w == 0) ? 8 : 0);
        linearLayout.setVisibility(z ? 0 : 8);
        if (z2 && z) {
            this.x = true;
        }
        if (this.mIsVisibleToUser && z2 && !z && MainApp.w == 0) {
            hb0.markDirect("vd_ott_nodata_show");
        }
    }

    public void I0() {
        MainApp.d("ChannelFragment" + this.p.getId(), new b());
    }

    public void J0(View view) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) view.findViewById(R.id.channel_pull_damping_layout);
        this.r = customSwipeRefreshLayout;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setProgressViewEndTarget(false, getResources().getDimensionPixelOffset(R.dimen.online_custom_refresh_view_end));
        this.r.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.X0();
            }
        });
    }

    public void K0() {
        MovieTopicAdapter movieTopicAdapter = new MovieTopicAdapter();
        this.n = movieTopicAdapter;
        movieTopicAdapter.t(this.p.getTopicLayout());
        this.n.s(this.p.isYoutubeChannel());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mContext);
        this.B = linearLayoutManager;
        this.l.setLayoutManager(linearLayoutManager);
        this.l.addOnScrollListener(new c());
        this.l.setAdapter(this.n);
        this.n.setPreLoadNumber(1);
        this.n.disableLoadMoreIfNotFullPage(this.l);
        uf7 uf7Var = new uf7(this.mContext);
        uf7Var.setClickListener(new uf7.a() {
            @Override
            public final void a() {
                this.a.Y0();
            }
        });
        this.n.setLoadMoreView(uf7Var);
        this.n.enableLoadMoreEndClick(false);
        this.n.r(this.p.getName());
        this.n.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() {
            @Override
            public final void onLoadMoreRequested() {
                this.a.Z0();
            }
        }, this.l);
        this.n.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.a1(baseQuickAdapter, view, i);
            }
        });
        this.n.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.b1(baseQuickAdapter, view, i);
            }
        });
        OnlineTopicRecyclerView onlineTopicRecyclerView = this.l;
        if (onlineTopicRecyclerView != null) {
            onlineTopicRecyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.c1();
                }
            });
        }
    }

    public boolean L0() {
        return this.B != null && ((TopicBean) this.z.get(0)).getData_type().intValue() == 1;
    }

    public final void M0(View view) {
        MarkPointUtil.w(this.mActivity.getFragmentManager());
    }

    public final void N0(LinearLayout linearLayout, LinearLayout linearLayout2, View view) {
        linearLayout.setVisibility(8);
        linearLayout2.setVisibility(0);
        this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "other");
        hb0.markDirect("vd_ott_nodata_retry_cl");
    }

    public final void O0(LinearLayout linearLayout, LinearLayout linearLayout2, View view) {
        linearLayout.setVisibility(8);
        linearLayout2.setVisibility(0);
        this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "other");
    }

    public final void P0() {
        View view = this.v;
        if (view != null) {
            view.setVisibility(8);
            this.r.setVisibility(0);
        }
    }

    public final void R0(List list) {
        this.x = false;
        boolean z = true;
        if (list.isEmpty()) {
            if (!this.s && !this.t) {
                z = false;
            }
            H0(false, z);
            return;
        }
        View view = this.v;
        if (view != null) {
            view.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.P0();
                }
            }, 300L);
        }
        List list2 = this.z;
        if (list2 != null) {
            list2.clear();
        } else {
            this.z = new ArrayList();
        }
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ChannelFragment.Q0((TopicBean) obj);
            }
        });
        this.z.addAll(list);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            c06.d(com.transsion.palmsdk.b.s());
        }
        onPageRealShowDelayOneSecond();
        onPageRealShowDelayThreeSecond();
        if (!this.z.isEmpty()) {
            this.l.setPadding(0, ((TopicBean) this.z.get(0)).getBannerBeanList() == null ? com.transsion.utils.a.d(this.mContext, 132.0f) : 0, 0, 0);
        }
        D0(false);
        if (this.u == 1) {
            bcc.a();
            cl4.f().c();
            cl4.f().p();
        }
        this.u++;
    }

    public final void T0(List list) {
        if (this.y == null) {
            this.y = new TopicBean();
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        if (this.y.getHistoryBeanList() == null && arrayList.size() > 0) {
            hb0.markDirect("vd_ott_history_show");
        }
        this.y.setHistoryBeanList(arrayList);
        D0(true);
        OnlineTopicRecyclerView onlineTopicRecyclerView = this.l;
        if (onlineTopicRecyclerView != null) {
            onlineTopicRecyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.S0();
                }
            }, 300L);
        }
    }

    public final void U0() {
        C0(-1);
    }

    public final void V0(List list) {
        if (this.y == null) {
            this.y = new TopicBean();
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        this.y.setHistoryBeanList(arrayList);
        for (int i = 0; i < this.z.size(); i++) {
            if (((TopicBean) this.z.get(i)).getData_type().intValue() == 4) {
                ((TopicBean) this.z.get(i)).setHistoryBeanList(arrayList);
                this.n.setData(i, (TopicBean) this.z.get(i));
                OnlineTopicRecyclerView onlineTopicRecyclerView = this.l;
                if (onlineTopicRecyclerView != null) {
                    onlineTopicRecyclerView.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.U0();
                        }
                    }, 300L);
                    return;
                }
                return;
            }
        }
    }

    public final void W0(Integer num) {
        this.x = false;
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            this.n.loadMoreComplete();
            return;
        }
        if (iIntValue == 1) {
            this.n.loadMoreEnd();
        } else {
            if (iIntValue != 2) {
                return;
            }
            if (this.n.getData().isEmpty()) {
                H0(false, true);
            } else {
                this.n.loadMoreFail();
            }
        }
    }

    public final void X0() {
        if (this.p.isVkChannel()) {
            this.m.X(this.p.getId().intValue());
            this.G.N();
        }
        this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "pull");
        this.u = 1;
        s1();
    }

    public final void Y0() {
        c06.j(this.p.getId().intValue(), this.p.getName());
    }

    public final void Z0() {
        this.m.C(CountryInfoUtil.m(), this.p.getId().intValue(), F0(this.u), 20);
    }

    public final void a1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (this.G != null) {
            if (((TopicBean) this.z.get(i)).getData_type().intValue() == 5 || ((TopicBean) this.z.get(i)).getData_type().intValue() == 7) {
                this.G.L(true, i, this.z, this.p);
            }
        }
    }

    public final void b1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Log.i("ChannelFragment", "onItemChildClick" + i);
        if (this.G != null) {
            if (((TopicBean) this.z.get(i)).getData_type().intValue() == 5 || ((TopicBean) this.z.get(i)).getData_type().intValue() == 7) {
                Log.i("ChannelFragment", "onItemChildClick open");
                int id = view.getId();
                int i2 = R.id.iv_play_logo;
                if (id == i2) {
                    Log.i("ChannelFragment", "onItemChildClick logo");
                    this.G.w(this.B, this.z, this.p, i);
                } else if (view.getId() == R.id.cover_container) {
                    Log.i("ChannelFragment", "onItemChildClick cover");
                    this.G.L(view.getId() != i2, i, this.z, this.p);
                }
            }
        }
    }

    public final void c1() {
        if (!isAdded() || this.l == null) {
            return;
        }
        OptimizeListAdapter.h().e(this.l, R.layout.topic_widget_feed_stream, 5);
        OptimizeListAdapter.h().e(this.l, R.layout.topic_widget_video, 5);
    }

    public final void d1() {
        this.G.v(this.B, this.z, this.p);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1078) {
            this.n.notifyDataSetChanged();
        } else if (i == 1098 && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            this.G.v(this.B, this.z, this.p);
        }
    }

    public final void e1() {
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            c06.p(com.transsion.palmsdk.b.s());
        }
    }

    public final void f1() {
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            c06.e(com.transsion.palmsdk.b.s());
        }
    }

    public final void g1() {
        hb0.markDirect(d06.i);
        this.H.setVisibility(0);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(com.transsion.magicvideo.R.attr.os_platform_basic_color, typedValue, true);
        int i = typedValue.data;
        spannableStringBuilder.append((CharSequence) (this.mContext.getResources().getString(R.string.auto_play_stream_toast) + "    "));
        a aVar = new a();
        SpannableString spannableString = new SpannableString(this.mContext.getResources().getString(R.string.auto_play_stream_toast_clickable));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i);
        spannableString.setSpan(aVar, 0, spannableString.length(), 18);
        spannableString.setSpan(foregroundColorSpan, 0, spannableString.length(), 18);
        this.H.setMovementMethod(LinkMovementMethod.getInstance());
        spannableStringBuilder.append((CharSequence) spannableString);
        this.H.setText(spannableStringBuilder);
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onViewCreated$0();
            }
        }, 2500L);
    }

    public final void h1() {
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            this.G.v(this.B, this.z, this.p);
        } else {
            this.G.P();
        }
    }

    public final void i1() {
        r1();
        if (this.D != null) {
            ViewGroup viewGroup = (ViewGroup) this.B.findViewByPosition(this.E);
            if (viewGroup != null) {
                o1(this.D, viewGroup, this.C, false);
            } else {
                this.C.removeView(this.D);
                this.l.getRecycledViewPool().clear();
                this.n.notifyItemChanged(this.E);
            }
            this.D = null;
            WebcastListUtils webcastListUtils = this.G;
            if (webcastListUtils != null) {
                webcastListUtils.W(this.q);
            }
        }
    }

    public final void j1() {
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            this.G.v(this.B, this.z, this.p);
        } else {
            this.G.P();
        }
    }

    public final void k1() {
        this.r.setRefreshing(false);
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
        }
    }

    public void l1() {
        LogUtils.j("ChannelFragment", "lazyLoadData: isViewCreated: " + this.isViewCreated + ", isVisibleToUser: " + this.mIsVisibleToUser + ", isDataLoaded: " + this.isDataLoaded);
        if (this.isViewCreated && this.mIsVisibleToUser && !this.isDataLoaded) {
            G0();
            this.isDataLoaded = true;
        }
    }

    public final void lambda$onViewCreated$0() {
        this.H.setVisibility(8);
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
    }

    public final void n1() {
        OnlineTopicRecyclerView onlineTopicRecyclerView;
        l1();
        if (this.G != null && (onlineTopicRecyclerView = this.l) != null) {
            onlineTopicRecyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.h1();
                }
            }, 1000L);
        }
        MovieTopicAdapter movieTopicAdapter = this.n;
        if (movieTopicAdapter != null) {
            movieTopicAdapter.u(this.mIsVisibleToUser && this.mIsParentVisibleToUser);
        }
    }

    public final void o1(View view, ViewGroup viewGroup, ViewGroup viewGroup2, boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (!z) {
            viewGroup2.removeView(view);
            view.setPadding(0, 0, 0, 0);
            viewGroup.addView(view, layoutParams);
        } else {
            layoutParams.topMargin = this.q;
            view.setPadding(0, com.transsion.utils.a.d(this.mContext, 17.0f), 0, com.transsion.utils.a.d(this.mContext, 17.0f));
            viewGroup.removeView(view);
            viewGroup2.addView(view, layoutParams);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.m = (ChannelViewModel) new ViewModelProvider(this.mActivity, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(ChannelViewModel.class);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.o = false;
            this.p = (ChannelsBean) arguments.getSerializable("channel");
            this.q = arguments.getInt("header_margin");
        }
        this.s = MarkPointUtil.c(this.mActivity);
        this.t = UpdateUtils.b(this.mActivity);
        WebcastListUtils webcastListUtils = new WebcastListUtils(this.mContext);
        this.G = webcastListUtils;
        webcastListUtils.W(this.q);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.w = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        WebcastListUtils webcastListUtils = this.G;
        if (webcastListUtils != null) {
            webcastListUtils.O();
        }
        OnlineTopicRecyclerView onlineTopicRecyclerView = this.l;
        if (onlineTopicRecyclerView == null || onlineTopicRecyclerView.getViewTreeObserver() == null) {
            return;
        }
        this.l.getViewTreeObserver().removeOnPreDrawListener(this.J);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.u = 1;
        this.w = null;
        this.v = null;
        MainApp.s("ChannelFragment" + this.p.getId());
        MovieTopicAdapter movieTopicAdapter = this.n;
        if (movieTopicAdapter != null) {
            movieTopicAdapter.l();
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.channel_fragment;
    }

    public final void onPageRealShowDelayOneSecond() {
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.e1();
            }
        }, 1000L);
    }

    public final void onPageRealShowDelayThreeSecond() {
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.f1();
            }
        }, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    @Override
    public void onPause() {
        super.onPause();
        ThreadUtils.o().removeCallbacks(this.I);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            c06.n(false, this.p.getTopicLayout(), this.p.getId().intValue(), this.p.getSort().intValue(), this.p.getName());
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l.getViewTreeObserver().addOnPreDrawListener(this.J);
        MovieTopicAdapter movieTopicAdapter = this.n;
        if (movieTopicAdapter != null) {
            movieTopicAdapter.u(this.mIsVisibleToUser && this.mIsParentVisibleToUser);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        LogUtils.j("ChannelFragment", "onStart");
        WebcastListUtils webcastListUtils = this.G;
        if (webcastListUtils != null && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            webcastListUtils.v(this.B, this.z, this.p);
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        LogUtils.j("ChannelFragment", "onStop");
        WebcastListUtils webcastListUtils = this.G;
        if (webcastListUtils != null) {
            webcastListUtils.P();
        }
    }

    @Override
    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserLogin(vishaPalmUserInfo);
        if (MMKV.p().e("first_login", true)) {
            Log.i("ChannelFragment", "first login");
            MMKV.p().y("first_login", false);
            LiveData liveDataA = this.m.A();
            if (liveDataA != null && liveDataA.getValue() != null) {
                HistoryManager.n(new ArrayList((Collection) liveDataA.getValue()));
            }
        }
        if (this.o) {
            Log.i("ChannelFragment", "user Login");
            this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "other");
        }
    }

    @Override
    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserReLogin(vishaPalmUserInfo);
        if (this.o) {
            Log.i("ChannelFragment", "user ReLogin");
            this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "other");
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.l = (OnlineTopicRecyclerView) view.findViewById(R.id.rv_topic);
        this.C = (RelativeLayout) view.findViewById(R.id.stick_header_container);
        this.H = (TextView) view.findViewById(R.id.tv_toast);
        this.G.V(new WebcastListUtils.e() {
            @Override
            public final void a() {
                this.a.g1();
            }
        });
        K0();
        J0(view);
        H0(true, this.s || this.t);
        I0();
        l1();
    }

    public void p1(List list) {
        try {
            this.n.setNewData(list);
        } catch (Exception e) {
            Log.e("ChannelFragment", "setNewData error: " + e.getMessage());
        }
    }

    public void privacyPermissionCheck() {
        if (this.mActivity == null || getContext() == null || this.s) {
            return;
        }
        boolean zC = MarkPointUtil.c(this.mActivity);
        this.s = zC;
        if (!zC || this.p == null) {
            return;
        }
        H0(true, true);
        this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "other");
    }

    public void q1(OnlineHomeFragment.e eVar) {
        this.A = eVar;
    }

    public void r1() {
        LinearLayoutManager linearLayoutManager = this.B;
        if (linearLayoutManager != null) {
            int iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
            OnlineHomeFragment.e eVar = this.A;
            if (eVar == null || !this.mIsVisibleToUser) {
                return;
            }
            boolean z = true;
            if (iFindFirstCompletelyVisibleItemPosition == 0 && ((TopicBean) this.z.get(0)).getData_type().intValue() == 1) {
                z = false;
            }
            eVar.a(z);
        }
    }

    @Override
    public void refresh() {
        this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "double");
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.r;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setRefreshing(true);
        s1();
    }

    @Override
    public void registerPalmIdListeners() {
        super.registerPalmIdListeners();
        h27.c().b(this, 1078);
        h27.c().b(this, 1098);
    }

    public final void s1() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.r;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.k1();
                }
            }, 1000L);
        }
    }

    @Override
    public void scrollToTop() {
        OnlineTopicRecyclerView onlineTopicRecyclerView = this.l;
        if (onlineTopicRecyclerView != null) {
            onlineTopicRecyclerView.scrollToPosition(0);
            this.l.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.i1();
                }
            });
        }
    }

    @Override
    public void setParentVisible(boolean z) {
        super.setParentVisible(z);
        WebcastListUtils webcastListUtils = this.G;
        if (webcastListUtils != null) {
            if (!this.mIsVisibleToUser || !this.mIsParentVisibleToUser) {
                webcastListUtils.T();
            }
            OnlineTopicRecyclerView onlineTopicRecyclerView = this.l;
            if (onlineTopicRecyclerView != null) {
                onlineTopicRecyclerView.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.j1();
                    }
                }, 1000L);
            }
        }
        MovieTopicAdapter movieTopicAdapter = this.n;
        if (movieTopicAdapter != null) {
            movieTopicAdapter.u(this.mIsVisibleToUser && this.mIsParentVisibleToUser);
        }
        if (z && this.mIsVisibleToUser) {
            r1();
        }
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        List list;
        super.setUserVisibleHint(z);
        n1();
        ChannelsBean channelsBean = this.p;
        if (channelsBean != null && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            c06.n(true, channelsBean.getTopicLayout(), this.p.getId().intValue(), this.p.getSort().intValue(), this.p.getName());
            if (this.x || (list = this.z) == null || !list.isEmpty() || MainApp.w != 0) {
                return;
            }
            hb0.markDirect("vd_ott_nodata_show");
        }
    }

    @Override
    public void unRegisterPalmIdListeners() {
        super.unRegisterPalmIdListeners();
        h27.c().f(this, 1078);
        h27.c().f(this, 1098);
    }

    @Override
    public void userLogout() {
        super.userLogout();
        if (this.o) {
            Log.i("ChannelFragment", "user Logout");
            this.m.F(CountryInfoUtil.m(), this.p.getId().intValue(), F0(1), 20, "other");
        }
    }
}

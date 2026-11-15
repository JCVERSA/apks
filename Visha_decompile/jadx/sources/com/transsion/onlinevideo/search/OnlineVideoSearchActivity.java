package com.transsion.onlinevideo.search;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.onlinevideo.HotSearchBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.HotSearchAdapter;
import com.transsion.onlinevideo.adapter.OnlineSearchHistoryAdapter;
import com.transsion.onlinevideo.adapter.OnlineSearchVideoAdapter;
import com.transsion.onlinevideo.adapter.OnlineSearchWordAdapter;
import com.transsion.onlinevideo.adapter.SearchRelatedAdapter;
import com.transsion.onlinevideo.adapter.YoutubeAdapter;
import com.transsion.onlinevideo.viewmodel.SearchViewModel;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.widgets.CustomFlexboxLayoutManager;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgetslib.widget.SearchBar;
import com.transsion.widgetthemes.util.Utils;
import defpackage.b06;
import defpackage.hb0;
import defpackage.vha;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class OnlineVideoSearchActivity extends OnlineBaseActivity implements View.OnClickListener {
    public View A0;
    public View B0;
    public int C0;
    public int D0;
    public NestedScrollView E0;
    public FrameLayout F0;
    public View G0;
    public View H0;
    public View I0;
    public View J0;
    public List K0;
    public SearchViewModel N;
    public SearchBar O;
    public String O0;
    public RecyclerView P;
    public String P0;
    public OnlineSearchHistoryAdapter Q;
    public boolean Q0;
    public OnlineSearchWordAdapter R;
    public boolean R0;
    public OnlineSearchWordAdapter S;
    public ImageView T;
    public ImageView U;
    public CustomFlexboxLayoutManager V;
    public View W;
    public View X;
    public View Y;
    public View Z;
    public HotSearchAdapter a0;
    public RecyclerView b0;
    public RecyclerView c0;
    public View d0;
    public View e0;
    public RecyclerView f0;
    public RecyclerView g0;
    public RecyclerView h0;
    public View i0;
    public View j0;
    public View k0;
    public TextView l0;
    public TextView m0;
    public RecyclerView n0;
    public View o0;
    public View p0;
    public TextView q0;
    public TextView r0;
    public OnlineSearchVideoAdapter s0;
    public YoutubeAdapter t0;
    public YoutubeAdapter u0;
    public SearchRelatedAdapter v0;
    public RecyclerView w0;
    public View x0;
    public View y0;
    public View z0;
    public int L0 = 6;
    public int M0 = 1;
    public int N0 = 0;
    public final TextWatcher S0 = new a();

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence.length() != 0 && charSequence.toString().trim().length() != 0) {
                OnlineVideoSearchActivity.this.N.u(charSequence.toString());
                OnlineVideoSearchActivity.this.N.y(charSequence.toString());
                OnlineVideoSearchActivity.this.R.c(charSequence.toString());
                OnlineVideoSearchActivity.this.S.c(charSequence.toString());
                OnlineVideoSearchActivity.this.L1(true, false, false);
                return;
            }
            OnlineVideoSearchActivity.this.X.setVisibility(0);
            List list = (List) OnlineVideoSearchActivity.this.N.p().getValue();
            OnlineVideoSearchActivity.this.W.setVisibility((list == null || list.size() <= 0) ? 8 : 0);
            OnlineVideoSearchActivity.this.L1(false, false, true);
            OnlineVideoSearchActivity onlineVideoSearchActivity = OnlineVideoSearchActivity.this;
            onlineVideoSearchActivity.M1(onlineVideoSearchActivity.O.getEditText());
            if (OnlineVideoSearchActivity.this.N0 == 0) {
                OnlineVideoSearchActivity.this.updateRecommend();
            } else {
                OnlineVideoSearchActivity.this.q0.setVisibility(8);
                OnlineVideoSearchActivity.this.r0.setVisibility(0);
            }
        }
    }

    public class b extends GridLayoutManager {
        public b(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            return false;
        }
    }

    public class c extends LinearLayoutManager {
        public c(Context context) {
            super(context);
        }

        @Override
        public boolean canScrollVertically() {
            return false;
        }
    }

    public void E1(List list) {
        Q1(false, list);
    }

    public void F1(List list) {
        Q1(true, list);
    }

    public void M1(TextView textView) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            textView.requestFocus();
            inputMethodManager.showSoftInput(textView, 0);
        }
    }

    private void d1(TextView textView) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            textView.clearFocus();
            inputMethodManager.hideSoftInputFromWindow(textView.getApplicationWindowToken(), 0);
        }
    }

    private void e1(List list) {
        if (this.x0 == null) {
            this.x0 = ((ViewStub) findViewById(R.id.empty_view)).inflate();
        }
        boolean z = list == null || list.size() == 0;
        this.x0.setVisibility(z ? 0 : 8);
        this.o0.setVisibility(z ? 0 : 8);
        updateRecommend();
    }

    private void g1() {
        this.P = (RecyclerView) findViewById(R.id.rv_search_history);
        OnlineSearchHistoryAdapter onlineSearchHistoryAdapter = new OnlineSearchHistoryAdapter();
        this.Q = onlineSearchHistoryAdapter;
        this.P.setAdapter(onlineSearchHistoryAdapter);
        CustomFlexboxLayoutManager customFlexboxLayoutManager = new CustomFlexboxLayoutManager(this);
        this.V = customFlexboxLayoutManager;
        customFlexboxLayoutManager.a0(1);
        this.V.R(1);
        this.V.Q(0);
        this.P.setLayoutManager(this.V);
        this.Q.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.m1(baseQuickAdapter, view, i);
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_hot_search);
        this.b0 = recyclerView;
        recyclerView.setLayoutManager(new b(this, 3));
        HotSearchAdapter hotSearchAdapter = new HotSearchAdapter();
        this.a0 = hotSearchAdapter;
        this.b0.setAdapter(hotSearchAdapter);
        this.a0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.n1(baseQuickAdapter, view, i);
            }
        });
        this.a0.setPreLoadNumber(1);
        this.a0.setEnableLoadMore(false);
        this.f0 = (RecyclerView) findViewById(R.id.rv_words);
        this.e0 = findViewById(R.id.sv_words);
        this.f0.setLayoutManager(new LinearLayoutManager(this));
        this.R = new OnlineSearchWordAdapter(this);
        this.S = new OnlineSearchWordAdapter(this);
        this.f0.setAdapter(this.R);
        this.g0.setLayoutManager(new LinearLayoutManager(this));
        this.g0.setAdapter(this.S);
        this.R.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.o1(baseQuickAdapter, view, i);
            }
        });
        this.S.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.p1(baseQuickAdapter, view, i);
            }
        });
        RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.rv_videos);
        this.w0 = recyclerView2;
        recyclerView2.setLayoutManager(new c(this));
        OnlineSearchVideoAdapter onlineSearchVideoAdapter = new OnlineSearchVideoAdapter();
        this.s0 = onlineSearchVideoAdapter;
        this.w0.setAdapter(onlineSearchVideoAdapter);
        this.s0.setEnableLoadMore(false);
        this.E0.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() {
            @Override
            public final void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
                this.a.q1(nestedScrollView, i, i2, i3, i4);
            }
        });
        this.G0 = findViewById(R.id.rv_divider);
        this.c0 = (RecyclerView) findViewById(R.id.rv_related_videos);
        this.d0 = findViewById(R.id.ll_related);
        this.H0 = findViewById(R.id.btn_roll_back);
        this.I0 = findViewById(R.id.btn_more);
        this.J0 = findViewById(R.id.btn_more_small);
        this.t0 = new YoutubeAdapter();
        this.u0 = new YoutubeAdapter();
        this.h0.setLayoutManager(new LinearLayoutManager(this));
        this.n0.setLayoutManager(new LinearLayoutManager(this));
        this.n0.setAdapter(this.u0);
        this.h0.setAdapter(this.t0);
        this.u0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.r1(baseQuickAdapter, view, i);
            }
        });
        this.t0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.s1(baseQuickAdapter, view, i);
            }
        });
        O1(true);
        N1(false);
    }

    private void i1() {
        SearchViewModel searchViewModel = (SearchViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(getApplication())).get(SearchViewModel.class);
        this.N = searchViewModel;
        searchViewModel.p().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.C1((List) obj);
            }
        });
        this.N.k();
        this.N.m().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.D1((List) obj);
            }
        });
        this.D0 = 1;
        this.N.l(this, 1, 20);
        this.N.v().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.E1((List) obj);
            }
        });
        this.N.x().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.F1((List) obj);
            }
        });
        this.N.s().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.G1((List) obj);
            }
        });
        this.N.o().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.y1((List) obj);
            }
        });
        this.N.q().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.z1((List) obj);
            }
        });
        this.N.t().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.A1((Integer) obj);
            }
        });
        this.N.n().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.B1((Integer) obj);
            }
        });
    }

    private void j1() {
        ImageView imageView = (ImageView) findViewById(R.id.iv_expand_search_history);
        this.T = imageView;
        imageView.setOnClickListener(this);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_history_clear);
        this.U = imageView2;
        imageView2.setOnClickListener(this);
        this.W = findViewById(R.id.rl_search_history);
        this.X = findViewById(R.id.search_content);
        this.Y = findViewById(R.id.ll_video);
        this.Z = findViewById(R.id.result_container);
        this.E0 = (NestedScrollView) findViewById(R.id.sv_search);
        this.F0 = (FrameLayout) findViewById(R.id.iv_back);
        this.g0 = (RecyclerView) findViewById(R.id.rv_youtube_words);
        this.h0 = (RecyclerView) findViewById(R.id.rv_youtube_videos);
        this.i0 = findViewById(R.id.result_youtube_container);
        this.j0 = findViewById(R.id.result_tip_container);
        this.k0 = findViewById(R.id.space);
        this.l0 = (TextView) findViewById(R.id.tv_visha_tab);
        this.m0 = (TextView) findViewById(R.id.tv_youtube_tab);
        this.A0 = findViewById(R.id.visha_words_container);
        this.B0 = findViewById(R.id.youtube_words_container);
        this.n0 = (RecyclerView) findViewById(R.id.rv_hot_search_youtube);
        this.o0 = findViewById(R.id.recommend_tip_container);
        this.p0 = findViewById(R.id.recommend_container);
        this.q0 = (TextView) findViewById(R.id.tv_visha_recommend);
        TextView textView = (TextView) findViewById(R.id.tv_youtube_recommend);
        this.r0 = textView;
        textView.setOnClickListener(this);
        this.q0.setOnClickListener(this);
        this.F0.setOnClickListener(this);
        this.m0.setOnClickListener(this);
        this.l0.setOnClickListener(this);
    }

    public final void A1(Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            this.s0.loadMoreComplete();
            return;
        }
        if (iIntValue == 1) {
            this.s0.loadMoreEnd();
        } else {
            if (iIntValue != 2) {
                return;
            }
            if (this.s0.getData().size() != 0) {
                this.s0.loadMoreFail();
            } else {
                f1(false);
            }
        }
    }

    public final void B1(Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            this.a0.loadMoreComplete();
            return;
        }
        if (iIntValue == 1) {
            this.a0.loadMoreEnd();
        } else if (iIntValue == 2 && this.a0.getData().size() != 0) {
            this.a0.loadMoreFail();
        }
    }

    public final void C1(List list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.reverse(arrayList);
        if (this.Q.getData().size() == 0) {
            this.T.setVisibility(OnlineSearchHistoryAdapter.b(this, list, this.P) ? 8 : 0);
        }
        this.Q.setNewData(arrayList);
        this.W.setVisibility(arrayList.size() == 0 ? 8 : 0);
    }

    public final void D1(List list) {
        this.a0.setNewData(list);
    }

    public final void H1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        VideoInfo videoInfo = this.v0.getData().get(i);
        long jIntValue = (videoInfo.getSerialList() == null || videoInfo.getSerialList().size() <= 0) ? 0L : videoInfo.getSerialList().get(0).getSerialId().intValue();
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(videoInfo.getVideoId().intValue(), videoInfo.getSourceId(), jIntValue, videoInfo.getTitle(), false).setShortVideo(PlayDetailDataManger.isShortVideo(videoInfo.getVideoId() + ""))).withMarkParam("vd_ott_search_show").build(), this);
    }

    public final void I1(View view) {
        c1(true);
    }

    public final void J1(View view) {
        c1(true);
    }

    public final void K1(View view) {
        c1(false);
    }

    public final void L1(boolean z, boolean z2, boolean z3) {
        this.W.setVisibility((!z3 || this.Q.getData().size() <= 0) ? 8 : 0);
        this.X.setVisibility(z ? 8 : 0);
        this.Z.setVisibility(z2 ? 0 : 8);
        this.j0.setVisibility(8);
        this.k0.setVisibility((!z2 || z) ? 8 : 0);
        if (z2) {
            b06.b = System.currentTimeMillis();
        } else if (b06.b != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - b06.b;
            b06.b = 0L;
            hb0.markTrackTwo("vd_ott_search_result_duration", "keyword", this.O.getEditText().getText().toString(), "duration", Long.valueOf(jCurrentTimeMillis));
        }
        this.o0.setVisibility(z3 ? 0 : 8);
        this.p0.setVisibility(z3 ? 0 : 8);
        if (z3) {
            N1(this.N0 == 1);
        }
        this.e0.setVisibility(z ? 0 : 8);
        View view = this.z0;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final void N1(boolean z) {
        this.n0.setVisibility(z ? 0 : 8);
        this.b0.setVisibility(z ? 8 : 0);
        this.r0.setTextColor(z ? vha.o(this) : ContextCompat.getColor(this, R.color.os_text_primary_color));
        this.q0.setTextColor(!z ? vha.o(this) : ContextCompat.getColor(this, R.color.os_text_primary_color));
        if (this.Q0 || !z) {
            return;
        }
        this.Q0 = true;
        this.N.w();
    }

    public final void O1(boolean z) {
        if (!z) {
            this.r0.setGravity(16);
            this.q0.setGravity(16);
        }
        boolean z2 = this.N0 == 1;
        this.i0.setVisibility(z2 ? 0 : 8);
        this.Y.setVisibility(z2 ? 8 : 0);
        this.m0.setTextColor(z2 ? vha.o(this) : ContextCompat.getColor(this, R.color.os_text_primary_color));
        this.l0.setTextColor(!z2 ? vha.o(this) : ContextCompat.getColor(this, R.color.os_text_primary_color));
    }

    public final void G1(List list) {
        ArrayList arrayList = new ArrayList();
        this.K0 = new ArrayList();
        if (list != null && list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                VideoInfo videoInfo = (VideoInfo) it.next();
                if (videoInfo.isTerm()) {
                    arrayList.add(videoInfo);
                } else {
                    this.K0.add(videoInfo);
                }
            }
        }
        boolean z = arrayList.size() > 0;
        boolean z2 = this.K0.size() > 0;
        this.G0.setVisibility((z && z2) ? 0 : 8);
        this.c0.setVisibility(z2 ? 0 : 8);
        this.d0.setVisibility(z2 ? 0 : 8);
        this.c0.setLayoutManager(new GridLayoutManager(getBaseContext(), 3));
        SearchRelatedAdapter searchRelatedAdapter = new SearchRelatedAdapter();
        this.v0 = searchRelatedAdapter;
        this.c0.setAdapter(searchRelatedAdapter);
        this.v0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.H1(baseQuickAdapter, view, i);
            }
        });
        SearchRelatedAdapter searchRelatedAdapter2 = this.v0;
        int size = this.K0.size();
        int i = this.L0;
        searchRelatedAdapter2.setNewData(size > i ? this.K0.subList(0, i) : this.K0);
        this.s0.setNewData(arrayList);
        L1(false, true, false);
        e1(list);
        this.w0.setVisibility(z ? 0 : 8);
        if (z2) {
            this.I0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.I1(view);
                }
            });
            this.J0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.J1(view);
                }
            });
            this.H0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.K1(view);
                }
            });
            b1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x000e  */
    public final synchronized void Q1(boolean z, List list) {
        boolean z2;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            z2 = false;
        }
        if (z) {
            this.B0.setVisibility(z2 ? 0 : 8);
            OnlineSearchWordAdapter onlineSearchWordAdapter = this.S;
            if (z2 && list.size() > 5) {
                list = list.subList(0, 5);
            }
            onlineSearchWordAdapter.setNewData(list);
        } else {
            this.A0.setVisibility(z2 ? 0 : 8);
            OnlineSearchWordAdapter onlineSearchWordAdapter2 = this.R;
            if (z2 && list.size() > 5) {
                list = list.subList(0, 5);
            }
            onlineSearchWordAdapter2.setNewData(list);
        }
    }

    public final void R1() {
        if ((this.t0.getData() != null && this.t0.getData().size() != 0) || !this.R0) {
            this.o0.setVisibility(8);
            this.p0.setVisibility(8);
            return;
        }
        this.p0.setVisibility(0);
        this.q0.setVisibility(8);
        this.r0.setVisibility(0);
        this.n0.setVisibility(0);
        this.q0.setTextColor(ContextCompat.getColor(this, R.color.os_text_primary_color));
        this.b0.setVisibility(8);
        this.o0.setVisibility(0);
    }

    public final void z1(List list) {
        this.t0.setNewData(list);
        L1(false, true, false);
        k1(list == null || list.size() == 0);
        if (this.Q0) {
            R1();
        } else {
            this.Q0 = true;
            this.N.w();
        }
    }

    public void b1() {
        int i = 8;
        this.I0.setVisibility((this.M0 != 1 || this.K0.size() <= this.L0) ? 8 : 0);
        this.H0.setVisibility(this.M0 > 1 ? 0 : 8);
        View view = this.J0;
        if (this.M0 > 1 && this.v0.getData().size() < this.K0.size()) {
            i = 0;
        }
        view.setVisibility(i);
    }

    public void c1(boolean z) {
        if (this.K0 == null) {
            this.K0 = new ArrayList();
        }
        if (z) {
            int size = this.K0.size();
            int i = this.M0;
            int i2 = this.L0;
            if (size > i * i2) {
                int i3 = i + 1;
                this.M0 = i3;
                this.v0.setNewData(this.K0.subList(0, Math.min(i3 * i2, size)));
            }
        } else {
            this.M0 = 1;
            SearchRelatedAdapter searchRelatedAdapter = this.v0;
            int size2 = this.K0.size();
            int i4 = this.L0;
            searchRelatedAdapter.setNewData(size2 > i4 ? this.K0.subList(0, i4) : this.K0);
            this.E0.scrollTo(0, 0);
        }
        b1();
    }

    public void f1(boolean z) {
        this.j0.setVisibility(8);
        this.k0.setVisibility(0);
        if (this.z0 == null) {
            this.z0 = ((ViewStub) findViewById(R.id.online_video_empty_view)).inflate();
        }
        this.z0.setVisibility(0);
        this.X.setVisibility(8);
        final LinearLayout linearLayout = (LinearLayout) this.z0.findViewById(R.id.ll_loading_common);
        final LinearLayout linearLayout2 = (LinearLayout) this.z0.findViewById(R.id.ll_no_wifi);
        linearLayout2.setVisibility((z || MainApp.w != 0) ? 8 : 0);
        linearLayout.setVisibility(z ? 0 : 8);
        ((TextView) this.z0.findViewById(R.id.tv_retry)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.l1(linearLayout2, linearLayout, view);
            }
        });
    }

    public final void h1() {
        SearchBar searchBar = (SearchBar) findViewById(com.transsion.magicvideo.R.id.search_bar_file);
        this.O = searchBar;
        searchBar.getBackView().setRotationY(Utils.isRtl() ? 180.0f : 0.0f);
        this.O.setOnClickListener(this);
        this.O.getLinearRootView().setBackgroundColor(getResources().getColor(com.transsion.magicvideo.R.color.transparent));
        ((InsetDrawable) this.O.getEditText().getBackground()).setAlpha(234);
        this.O.setBackClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.t1(view);
            }
        });
        this.O.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.u1();
            }
        }, 200L);
        this.O.getEditText().setTextColor(getResources().getColor(R.color.os_text_primary_color));
        this.O.getEditText().setHint(R.string.ott_search_hint);
        this.O.getEditText().setHintTextColor(getResources().getColor(R.color.os_text_tertiary_color));
        this.O.addTextWatcher(this.S0);
        this.O.getEditText().setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                this.b.v1(view, z);
            }
        });
        this.O.setBackClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.w1(view);
            }
        });
        this.O.getEditText().setImeOptions(3);
        this.O.getEditText().setImportantForAutofill(2);
        this.O.setImportantForAutofill(2);
        this.O.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.b.x1(textView, i, keyEvent);
            }
        });
    }

    public final void k1(boolean z) {
        if (this.y0 == null) {
            this.y0 = ((ViewStub) findViewById(R.id.youtube_empty_view)).inflate();
        }
        this.y0.setVisibility(z ? 0 : 8);
        this.o0.setVisibility(z ? 0 : 8);
        R1();
    }

    public final void l1(LinearLayout linearLayout, LinearLayout linearLayout2, View view) {
        linearLayout.setVisibility(8);
        linearLayout2.setVisibility(0);
        if (this.N0 == 0) {
            this.O0 = this.O.getEditText().getText().toString();
            this.N.r(this.O.getEditText().getText().toString(), 1, 20);
        } else {
            String string = this.O.getEditText().getText().toString();
            this.P0 = string;
            this.N.z(string);
        }
    }

    public final void m1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        String str = (String) view.getTag();
        d1(this.O.getEditText());
        this.O.getEditText().setText(str);
        this.C0 = 1;
        if (this.N0 == 0) {
            this.O0 = str;
            this.N.r(str, 1, 20);
        } else {
            this.P0 = str;
            this.N.z(str);
        }
        this.r0.setGravity(16);
        this.q0.setGravity(16);
        this.s0.v(str);
        this.t0.d(str);
        this.N.i(str);
        f1(true);
        hb0.markTrackSingle("vd_ott_search_history_cl", "search_history", str);
    }

    public final void n1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        HotSearchBean hotSearchBean = (HotSearchBean) view.getTag();
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(hotSearchBean.getVideoId().intValue(), hotSearchBean.getSourceId(), hotSearchBean.getTitle()).setShortVideo(PlayDetailDataManger.isShortVideo(hotSearchBean.getVideoId() + ""))).build(), this);
    }

    public final void o1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        this.N0 = 0;
        O1(false);
        String str = (String) view.getTag();
        d1(this.O.getEditText());
        hb0.markTrackTwo("vd_ott_search_suggest_cl", "suggest_keyword", this.O.getEditText().getText().toString(), "suggest_title", str);
        this.O.getEditText().setText(str);
        this.C0 = 1;
        this.O0 = str;
        this.N.r(str, 1, 20);
        this.s0.v(str);
        this.t0.d(str);
        this.N.i(str);
        f1(true);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override
    @SuppressLint({"NotifyDataSetChanged"})
    public void onClick(View view) {
        int id = view.getId();
        if (id == com.transsion.magicvideo.R.id.search_bar_file) {
            this.O.getEditText().setCursorVisible(true);
            this.O.getBackView().setRotationY(Utils.isRtl() ? 180.0f : 0.0f);
            return;
        }
        if (id == R.id.iv_expand_search_history) {
            this.V.a0(4);
            this.Q.notifyDataSetChanged();
            this.T.setVisibility(8);
            return;
        }
        if (id == R.id.iv_history_clear) {
            this.N.j();
            hb0.markDirect("vd_ott_search_history_clear_cl");
            return;
        }
        if (id == R.id.iv_back) {
            onBackPressed();
            return;
        }
        if (id == R.id.tv_visha_tab) {
            this.N0 = 0;
            O1(false);
            if (TextUtils.isEmpty(this.O.getEditText().getText())) {
                updateRecommend();
                return;
            }
            if (this.O.getEditText().getText().toString().equals(this.O0)) {
                updateRecommend();
                return;
            }
            String string = this.O.getEditText().toString();
            this.O0 = string;
            this.N.r(string, this.C0, 20);
            f1(true);
            return;
        }
        if (id != R.id.tv_youtube_tab) {
            if (id == R.id.tv_visha_recommend) {
                N1(false);
                return;
            } else {
                if (id == R.id.tv_youtube_recommend) {
                    N1(true);
                    return;
                }
                return;
            }
        }
        this.N0 = 1;
        O1(false);
        if (TextUtils.isEmpty(this.O.getEditText().getText())) {
            R1();
            return;
        }
        String string2 = this.O.getEditText().getText().toString();
        if (string2.equals(this.P0)) {
            R1();
            return;
        }
        this.P0 = string2;
        this.N.z(string2);
        f1(true);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_online_video_search);
        j1();
        g1();
        h1();
        i1();
        hb0.markDirect("vd_ott_search_show");
    }

    @Override
    public void onPause() {
        super.onPause();
        if (b06.b != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - b06.b;
            b06.b = 0L;
            hb0.markTrackTwo("vd_ott_search_result_duration", "keyword", this.O.getEditText().getText().toString(), "duration", Long.valueOf(jCurrentTimeMillis));
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        List list = (List) this.N.s().getValue();
        if (!TextUtils.isEmpty(this.O.getEditText().getText().toString()) || list == null || list.size() <= 0) {
            return;
        }
        b06.b = System.currentTimeMillis();
    }

    public final void p1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        this.N0 = 1;
        O1(false);
        String str = (String) view.getTag();
        d1(this.O.getEditText());
        this.O.getEditText().setText(str);
        this.P0 = str;
        this.N.z(str);
        this.t0.d(str);
        this.N.i(str);
        k1(true);
        f1(true);
    }

    public final void q1(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        d1(this.O.getEditText());
    }

    public final void r1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        this.u0.c(this, i, false);
    }

    public final void s1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        this.t0.c(this, i, false);
    }

    public final void t1(View view) {
        finish();
    }

    public final void u1() {
        M1(this.O.getEditText());
    }

    public final void updateRecommend() {
        if ((this.s0.getData() != null && this.s0.getData().size() != 0) || this.a0.getData() == null || this.a0.getData().size() <= 0) {
            this.o0.setVisibility(8);
            this.p0.setVisibility(8);
            return;
        }
        this.p0.setVisibility(0);
        this.q0.setVisibility(0);
        this.r0.setVisibility(8);
        this.n0.setVisibility(8);
        this.b0.setVisibility(0);
        this.q0.setTextColor(ContextCompat.getColor(this, R.color.os_text_primary_color));
        this.o0.setVisibility(0);
    }

    public final void v1(View view, boolean z) {
        if (z) {
            return;
        }
        this.e0.setVisibility(8);
    }

    public final void w1(View view) {
        onBackPressed();
    }

    public final boolean x1(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 3) {
            d1(this.O.getEditText());
            Editable text = this.O.getEditText().getText();
            if (text != null) {
                String string = text.toString();
                if (string.trim().length() == 0) {
                    return false;
                }
                this.N.i(string);
                this.C0 = 1;
                if (this.N0 == 0) {
                    this.O0 = string;
                    this.N.r(string, 1, 20);
                } else {
                    this.P0 = string;
                    this.N.z(string);
                }
                this.s0.v(string);
                this.t0.d(string);
                f1(true);
            }
        }
        return false;
    }

    public final void y1(List list) {
        this.R0 = list != null && list.size() > 0;
        this.u0.setNewData(list);
        if (this.N0 == 1) {
            R1();
        }
    }
}

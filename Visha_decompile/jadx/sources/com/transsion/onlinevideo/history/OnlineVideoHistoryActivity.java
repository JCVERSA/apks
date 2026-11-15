package com.transsion.onlinevideo.history;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.SuperiorRecommend;
import com.transsion.dbdata.database.OnlineVideoDatabase;
import com.transsion.magicvideo.R;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.adapter.OnlineHistoryAdapter;
import com.transsion.onlinevideo.adapter.SuperiorRecommendAdapter;
import com.transsion.onlinevideo.history.OnlineVideoHistoryActivity;
import com.transsion.onlinevideo.viewmodel.ChannelViewModel;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgets.InterceptLinearLayout;
import com.transsion.widgetslib.widget.FootOperationBar;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.d06;
import defpackage.fo1;
import defpackage.hb0;
import defpackage.iia;
import defpackage.p06;
import defpackage.uz5;
import defpackage.vna;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class OnlineVideoHistoryActivity extends OnlineBaseActivity implements OnlineHistoryAdapter.a, FootOperationBar.n {
    public static boolean s0 = false;
    public OnlineHistoryAdapter N;
    public AppFootActionBar O;
    public int P;
    public RecyclerView Q;
    public View R;
    public ImageView S;
    public TextView T;
    public CheckBox U;
    public int V;
    public boolean W;
    public int X;
    public String Y;
    public long Z;
    public ChannelViewModel d0;
    public View e0;
    public TextView f0;
    public TextView g0;
    public Switch h0;
    public InterceptLinearLayout i0;
    public LinearLayout k0;
    public LinearLayout l0;
    public LinearLayout m0;
    public ImageView n0;
    public RecyclerView o0;
    public SuperiorRecommendAdapter p0;
    public CustomSwipeRefreshLayout q0;
    public int r0;
    public List a0 = null;
    public final ArrayList b0 = new ArrayList();
    public final ArrayList c0 = new ArrayList();
    public boolean j0 = false;

    public class a extends fo1 {
        public a() {
        }

        @Override
        public void onClick(View view) {
            OnlineVideoHistoryActivity.this.T0();
            p06.d0("vd_ott_hislog_cl");
            if (com.transsion.palmsdk.b.s()) {
                com.transsion.palmsdk.b.C((Activity) view.getContext());
            } else {
                com.transsion.palmsdk.b.g((Activity) view.getContext());
            }
            hb0.markDirect("vd_ott_history_more_login_cl");
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            if (com.transsion.palmsdk.b.s()) {
                com.transsion.palmsdk.b.C((Activity) view.getContext());
            } else {
                com.transsion.palmsdk.b.g((Activity) view.getContext());
            }
            hb0.markDirect("vd_ott_history_more_nodata_login_cl");
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            OnlineVideoHistoryActivity onlineVideoHistoryActivity = OnlineVideoHistoryActivity.this;
            onlineVideoHistoryActivity.u1(onlineVideoHistoryActivity.getString(R.string.talkback_clear_history), OnlineVideoHistoryActivity.this.getString(com.transsion.onlinevideo.R.string.clear_empty), OnlineVideoHistoryActivity.this.getString(com.transsion.onlinevideo.R.string.cancel));
        }
    }

    public class d implements CompoundButton.OnCheckedChangeListener {
        public d() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            OnlineVideoHistoryActivity.this.j0 = z;
            MMKV.p().y("onlineHistory_is_hide_titbits", OnlineVideoHistoryActivity.this.j0);
            OnlineVideoHistoryActivity onlineVideoHistoryActivity = OnlineVideoHistoryActivity.this;
            onlineVideoHistoryActivity.O0(onlineVideoHistoryActivity.a0);
        }
    }

    private void Q0() {
        this.N.setOnSelectListener(this);
        this.N.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.b1(baseQuickAdapter, view, i);
            }
        });
        this.N.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return this.a.c1(baseQuickAdapter, view, i);
            }
        });
        this.N.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.d1(baseQuickAdapter, view, i);
            }
        });
    }

    private void R0() {
        if (this.e0 == null) {
            View viewInflate = ((ViewStub) findViewById(com.transsion.onlinevideo.R.id.vs_empty_content)).inflate();
            this.e0 = viewInflate;
            this.o0 = (RecyclerView) viewInflate.findViewById(com.transsion.onlinevideo.R.id.rv_recommends);
            this.m0 = (LinearLayout) this.e0.findViewById(com.transsion.onlinevideo.R.id.ll_recommend);
            this.f0 = (TextView) this.e0.findViewById(com.transsion.onlinevideo.R.id.tv_content_retry);
            this.g0 = (TextView) this.e0.findViewById(com.transsion.onlinevideo.R.id.tv_no_content);
        }
        SuperiorRecommendAdapter superiorRecommendAdapter = new SuperiorRecommendAdapter();
        this.p0 = superiorRecommendAdapter;
        superiorRecommendAdapter.d(true);
        this.p0.g(false);
        this.p0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.e1(baseQuickAdapter, view, i);
            }
        });
        this.g0.setText(com.transsion.palmsdk.b.s() ? com.transsion.onlinevideo.R.string.no_have_history : com.transsion.onlinevideo.R.string.empty_history_content);
        this.f0.setVisibility(com.transsion.palmsdk.b.s() ? 8 : 0);
        this.f0.setOnClickListener(new b());
        this.o0.setLayoutManager(new GridLayoutManager(this, 3));
        this.o0.setAdapter(this.p0);
        this.d0.Y(this);
        this.d0.W(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.f1((List) obj);
            }
        });
        hb0.markDirect("vd_ott_history_more_nodata_show");
    }

    private void S0() {
        T0();
        this.k0.setVisibility((s0 || com.transsion.palmsdk.b.s()) ? 8 : 0);
        this.n0.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.g1(view);
            }
        });
    }

    public void Y0(View view) {
        this.N.v(this.U.isChecked());
    }

    public void Z0(boolean z, View view) {
        if (z) {
            N0(false);
        } else {
            onBackPressed();
        }
    }

    public void b1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        RouterBean.RouterData shortVideo;
        if (P0()) {
            return;
        }
        this.Z = System.currentTimeMillis();
        HistoryBean historyBean = (HistoryBean) baseQuickAdapter.getData().get(i);
        if (this.W) {
            s1(baseQuickAdapter, view, i, false);
            return;
        }
        if (historyBean.isTimeItem) {
            return;
        }
        uz5.d(historyBean.videoId, "history_more", historyBean.payType);
        if (historyBean.getmIsYoutube() == 1) {
            shortVideo = new RouterBean.RouterData(1, historyBean.sourceId, historyBean.videoName, historyBean.getChannelName(), historyBean.getChannelCover(), historyBean.videoCover);
        } else if ("5".equals(historyBean.sourceType)) {
            shortVideo = new RouterBean.RouterData(historyBean.sourceId, historyBean.videoName, historyBean.videoUrl, Integer.parseInt(historyBean.sourceType), historyBean.videoBeanJson);
        } else {
            RouterBean.RouterData routerData = new RouterBean.RouterData(historyBean.videoId, historyBean.sourceId, historyBean.serialId, 1);
            StringBuilder sb = new StringBuilder();
            sb.append(historyBean.videoId);
            sb.append("");
            shortVideo = routerData.setShortVideo(PlayDetailDataManger.isShortVideo(sb.toString()) || historyBean.isShortVideo());
        }
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(shortVideo).withMarkParam("vd_ott_history_more_video_cl", 0).build(), this);
        uz5.c(historyBean.serialId, historyBean.videoId, "vd_ott_history_more_video_cl", hb0.checkPayType(historyBean.payType));
    }

    public boolean c1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        HistoryBean historyBean = (HistoryBean) baseQuickAdapter.getData().get(i);
        if (historyBean.isTimeItem) {
            return true;
        }
        if (this.W) {
            s1(baseQuickAdapter, view, i, false);
        } else {
            N0(true);
            this.N.w(historyBean, true, i);
        }
        return true;
    }

    public void d1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!P0() || this.W) {
            this.Z = System.currentTimeMillis();
            if (this.W) {
                s1(baseQuickAdapter, view, i, true);
            }
        }
    }

    public void g1(View view) {
        s0 = true;
        this.k0.setVisibility(8);
        hb0.markDirect("vd_ott_history_more_loginclose_cl");
    }

    private void initView() {
        this.l0 = (LinearLayout) findViewById(com.transsion.onlinevideo.R.id.ll_content);
        this.k0 = (LinearLayout) findViewById(com.transsion.onlinevideo.R.id.ll_login);
        this.n0 = (ImageView) findViewById(com.transsion.onlinevideo.R.id.iv_close_login);
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.r0 = typedValue.data;
    }

    public void j1(View view) {
        onBackPressed();
    }

    public static int k1(HistoryBean historyBean, HistoryBean historyBean2) {
        long j = historyBean.lastWatchTime;
        long j2 = historyBean2.lastWatchTime;
        if (j == j2) {
            return 0;
        }
        return j > j2 ? -1 : 1;
    }

    public void o1(List list) {
        this.a0 = list;
        O0(list);
    }

    private void x1(boolean z) {
        View view = this.R;
        if (view instanceof TextView) {
            ((TextView) view).setText(z ? com.transsion.playercommon.R.string.os_close : com.transsion.playercommon.R.string.os_back);
            this.R.setContentDescription(getString(z ? com.transsion.playercommon.R.string.talkback_close : com.transsion.playercommon.R.string.talkback_back));
        }
    }

    public void N0(final boolean z) {
        this.q0.setEnabled(!z);
        this.W = z;
        inflateOperationBar();
        this.O.setVisibility(z ? 0 : 8);
        if (z) {
            hb0.markDirect("vd_ott_history_more_mul");
            this.N.v(false);
        }
        this.N.z(!z ? this.V : 6);
        this.N.notifyDataSetChanged();
        CheckBox checkBox = this.U;
        if (checkBox != null) {
            checkBox.setChecked(false);
            this.U.setVisibility(z ? 0 : 8);
            this.U.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.Y0(view);
                }
            });
        }
        if (this.R != null) {
            x1(z);
            this.R.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.Z0(z, view);
                }
            });
        }
        TextView textView = this.T;
        if (textView != null && !z) {
            textView.setText(this.Y);
        }
        this.S.setVisibility(z ? 8 : 0);
        t1(!z);
    }

    public void O0(List list) {
        ArrayList arrayList;
        this.b0.clear();
        this.X = 0;
        Iterator it = list.iterator();
        String str = "";
        while (it.hasNext()) {
            HistoryBean historyBean = (HistoryBean) it.next();
            if (!this.j0 || historyBean.videoIsTact()) {
                String strD = vna.d(historyBean.lastWatchTime, OSDateTimePicker.FORMAT_Y_M_D);
                if (!str.equals(strD)) {
                    HistoryBean historyBean2 = new HistoryBean();
                    historyBean2.lastWatchTime = historyBean.lastWatchTime;
                    historyBean2.isTimeItem = true;
                    this.b0.add(historyBean2);
                    this.X++;
                    str = strD;
                }
                this.b0.add(historyBean);
            }
        }
        ArrayList arrayList2 = this.b0;
        if (arrayList2 == null || arrayList2.size() == 0) {
            R0();
        } else {
            this.d0.Y(this);
            this.d0.W(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.a1((List) obj);
                }
            });
        }
        LinearLayout linearLayout = this.l0;
        ArrayList arrayList3 = this.b0;
        linearLayout.setVisibility((arrayList3 == null || arrayList3.size() == 0) ? 8 : 0);
        View view = this.e0;
        if (view != null) {
            ArrayList arrayList4 = this.b0;
            view.setVisibility((arrayList4 == null || arrayList4.size() == 0) ? 0 : 8);
        }
        this.S.setVisibility((this.W || (arrayList = this.b0) == null || arrayList.size() == 0) ? 8 : 0);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.addAll(this.b0);
        if (this.c0.size() > 0) {
            arrayList5.addAll(this.c0);
        }
        this.N.setNewData(arrayList5);
        this.d0.z();
    }

    public boolean P0() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.Z;
        Log.w("OnlineHistoryActivity", "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < 500;
    }

    public final void T0() {
        TextView textView = (TextView) findViewById(com.transsion.onlinevideo.R.id.ssptv_open);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) getString(com.transsion.onlinevideo.R.string.history_login_content));
        spannableStringBuilder.append((CharSequence) " ");
        a aVar = new a();
        SpannableString spannableString = new SpannableString(getResources().getString(R.string.login));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(this.r0);
        spannableString.setSpan(aVar, 0, spannableString.length(), 18);
        spannableString.setSpan(foregroundColorSpan, 0, spannableString.length(), 18);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        spannableStringBuilder.append((CharSequence) spannableString);
        textView.setText(spannableStringBuilder);
    }

    public void U0() {
        OnlineHistoryAdapter onlineHistoryAdapter = new OnlineHistoryAdapter(this);
        this.N = onlineHistoryAdapter;
        onlineHistoryAdapter.A(true);
        this.N.z(1);
        RecyclerView recyclerView = (RecyclerView) findViewById(com.transsion.onlinevideo.R.id.rv_history);
        this.Q = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.Q.setAdapter(this.N);
    }

    public void V0() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) findViewById(com.transsion.onlinevideo.R.id.topic_pull_damping_layout);
        this.q0 = customSwipeRefreshLayout;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.i1();
            }
        });
    }

    public void W0() {
        View viewInflate = ((ViewStub) findViewById(com.transsion.onlinevideo.R.id.title_bar)).inflate();
        this.T = (TextView) viewInflate.findViewById(com.transsion.onlinevideo.R.id.title_bar_title);
        this.R = viewInflate.findViewById(com.transsion.onlinevideo.R.id.title_bar_back);
        x1(false);
        this.R.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.j1(view);
            }
        });
        this.U = (CheckBox) viewInflate.findViewById(com.transsion.onlinevideo.R.id.title_bar_checkBox);
        String string = getResources().getString(com.transsion.onlinevideo.R.string.online_video_history_title);
        this.Y = string;
        this.T.setText(string);
        this.T.setTextColor(getResources().getColor(com.transsion.onlinevideo.R.color.os_text_primary_color));
        ImageView imageView = (ImageView) viewInflate.findViewById(com.transsion.onlinevideo.R.id.iv_history_clear);
        this.S = imageView;
        imageView.setVisibility(0);
        this.S.setImageResource(com.transsion.onlinevideo.R.drawable.ic_clear_history_all);
        this.S.setOnClickListener(new c());
        this.i0 = (InterceptLinearLayout) findViewById(com.transsion.onlinevideo.R.id.ill_switch);
        Switch r0 = (Switch) findViewById(com.transsion.onlinevideo.R.id.switch_hide);
        this.h0 = r0;
        r0.setChecked(this.j0);
        this.h0.setOnCheckedChangeListener(new d());
    }

    public void X0() {
        if (this.d0 == null) {
            this.d0 = (ChannelViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(ChannelViewModel.class);
        }
        if (!com.transsion.palmsdk.b.s()) {
            Log.i("OnlineHistoryActivity", "init local history");
            this.d0.A().removeObservers(this);
            this.d0.A().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.o1((List) obj);
                }
            });
        } else {
            Log.i("OnlineHistoryActivity", "init history palm is login!");
            HistoryManager.h();
            this.d0.G().removeObservers(this);
            this.d0.G().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.n1((List) obj);
                }
            });
        }
    }

    public final void a1(List list) {
        ArrayList arrayList = this.b0;
        if (arrayList == null || arrayList.size() == 0 || list == null || list.size() == 0) {
            return;
        }
        int size = (list.size() / 3) + (list.size() % 3 == 0 ? 0 : 1);
        this.c0.clear();
        HistoryBean historyBean = new HistoryBean(getResources().getString(com.transsion.onlinevideo.R.string.video_onlinevideo_recommend_tip));
        historyBean.isTimeItem = true;
        this.c0.add(historyBean);
        for (int i = 0; i < size; i++) {
            int i2 = i * 3;
            int i3 = i2 + 1;
            int i4 = i2 + 2;
            SuperiorRecommend superiorRecommend = (SuperiorRecommend) list.get(i2);
            SuperiorRecommend superiorRecommend2 = null;
            SuperiorRecommend superiorRecommend3 = i3 >= list.size() ? null : (SuperiorRecommend) list.get(i3);
            if (i4 < list.size()) {
                superiorRecommend2 = (SuperiorRecommend) list.get(i4);
            }
            this.c0.add(new HistoryBean(new SuperiorRecommend[]{superiorRecommend, superiorRecommend3, superiorRecommend2}));
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.b0);
        arrayList2.addAll(this.c0);
        this.N.setNewData(arrayList2);
    }

    @Override
    public void b(int i) {
        setTitle(i);
        this.O.setAllEnable(i != 0);
    }

    @Override
    public void c(boolean z) {
        setTitle(z ? this.b0.size() - this.X : 0);
        this.O.setAllEnable(z);
    }

    public final void e1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        SuperiorRecommend superiorRecommend = this.p0.getData().get(i);
        uz5.d(superiorRecommend.getVideo_id(), "history_recommend", superiorRecommend.getPay_type());
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(superiorRecommend.getVideo_id(), superiorRecommend.getVideo_serial_source_id(), superiorRecommend.getVideo_name()).setShortVideo(PlayDetailDataManger.isShortVideo(superiorRecommend.getVideo_id() + ""))).withMarkParam(d06.b, 0).build(), this);
        hb0.markDirect("vd_ott_history_more_nodata_video_cl");
    }

    public final void f1(List list) {
        if (list == null || list.size() == 0) {
            this.m0.setVisibility(8);
        } else {
            this.m0.setVisibility(0);
            this.p0.setNewData(list);
        }
    }

    public final void h1() {
        this.q0.setRefreshing(false);
    }

    public final void i1() {
        X0();
        this.q0.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.h1();
            }
        }, 1000L);
    }

    public void inflateOperationBar() {
        if (this.O == null) {
            AppFootActionBar appFootActionBar = (AppFootActionBar) ((ViewStub) findViewById(com.transsion.onlinevideo.R.id.bottom_action_bar)).inflate();
            this.O = appFootActionBar;
            appFootActionBar.setOnFootOptBarClickListener(this);
            this.O.setListFlag(this.V);
        }
    }

    public final void l1() {
        O0(this.a0);
    }

    public final void m1(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((HistoryBean) it.next());
        }
        List<HistoryBean> youtubeHistoryBeans = OnlineVideoDatabase.a().b().getYoutubeHistoryBeans();
        if (youtubeHistoryBeans != null) {
            arrayList.addAll(youtubeHistoryBeans);
            Collections.sort(arrayList, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return OnlineVideoHistoryActivity.k1((HistoryBean) obj, (HistoryBean) obj2);
                }
            });
        }
        this.a0 = new ArrayList();
        if (arrayList.size() > 100) {
            this.a0.addAll(arrayList.subList(0, 100));
        } else {
            this.a0.addAll(arrayList);
        }
        runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.l1();
            }
        });
    }

    public final void n1(final List list) {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.m1(list);
            }
        });
    }

    @Override
    public void onBackPressed() {
        if (this.W) {
            N0(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.transsion.onlinevideo.R.layout.activity_online_video_history);
        this.V = 1;
        this.j0 = MMKV.p().e("onlineHistory_is_hide_titbits", false);
        initView();
        U0();
        Q0();
        W0();
        X0();
        S0();
        registerPalmIdListeners();
        V0();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        unRegisterPalmIdListeners();
    }

    @Override
    public void onItemClick(int i) {
        w1(this.N.j());
    }

    @Override
    public void onResume() {
        ArrayList arrayList;
        super.onResume();
        p06.n0("vd_ott_history_more_show", "status_0", !com.transsion.palmsdk.b.s() ? 1 : 0);
        this.S.setVisibility((this.W || (arrayList = this.b0) == null || arrayList.size() == 0) ? 8 : 0);
    }

    @Override
    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserLogin(vishaPalmUserInfo);
        X0();
        S0();
    }

    @Override
    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserReLogin(vishaPalmUserInfo);
        X0();
        S0();
    }

    public final void p1(DialogInterface dialogInterface, int i) {
        if (!com.transsion.palmsdk.b.s()) {
            this.d0.r(this);
        } else {
            Log.i("OnlineHistoryActivity", "user is login clear all user history!");
            HistoryManager.f(this.N.getData());
        }
    }

    public final void q1(DialogInterface dialogInterface, int i) {
        if (com.transsion.palmsdk.b.s()) {
            Log.i("OnlineHistoryActivity", "user is login delete user history");
            HistoryManager.f(this.N.j());
        } else {
            this.d0.s(this, this.N.j());
        }
        N0(false);
        hb0.markDirect("vd_ott_history_more_mul_del_cl");
    }

    public final void r1(DialogInterface dialogInterface, int i) {
        N0(false);
    }

    public void s1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() == 0) {
            return;
        }
        HistoryBean historyBean = (HistoryBean) baseQuickAdapter.getData().get(i);
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox);
        boolean z2 = false;
        if (checkBox != null) {
            ((OnlineHistoryAdapter) baseQuickAdapter).w(historyBean, z == checkBox.isChecked(), i);
        }
        AppFootActionBar appFootActionBar = this.O;
        OnlineHistoryAdapter onlineHistoryAdapter = (OnlineHistoryAdapter) baseQuickAdapter;
        if (onlineHistoryAdapter.j() != null && onlineHistoryAdapter.j().size() > 0) {
            z2 = true;
        }
        appFootActionBar.setAllEnable(z2);
    }

    @Override
    public void setTitle(int i) {
        this.P = i;
        TextView textView = this.T;
        if (textView != null) {
            if (i == 0) {
                textView.setText(getString(R.string.none_select));
            } else {
                textView.setText(getString(i > 1 ? R.string.items : R.string.item, Integer.valueOf(i)));
            }
        }
        CheckBox checkBox = this.U;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == this.b0.size() - this.X);
        }
    }

    public final void t1(boolean z) {
        this.i0.setChildClickable(z);
        this.i0.setAlpha(z ? 1.0f : 0.5f);
    }

    public void u1(String str, String str2, String str3) {
        new com.transsion.widgetslib.dialog.d.a(this).k(str).w(str2, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.p1(dialogInterface, i);
            }
        }).n(str3, null).a().show();
    }

    @Override
    public void userLogout() {
        super.userLogout();
        X0();
        S0();
    }

    public void v1(List list, String str, String str2, String str3) {
        if (list == null) {
            return;
        }
        new com.transsion.widgetslib.dialog.d.a(this).k(str).w(str2, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.q1(dialogInterface, i);
            }
        }).n(str3, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.r1(dialogInterface, i);
            }
        }).a().show();
    }

    public void w1(List list) {
        if (list.size() > 1) {
            v1(list, getString(com.transsion.onlinevideo.R.string.clear_histories_recorded, Integer.valueOf(list.size())), getString(com.transsion.onlinevideo.R.string.clear), getString(com.transsion.onlinevideo.R.string.cancel));
        } else {
            v1(list, getString(com.transsion.onlinevideo.R.string.clear_history), getString(com.transsion.onlinevideo.R.string.clear), getString(com.transsion.onlinevideo.R.string.cancel));
        }
    }
}

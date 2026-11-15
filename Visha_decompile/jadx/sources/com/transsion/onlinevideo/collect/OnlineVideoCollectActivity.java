package com.transsion.onlinevideo.collect;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.SuperiorRecommend;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.OnlineCollectAdapter;
import com.transsion.onlinevideo.adapter.SuperiorRecommendAdapter;
import com.transsion.onlinevideo.collect.OnlineVideoCollectActivity;
import com.transsion.onlinevideo.viewmodel.ChannelViewModel;
import com.transsion.onlinevideo.viewmodel.CollectViewModel;
import com.transsion.palmsdk.b;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgetslib.dialog.d;
import defpackage.d06;
import defpackage.eo1;
import defpackage.h27;
import defpackage.hb0;
import defpackage.iia;
import defpackage.p06;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import java.util.stream.Collectors;

public class OnlineVideoCollectActivity extends OnlineBaseActivity implements OnlineCollectAdapter.a {
    public static boolean p0 = false;
    public OnlineCollectAdapter N;
    public View O;
    public TextView P;
    public ImageView Q;
    public RecyclerView R;
    public View S;
    public ImageView T;
    public TextView U;
    public CheckBox V;
    public int W;
    public boolean X;
    public String Y;
    public long Z;
    public List a0 = null;
    public final ArrayList b0 = new ArrayList();
    public ChannelViewModel c0;
    public CollectViewModel d0;
    public View e0;
    public TextView f0;
    public TextView g0;
    public LinearLayout h0;
    public LinearLayout i0;
    public LinearLayout j0;
    public ImageView k0;
    public Button l0;
    public RecyclerView m0;
    public SuperiorRecommendAdapter n0;
    public CustomSwipeRefreshLayout o0;

    public class a extends eo1 {
        public a(Context context) {
            super(context);
        }

        @Override
        public void onClick(View view) {
            OnlineVideoCollectActivity.this.init();
            p06.d0("vd_ott_farlog_cl");
            if (b.s()) {
                b.C((Activity) view.getContext());
            } else {
                b.g((Activity) view.getContext());
            }
        }
    }

    private void P0() {
        this.N.setOnSelectListener(this);
        this.N.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.Z0(baseQuickAdapter, view, i);
            }
        });
        this.N.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return this.a.a1(baseQuickAdapter, view, i);
            }
        });
        this.N.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.b1(baseQuickAdapter, view, i);
            }
        });
    }

    public void Z0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        RouterBean.RouterData shortVideo;
        if (O0()) {
            return;
        }
        this.Z = System.currentTimeMillis();
        CollectItem collectItem = (CollectItem) baseQuickAdapter.getData().get(i);
        if (this.X) {
            s1(baseQuickAdapter, view, i, false);
            return;
        }
        d06.h(collectItem.getIsYoutube() == 1 ? 0L : collectItem.getTopicId(), collectItem.getIsYoutube() != 1 ? collectItem.getVideoId() : 0L, "favorite_more", collectItem.getIsYoutube() == 1 ? 0 : collectItem.getPayType().intValue());
        hb0.markDirect("vd_ott_farpage_video_cl");
        RouterBean.RouterBeanBuilder routerBeanBuilderWithType = new RouterBean.RouterBeanBuilder().withType(1);
        if (collectItem.getIsYoutube() == 1) {
            shortVideo = new RouterBean.RouterData(1, collectItem.getSourceId(), collectItem.getVideoName(), collectItem.getChannelName(), collectItem.getChannelCover(), collectItem.getCoverX());
        } else {
            shortVideo = new RouterBean.RouterData(collectItem.getVideoId(), collectItem.getVideoLink(), 0L, 1).setShortVideo(PlayDetailDataManger.isShortVideo(collectItem.getVideoId() + ""));
        }
        RouterUtils.route(routerBeanBuilderWithType.withParam(shortVideo).withMarkParam("vd_ott_farpage_video_cl", 0).build(), this);
    }

    public static void d1(View view) {
        p06.d0("vd_ott_farlog_cl");
        if (b.s()) {
            b.C((Activity) view.getContext());
        } else {
            b.g((Activity) view.getContext());
        }
    }

    public void init() {
        TextView textView = (TextView) findViewById(R.id.tv_login);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) getResources().getString(com.transsion.magicvideo.R.string.collect_login_content));
        a aVar = new a(this);
        SpannableString spannableString = new SpannableString(getResources().getString(com.transsion.magicvideo.R.string.login));
        spannableString.setSpan(aVar, 0, spannableString.length(), 18);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        spannableStringBuilder.append((CharSequence) spannableString);
        textView.setText(spannableStringBuilder);
    }

    private void initView() {
        this.i0 = (LinearLayout) findViewById(R.id.ll_content);
        this.h0 = (LinearLayout) findViewById(R.id.ll_login);
        this.k0 = (ImageView) findViewById(R.id.iv_close_login);
        this.l0 = (Button) findViewById(R.id.bt_login);
    }

    public static int k1(CollectItem collectItem, CollectItem collectItem2) {
        if (collectItem == null || collectItem2 == null || collectItem.getCollectStamp() == collectItem2.getCollectStamp()) {
            return 0;
        }
        return collectItem.getCollectStamp() > collectItem2.getCollectStamp() ? -1 : 1;
    }

    private void w1(boolean z) {
        View view = this.S;
        if (view instanceof TextView) {
            ((TextView) view).setText(z ? com.transsion.playercommon.R.string.os_close : com.transsion.playercommon.R.string.os_back);
            this.S.setContentDescription(getString(z ? com.transsion.playercommon.R.string.talkback_close : com.transsion.playercommon.R.string.talkback_back));
        }
    }

    public void M0(final boolean z) {
        this.o0.setEnabled(!z);
        this.T.setVisibility(z ? 8 : 0);
        this.X = z;
        inflateOperationBar();
        this.O.setVisibility(z ? 0 : 8);
        if (z) {
            this.N.h(false);
        }
        this.N.r(!z ? this.W : 12);
        this.N.notifyDataSetChanged();
        CheckBox checkBox = this.V;
        if (checkBox != null) {
            checkBox.setChecked(false);
            this.V.setVisibility(z ? 0 : 8);
            this.V.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.W0(view);
                }
            });
        }
        if (this.S != null) {
            w1(z);
            this.S.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.X0(z, view);
                }
            });
        }
        TextView textView = this.U;
        if (textView == null || z) {
            return;
        }
        textView.setText(this.Y);
    }

    public void N0(List list) {
        this.b0.clear();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.b0.add((CollectItem) it.next());
            }
            this.N.setNewData(this.b0);
        }
        if (this.b0.isEmpty()) {
            Q0();
        }
        this.i0.setVisibility(this.b0.isEmpty() ? 8 : 0);
        View view = this.e0;
        if (view != null) {
            view.setVisibility(this.b0.isEmpty() ? 0 : 8);
        }
    }

    public boolean O0() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.Z;
        Log.w("OnlineVideoCollectActivity", "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < 500;
    }

    public final void Q0() {
        this.T.setVisibility(8);
        if (this.e0 == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.vs_empty_content)).inflate();
            this.e0 = viewInflate;
            this.m0 = (RecyclerView) viewInflate.findViewById(R.id.rv_recommends);
            this.j0 = (LinearLayout) this.e0.findViewById(R.id.ll_recommend);
            this.f0 = (TextView) this.e0.findViewById(R.id.tv_content_retry);
            TextView textView = (TextView) this.e0.findViewById(R.id.tv_no_content);
            this.g0 = textView;
            textView.setText(b.s() ? R.string.no_videos : R.string.empty_collect_content);
            SuperiorRecommendAdapter superiorRecommendAdapter = new SuperiorRecommendAdapter();
            this.n0 = superiorRecommendAdapter;
            superiorRecommendAdapter.d(true);
            this.n0.g(false);
            this.n0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    this.b.c1(baseQuickAdapter, view, i);
                }
            });
            this.f0.setVisibility(b.s() ? 8 : 0);
            this.f0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    OnlineVideoCollectActivity.d1(view);
                }
            });
            this.m0.setLayoutManager(new GridLayoutManager(this, 3));
            this.m0.setAdapter(this.n0);
            this.c0.W(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.e1((List) obj);
                }
            });
        }
        this.c0.z();
    }

    public final void R0() {
        this.h0.setVisibility((p0 || b.s()) ? 8 : 0);
        this.k0.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.f1(view);
            }
        });
    }

    public void S0() {
        OnlineCollectAdapter onlineCollectAdapter = new OnlineCollectAdapter(this);
        this.N = onlineCollectAdapter;
        onlineCollectAdapter.r(11);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_collect);
        this.R = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.R.setAdapter(this.N);
    }

    public void T0() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) findViewById(R.id.topic_pull_damping_layout);
        this.o0 = customSwipeRefreshLayout;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.h1();
            }
        });
    }

    public void U0() {
        View viewInflate = ((ViewStub) findViewById(R.id.title_bar)).inflate();
        this.U = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        View viewFindViewById = viewInflate.findViewById(R.id.title_bar_back);
        this.S = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.i1(view);
            }
        });
        this.V = (CheckBox) viewInflate.findViewById(R.id.title_bar_checkBox);
        String string = getResources().getString(R.string.my_favorites);
        this.Y = string;
        this.U.setText(string);
        this.U.setTextColor(getResources().getColor(R.color.os_text_primary_color));
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_history_clear);
        this.T = imageView;
        imageView.setVisibility(0);
        this.T.setImageResource(R.drawable.ic_multi_edit);
        this.T.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.j1(view);
            }
        });
    }

    public void V0() {
        if (this.c0 == null) {
            this.c0 = (ChannelViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(ChannelViewModel.class);
        }
        if (this.d0 == null) {
            this.d0 = (CollectViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(CollectViewModel.class);
        }
        if (b.s()) {
            Log.i("OnlineVideoCollectActivity", "init Collecty palm is login!");
            this.d0.b(1);
            this.d0.c().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.n1((List) obj);
                }
            });
        } else {
            List list = (List) OnlineCollectDataManager.d().a.values().stream().collect(Collectors.toList());
            this.a0 = list;
            N0(list);
        }
    }

    public final void W0(View view) {
        this.N.h(this.V.isChecked());
    }

    public final void X0(boolean z, View view) {
        if (z) {
            M0(false);
        } else {
            onBackPressed();
        }
    }

    public final void Y0(View view) {
        v1(this.N.g());
    }

    public final boolean a1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        CollectItem collectItem = (CollectItem) baseQuickAdapter.getData().get(i);
        if (this.X) {
            s1(baseQuickAdapter, view, i, false);
        } else {
            M0(true);
            this.N.i(collectItem, true, i);
        }
        return true;
    }

    @Override
    public void b(int i) {
        setTitle(i);
        t1(i != 0);
    }

    public final void b1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!O0() || this.X) {
            this.Z = System.currentTimeMillis();
            if (this.X) {
                s1(baseQuickAdapter, view, i, true);
            }
        }
    }

    @Override
    public void c(boolean z) {
        setTitle(z ? this.b0.size() : 0);
        t1(z);
    }

    public final void c1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        SuperiorRecommend superiorRecommend = this.n0.getData().get(i);
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(superiorRecommend.getVideo_id(), superiorRecommend.getVideo_serial_source_id(), superiorRecommend.getVideo_name()).setShortVideo(PlayDetailDataManger.isShortVideo(superiorRecommend.getVideo_id() + ""))).withMarkParam(d06.b, 0).build(), this);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1078) {
            V0();
        }
    }

    public final void e1(List list) {
        if (list == null || list.size() == 0) {
            this.j0.setVisibility(8);
        } else {
            this.j0.setVisibility(0);
            this.n0.setNewData(list);
        }
    }

    public final void f1(View view) {
        p0 = true;
        this.h0.setVisibility(8);
    }

    public final void g1() {
        this.o0.setRefreshing(false);
    }

    public final void h1() {
        V0();
        this.o0.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.g1();
            }
        }, 1000L);
    }

    public final void i1(View view) {
        onBackPressed();
    }

    public void inflateOperationBar() {
        if (this.O == null) {
            this.O = findViewById(R.id.option_bar);
            this.P = (TextView) findViewById(R.id.option_bar_tip);
            this.Q = (ImageView) findViewById(R.id.option_bar_icon);
            this.O.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.Y0(view);
                }
            });
        }
    }

    public final void j1(View view) {
        M0(true);
    }

    public final void l1() {
        N0(this.a0);
    }

    public final void m1() {
        ArrayList arrayList = new ArrayList();
        Collection<CollectItem> collectionValues = OnlineCollectDataManager.d().b.values();
        TreeSet treeSet = new TreeSet();
        for (CollectItem collectItem : collectionValues) {
            String sourceId = collectItem.getIsYoutube() == 1 ? collectItem.getSourceId() : String.valueOf(collectItem.getVideoId());
            if (!treeSet.contains(sourceId)) {
                arrayList.add(collectItem);
                treeSet.add(sourceId);
            }
        }
        Collections.sort(arrayList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return OnlineVideoCollectActivity.k1((CollectItem) obj, (CollectItem) obj2);
            }
        });
        ArrayList arrayList2 = new ArrayList();
        this.a0 = arrayList2;
        arrayList2.addAll(arrayList);
        runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.l1();
            }
        });
    }

    public final void n1(List list) {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.m1();
            }
        });
    }

    public final void o1() {
        this.b0.removeAll(this.N.g());
        this.N.notifyDataSetChanged();
    }

    @Override
    public void onBackPressed() {
        if (this.X) {
            M0(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_online_video_collect);
        this.W = 11;
        initView();
        S0();
        P0();
        U0();
        V0();
        R0();
        registerPalmIdListeners();
        T0();
        init();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        unRegisterPalmIdListeners();
    }

    @Override
    public void onResume() {
        super.onResume();
        hb0.markDirect("vd_ott_farpage_show");
    }

    @Override
    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserLogin(vishaPalmUserInfo);
        V0();
        R0();
    }

    @Override
    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserReLogin(vishaPalmUserInfo);
        V0();
        R0();
    }

    public final void p1(String[] strArr) {
        runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.o1();
            }
        });
        OnlineCollectDataManager.d().j(strArr);
        h27.c().e(1078, new Object[0]);
    }

    public final void q1(DialogInterface dialogInterface, int i) {
        final String[] strArr = new String[this.N.g().size()];
        int size = this.N.g().size();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            if (((CollectItem) this.N.g().get(i2)).getIsYoutube() == 1) {
                strArr[i2] = ((CollectItem) this.N.g().get(i2)).getSourceId();
                OnlineCollectDataManager.d().i(strArr[i2]);
            } else {
                strArr[i2] = String.valueOf(((CollectItem) this.N.g().get(i2)).getVideoId());
                arrayList.add(Long.valueOf(((CollectItem) this.N.g().get(i2)).getVideoId()));
            }
        }
        if (b.s()) {
            int size2 = arrayList.size();
            long[] jArr = new long[size2];
            for (int i3 = 0; i3 < size2; i3++) {
                jArr[i3] = ((Long) arrayList.get(i3)).longValue();
            }
            CollectViewModel.d(jArr, null, 1);
        } else {
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.p1(strArr);
                }
            });
        }
        M0(false);
    }

    public final void r1(DialogInterface dialogInterface, int i) {
        M0(false);
    }

    @Override
    public void registerPalmIdListeners() {
        super.registerPalmIdListeners();
        h27.c().b(this, 1078);
    }

    public void s1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() == 0) {
            return;
        }
        CollectItem collectItem = (CollectItem) baseQuickAdapter.getData().get(i);
        OnlineCollectAdapter onlineCollectAdapter = (OnlineCollectAdapter) baseQuickAdapter;
        boolean z2 = false;
        onlineCollectAdapter.i(collectItem, z == ((CheckBox) view.findViewById(com.transsion.magicvideo.R.id.iv_bucket_fragment_checkBox)).isChecked(), i);
        if (onlineCollectAdapter.g() != null && onlineCollectAdapter.g().size() > 0) {
            z2 = true;
        }
        t1(z2);
    }

    @Override
    public void setTitle(int i) {
        TextView textView = this.U;
        if (textView != null) {
            if (i == 0) {
                textView.setText(getString(com.transsion.magicvideo.R.string.none_select));
            } else {
                textView.setText(getString(i > 1 ? com.transsion.magicvideo.R.string.items : com.transsion.magicvideo.R.string.item, Integer.valueOf(i)));
            }
        }
        CheckBox checkBox = this.V;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == this.b0.size());
        }
    }

    public final void t1(boolean z) {
        this.O.setEnabled(z);
        this.P.setAlpha(z ? 1.0f : 0.4f);
        this.Q.setAlpha(z ? 1.0f : 0.4f);
    }

    public void u1(List list) {
        if (list == null) {
            return;
        }
        new d.a(this).k(list.size() > 1 ? getString(R.string.remove_video_collect_multi, Integer.valueOf(list.size())) : getString(R.string.remove_video_collect_single)).u(R.string.remove, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.q1(dialogInterface, i);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.r1(dialogInterface, i);
            }
        }).a().show();
    }

    @Override
    public void unRegisterPalmIdListeners() {
        super.unRegisterPalmIdListeners();
        h27.c().f(this, 1078);
    }

    @Override
    public void userLogout() {
        super.userLogout();
        V0();
        R0();
    }

    public void v1(List list) {
        u1(list);
    }
}

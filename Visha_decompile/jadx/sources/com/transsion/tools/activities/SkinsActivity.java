package com.transsion.tools.activities;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.datastore.preferences.protobuf.DescriptorProtos;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.decoration.GridSpaceItemDecoration;
import com.transsion.tools.R;
import com.transsion.tools.adapter.DefaultSkinsAdapter;
import com.transsion.tools.adapter.SkinsMenuAdapter;
import com.transsion.tools.model.SkinsViewModel;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.ToastUtils;
import defpackage.b39;
import defpackage.d16;
import defpackage.f5;
import defpackage.h27;
import defpackage.hb0;
import defpackage.mo1;
import defpackage.os0;
import defpackage.p06;
import defpackage.r06;
import defpackage.se;
import defpackage.vha;
import defpackage.w6c;
import defpackage.xn9;
import defpackage.ydc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class SkinsActivity extends BaseActivity {
    public RecyclerView N;
    public RecyclerView O;
    public SkinsMenuAdapter T;
    public DefaultSkinsAdapter U;
    public xn9 V;
    public boolean W;
    public int Y;
    public GridSpaceItemDecoration Z;
    public SkinsViewModel a0;
    public boolean b0;
    public final List P = new ArrayList();
    public final List Q = new ArrayList();
    public final List R = new ArrayList();
    public int S = 1;
    public boolean X = true;
    public final os0 c0 = new e();

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(List list) {
            SkinsActivity.this.Q.clear();
            SkinsActivity.this.Q.addAll(list);
            SkinsActivity.this.C0();
        }
    }

    public class b implements Observer {
        public b() {
        }

        @Override
        public void onChanged(List list) {
            if (list.size() != 0) {
                SkinsActivity.this.R.clear();
                SkinsActivity.this.R.addAll(list);
                SkinsActivity.this.C0();
                SkinsActivity.this.S++;
            }
        }
    }

    public class c implements Observer {
        public c() {
        }

        public final void b() {
            if (SkinsActivity.this.T.getData().size() != 0) {
                SkinsActivity.this.T.loadMoreFail();
                if (SkinsActivity.this.isOnResumed() && SkinsActivity.this.X) {
                    if (MainApp.w == 0) {
                        ToastUtils.s(R.string.no_network);
                    } else {
                        ToastUtils.s(R.string.loading_error);
                    }
                }
            }
        }

        @Override
        public void onChanged(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == 0) {
                SkinsActivity.this.T.loadMoreComplete();
            } else if (iIntValue == 1) {
                SkinsActivity.this.T.loadMoreEnd();
            } else {
                if (iIntValue != 2) {
                    return;
                }
                SkinsActivity.this.N.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b();
                    }
                }, 500L);
            }
        }
    }

    public class d implements BaseQuickAdapter.RequestLoadMoreListener {
        public d() {
        }

        @Override
        public void onLoadMoreRequested() {
            SkinsActivity.this.a0.getOnlineData(SkinsActivity.this.S, 6);
        }
    }

    public class e implements os0 {
        public e() {
        }

        @Override
        public void a() {
            SkinsActivity.this.a0.updateCustomTheme();
            SkinsActivity.this.recreate();
        }
    }

    public class f extends CustomGridLayoutManager {
        public f(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            return super.canScrollVertically();
        }
    }

    public class g extends CustomGridLayoutManager {
        public g(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            return super.canScrollVertically();
        }
    }

    public static int F0() {
        return 1;
    }

    private void G0() {
        M0(b39.b(this) ? 2 : 3);
        OverScrollDecorHelper.setUpOverScroll(this.N, 0);
        this.T = new SkinsMenuAdapter(this);
        DefaultSkinsAdapter defaultSkinsAdapter = new DefaultSkinsAdapter();
        this.U = defaultSkinsAdapter;
        defaultSkinsAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.J0(baseQuickAdapter, view, i);
            }
        });
        this.T.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.K0(baseQuickAdapter, view, i);
            }
        });
        this.N.setAdapter(this.T);
        this.O.setAdapter(this.U);
        if (ydc.g()) {
            return;
        }
        this.N.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (recyclerView.canScrollVertically(1) || i2 <= 0 || recyclerView.getScrollState() != 1) {
                    return;
                }
                SkinsActivity.this.T.setEnableLoadMore(true);
                if (SkinsActivity.this.W) {
                    SkinsActivity.this.T.loadMoreEnd(false);
                    se.b().postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            SkinsActivity.this.T.loadMoreEnd(true);
                        }
                    }, 500L);
                }
            }
        });
        this.T.setPreLoadNumber(1);
        this.T.disableLoadMoreIfNotFullPage(this.N);
        this.T.setLoadMoreView(new mo1(this));
        this.T.enableLoadMoreEndClick(false);
        this.T.setOnLoadMoreListener(new d(), this.N);
    }

    private void H0() {
        View viewInflate = ((ViewStub) findViewById(R.id.title_bar)).inflate();
        TextView textView = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        viewInflate.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.L0(view);
            }
        });
        textView.setText(getResources().getString(R.string.themes));
    }

    private void I0() {
        SkinsViewModel skinsViewModel = (SkinsViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(getApplication())).get(SkinsViewModel.class);
        this.a0 = skinsViewModel;
        skinsViewModel.getDefaultSkins().observe(this, new a());
        this.a0.getOnlineSkins().observe(this, new b());
        this.a0.getLoadStatus().observe(this, new c());
        this.a0.createLocalSkins(this);
        if (ydc.g() || com.transsion.utils.a.A()) {
            return;
        }
        this.a0.getCacheData(this, this.S, 6);
    }

    public void L0(View view) {
        onBackPressed();
    }

    public final void C0() {
        this.P.clear();
        this.P.addAll(this.Q);
        this.P.addAll(this.R);
        this.T.setNewData(D0(2, false));
        this.U.setNewData(D0(2, true));
        if (this.b0) {
            return;
        }
        h27.c().e(DescriptorProtos.Edition.EDITION_PROTO2_VALUE, this.P);
    }

    public List D0(int i, boolean z) {
        List list = this.P;
        return new ArrayList(z ? list.subList(0, i) : list.subList(i, list.size()));
    }

    public final Intent E0(Intent intent, int i) {
        if (intent == null) {
            intent = new Intent(this, (Class<?>) SkinsPreviewActivity.class);
        }
        Bundle bundle = new Bundle();
        bundle.putSerializable("skin_list", (Serializable) D0(F0(), false));
        bundle.putInt("skin_index", i);
        intent.putExtra("skin_list", bundle);
        return intent;
    }

    public final void J0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intent intentE0;
        ThemeData themeData = (ThemeData) w6c.f(this, "theme_preview_key");
        if (i == 0) {
            intentE0 = new Intent(this, (Class<?>) SkinsCustomizeActivity.class);
            d16.h(themeData == null);
        } else {
            intentE0 = E0(null, i - 1);
        }
        f5.b(intentE0, 2021, this);
    }

    public final void K0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Log.e("SkinsActivity", "onItemClick " + i);
        SkinsMenu skinsMenu = (SkinsMenu) view.getTag();
        this.V.h((ThemeData) w6c.f(getBaseContext(), "skin_theme"));
        Intent intentE0 = E0(null, i + F0());
        if (this.T.g() && skinsMenu.name.equals(getResources().getString(R.string.local_skin_model))) {
            this.T.i(false);
            w6c.r(this, "show_model_theme_tip", false);
        } else if (vha.r(skinsMenu.name)) {
            w6c.r(this, vha.g(skinsMenu.name), false);
        }
        f5.b(intentE0, 2021, this);
        p06.f0(skinsMenu.name, "skin_cover_cl", 932460000124L);
    }

    public final void M0(int i) {
        RecyclerView recyclerView = this.N;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new f(getBaseContext(), i));
            this.O.setLayoutManager(new g(getBaseContext(), 2));
            GridSpaceItemDecoration gridSpaceItemDecoration = this.Z;
            if (gridSpaceItemDecoration != null) {
                this.N.removeItemDecoration(gridSpaceItemDecoration);
                this.O.removeItemDecoration(this.Z);
            }
            GridSpaceItemDecoration gridSpaceItemDecoration2 = new GridSpaceItemDecoration(i, com.transsion.utils.a.d(this, 10.0f), 2);
            this.Z = gridSpaceItemDecoration2;
            this.N.addItemDecoration(gridSpaceItemDecoration2);
            this.O.addItemDecoration(this.Z);
        }
    }

    public final void N0() {
        if (this.N == null || this.O == null) {
            return;
        }
        this.a0.createLocalSkins(this);
        G0();
    }

    @Override
    public void finish() {
        super.finish();
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 2021) {
            this.X = false;
            this.a0.updateCustomTheme();
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        xn9 xn9Var = this.V;
        if (xn9Var != null) {
            xn9Var.g(false);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.d("SkinsActivity", "onConfigurationChanged " + configuration.screenHeightDp + StringUtils.COMMA + this.Y);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.transsion.utils.a.a(this, 10);
        setContentView(R.layout.skin_fragment);
        this.N = (RecyclerView) findViewById(R.id.rv_skins_list);
        this.O = (RecyclerView) findViewById(R.id.rv_static_skins_list);
        H0();
        I0();
        G0();
        xn9 xn9VarC = xn9.c();
        this.V = xn9VarC;
        xn9VarC.f(this.c0);
        this.b0 = bundle != null;
        this.Y = getResources().getConfiguration().screenHeightDp;
        w6c.r(this, "need_personal_theme_guide", false);
        adaptSystemUiBarColor();
        getWindow().setBackgroundDrawableResource(com.transsion.playercommon.R.drawable.os_window_background);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        xn9 xn9Var = this.V;
        if (xn9Var != null) {
            xn9Var.e(this.c0);
        }
        removeScreenTypeListener(this);
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        hb0.markTrackSingle("skin_all_list_page_show", "from", getIntent() != null ? getIntent().getStringExtra("from") : "");
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
        N0();
        r06.c(screen_type, "skin_all_list_page_show");
    }
}

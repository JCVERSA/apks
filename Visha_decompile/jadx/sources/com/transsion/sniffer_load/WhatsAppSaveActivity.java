package com.transsion.sniffer_load;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.videomodel.WhatsappViewModel;
import com.transsion.sniffer_load.WhatsAppSaveActivity;
import com.transsion.sniffer_load.dialog.WhatsAppGuideDialog;
import com.transsion.sniffer_load.fragment.WhatsAppViewFragment;
import com.transsion.sniffer_load.whatsapp.WhatsAppDownManagerActivity;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.CustomViewPager;
import com.transsion.widgets.InterceptLinearLayout;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.f5;
import defpackage.hb0;
import defpackage.ikc;
import defpackage.os8;
import defpackage.p06;
import defpackage.raa;
import java.util.ArrayList;
import java.util.List;

public class WhatsAppSaveActivity extends BaseActivity implements FootOperationBar.n {
    public CustomTabLayout N;
    public CustomViewPager O;
    public RtlPageAdapter P;
    public WhatsappViewModel Q;
    public View R;
    public ImageView S;
    public ImageView T;
    public TextView U;
    public CheckBox V;
    public FootOperationBar W;
    public FrameLayout X;
    public InterceptLinearLayout Y;
    public View Z;
    public String[] a0;
    public List b0;
    public com.transsion.widgetslib.dialog.d d0;
    public View f0;
    public ImageView g0;
    public boolean c0 = false;
    public boolean e0 = false;

    public class a extends os8 {
        public a() {
        }

        @Override
        public void onClick() {
            WhatsAppSaveActivity.this.S0();
            p06.d0("dl_wa_guidebar_cl");
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            WhatsAppSaveActivity.this.V.setChecked(!WhatsAppSaveActivity.this.Q.E());
            WhatsAppSaveActivity.this.Q.D(!WhatsAppSaveActivity.this.Q.E(), WhatsAppSaveActivity.this.O.getCurrentItem());
        }
    }

    public class c implements CustomTabLayout.OnTabSelectedListener {
        public c() {
        }

        @Override
        public void onTabReselected(CustomTabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(CustomTabLayout.Tab tab) {
            p06.n0("dl_wa_tab_cl", "status", tab.getPosition());
        }

        @Override
        public void onTabUnselected(CustomTabLayout.Tab tab) {
        }
    }

    public class d implements Observer {
        public d() {
        }

        @Override
        public void onChanged(WhatsappViewModel.b bVar) {
            int i;
            int currentItem = WhatsAppSaveActivity.this.O.getCurrentItem();
            if (currentItem == 0) {
                i = WhatsAppSaveActivity.this.Q.i;
            } else {
                i = currentItem == 1 ? WhatsAppSaveActivity.this.Q.k : WhatsAppSaveActivity.this.Q.j;
            }
            bVar.b(i);
            WhatsAppSaveActivity whatsAppSaveActivity = WhatsAppSaveActivity.this;
            boolean zF = whatsAppSaveActivity.Q.F();
            int i2 = bVar.a;
            whatsAppSaveActivity.O0(zF, i2, i2 == i);
        }
    }

    public class e implements Observer {
        public e() {
        }

        @Override
        public void onChanged(Boolean bool) {
            WhatsAppSaveActivity.this.R0(bool.booleanValue());
        }
    }

    public class f implements Observer {
        public f() {
        }

        @Override
        public void onChanged(List list) {
            WhatsAppSaveActivity.this.D0((list == null || list.size() == 0) ? false : true);
        }
    }

    private void C0() {
        com.transsion.widgetslib.dialog.d dVar = this.d0;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.d0.cancel();
    }

    private void G0() {
        this.R = findViewById(R.id.title_bar_back);
        this.U = (TextView) findViewById(R.id.title_bar_title);
        this.S = (ImageView) findViewById(R.id.iv_pay_history);
        this.T = (ImageView) findViewById(R.id.iv_history_clear);
        this.V = (CheckBox) findViewById(R.id.title_bar_checkBox);
        this.Y = (InterceptLinearLayout) findViewById(R.id.ill_enable);
        this.X = (FrameLayout) findViewById(R.id.fl_bottom);
        ImageView imageView = (ImageView) findViewById(R.id.iv_faq);
        this.g0 = imageView;
        imageView.setImageResource(R.drawable.ic_faq_whatsapp);
        this.g0.setVisibility(0);
        this.g0.setOnClickListener(new a());
        getTheme().resolveAttribute(com.transsion.audio.R.attr.foot_bar_background, new TypedValue(), true);
        this.R.setVisibility(0);
        V0(false);
        this.U.setVisibility(0);
        this.S.setVisibility(0);
        this.T.setVisibility(0);
        this.S.setImageResource(R.drawable.ic_download_manager);
        this.T.setImageResource(R.drawable.ic_whatsapp_simple);
        ((LinearLayout.LayoutParams) this.T.getLayoutParams()).setMarginEnd(0);
        this.U.setText(R.string.whatsapp);
        this.R.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.I0(view);
            }
        });
        this.S.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.J0(view);
            }
        });
        this.T.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.K0(view);
            }
        });
        this.V.setOnClickListener(new b());
    }

    public void I0(View view) {
        if (!this.Q.F()) {
            p06.d0("dl_wa_back");
            onBackPressed();
        } else {
            this.Q.f0(false);
            this.Q.n(this.O.getCurrentItem());
            p06.d0("dl_wa_content_mul_close");
        }
    }

    public static void N0(DialogInterface dialogInterface) {
    }

    public void R0(boolean z) {
        this.S.setVisibility(z ? 8 : 0);
        this.T.setVisibility(z ? 8 : 0);
        this.g0.setVisibility(z ? 8 : 0);
        this.V.setVisibility(z ? 0 : 8);
        V0(z);
        P0(z);
        Q0(!z);
        O0(z, 0, false);
    }

    private void T0() {
        C0();
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(this);
        View viewInflate = LayoutInflater.from(this).inflate(com.transsion.playercommon.R.layout.dialog_permission_remind, (ViewGroup) null, false);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.title)).setText(com.transsion.playercommon.R.string.whats_app_permission_content);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.tv2)).setText(com.transsion.playercommon.R.string.whats_app_permission_notice);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.description)).setText(com.transsion.playercommon.R.string.whats_app_permission_guide);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.content)).setText(com.transsion.playercommon.R.string.whats_app_permission_explanation);
        aVar.E(viewInflate);
        aVar.m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.L0(dialogInterface, i);
            }
        });
        aVar.f(false);
        aVar.u(com.transsion.playercommon.R.string.permission_go, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.M0(dialogInterface, i);
            }
        });
        com.transsion.widgetslib.dialog.d dVarA = aVar.a();
        this.d0 = dVarA;
        dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                WhatsAppSaveActivity.N0(dialogInterface);
            }
        });
        if (this.d0.isShowing()) {
            return;
        }
        this.d0.show();
        hb0.markDirect("dl_wa_popup_mediafile_show");
        p06.f0(null, "popup_mediafile2", 9324L);
    }

    private void V0(boolean z) {
        View view = this.R;
        if (view instanceof TextView) {
            ((TextView) view).setText(z ? com.transsion.playercommon.R.string.os_close : com.transsion.playercommon.R.string.os_back);
            this.R.setContentDescription(getString(z ? com.transsion.playercommon.R.string.talkback_close : com.transsion.playercommon.R.string.talkback_back));
        }
    }

    private void initView() {
        this.Z = findViewById(R.id.fl_all_content);
        this.O = (CustomViewPager) findViewById(R.id.cvp_content);
        CustomTabLayout customTabLayout = (CustomTabLayout) findViewById(R.id.tab_layout);
        this.N = customTabLayout;
        customTabLayout.setupWithViewPager(this.O);
        this.N.isFirstLevelTab(true);
        this.N.setTabMode(1);
        this.N.setOnTabSelectedListener((CustomTabLayout.OnTabSelectedListener) new c());
        ArrayList arrayList = new ArrayList();
        this.b0 = arrayList;
        arrayList.add(WhatsAppViewFragment.y0(0));
        this.b0.add(WhatsAppViewFragment.y0(1));
        this.b0.add(WhatsAppViewFragment.y0(2));
        this.a0 = getResources().getStringArray(R.array.whatsapp_tabs);
        RtlPageAdapter rtlPageAdapter = new RtlPageAdapter(getSupportFragmentManager(), this.b0, this.a0);
        this.P = rtlPageAdapter;
        this.O.setAdapter(rtlPageAdapter);
        this.O.setOffscreenPageLimit(this.a0.length);
        WhatsappViewModel whatsappViewModel = (WhatsappViewModel) new ViewModelProvider(this).get(WhatsappViewModel.class);
        this.Q = whatsappViewModel;
        whatsappViewModel.Y(this, new d());
        this.Q.X(this, new e());
        this.Q.T(this, new f());
    }

    public final void D0(boolean z) {
        if (!z && this.f0 == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.activity_empty_view)).inflate();
            this.f0 = viewInflate;
            ((ImageView) viewInflate.findViewById(R.id.lottie_no_videos_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
            TextView textView = (TextView) this.f0.findViewById(R.id.text_no_videos);
            TextView textView2 = (TextView) this.f0.findViewById(R.id.add_video_tv);
            textView2.setVisibility(0);
            textView2.setText(R.string.link_wa);
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.H0(view);
                }
            });
            textView.setText(R.string.file_empty);
        }
        this.Y.setVisibility(z ? 0 : 8);
        this.O.setVisibility(z ? 0 : 8);
        View view = this.f0;
        if (view != null) {
            view.setVisibility(z ? 8 : 0);
        }
    }

    public final void E0(boolean z) {
        this.Y.setVisibility(z ? 0 : 8);
        View view = this.f0;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        this.T.setVisibility(z ? 0 : 8);
        this.S.setVisibility(z ? 0 : 8);
        this.Z.setVisibility(z ? 0 : 8);
    }

    public final void F0() {
        Bundle extras = getIntent() != null ? getIntent().getExtras() : null;
        if (extras != null) {
            this.c0 = extras.getBoolean("from");
        }
    }

    public final void H0(View view) {
        hb0.markTrackSingle("dl_wa_connect_cl", "from", 0);
        if (raa.l(this)) {
            return;
        }
        ToastUtils.s(R.string.whats_app_not_installed);
    }

    public final void J0(View view) {
        f5.c(new Intent(this, (Class<?>) WhatsAppDownManagerActivity.class), this);
    }

    public final void K0(View view) {
        hb0.markTrackSingle("dl_wa_connect_cl", "from", 1);
        if (raa.l(this)) {
            return;
        }
        ToastUtils.s(R.string.whats_app_not_installed);
    }

    public final void L0(DialogInterface dialogInterface, int i) {
        hb0.markDirect("dl_wa_popup_mediafile_cancel");
        p06.f0(null, "popup_mediafile2_n", 9324L);
        onBackPressed();
    }

    public final void M0(DialogInterface dialogInterface, int i) {
        hb0.markDirect("dl_wa_popup_mediafile_go");
        ikc.g(this, false);
    }

    public void O0(boolean z, int i, boolean z2) {
        this.V.setChecked(z2);
        if (!z) {
            this.U.setText(R.string.whatsapp);
        } else if (i == 0) {
            this.U.setText(getString(com.transsion.magicvideo.R.string.none_select));
        } else {
            this.U.setText(getString(i > 1 ? com.transsion.magicvideo.R.string.items : com.transsion.magicvideo.R.string.item, Integer.valueOf(i)));
        }
    }

    public final void P0(boolean z) {
        if (this.W == null) {
            FootOperationBar footOperationBar = (FootOperationBar) ((ViewStub) findViewById(R.id.bottom_action_bar)).inflate();
            this.W = footOperationBar;
            footOperationBar.setOnFootOptBarClickListener(this);
            this.W.changeItems(new int[]{R.drawable.ic_download_manager}, new int[]{R.string.download});
            this.W.setOnFootOptBarClickListener(new FootOperationBar.n() {
                @Override
                public final void onItemClick(int i) {
                    this.b.onItemClick(i);
                }
            });
        }
        if (z) {
            this.W.openFootOperationBar();
        } else {
            this.W.closeFootOperationBar();
        }
        this.W.setVisibility(z ? 0 : 4);
    }

    public final void Q0(boolean z) {
        this.Y.setAlpha(z ? 1.0f : 0.6f);
        this.O.setCanScroll(z);
        this.Y.setChildClickable(z);
        this.O.setPadding(0, 0, 0, com.transsion.utils.a.d(this, z ? 10.0f : 60.0f));
    }

    public final void S0() {
        WhatsAppGuideDialog.f0(this);
    }

    public final void U0() {
        int currentItem = this.O.getCurrentItem();
        List listW = this.Q.w();
        if (listW != null) {
            this.Q.e0(this, listW, currentItem);
        }
        this.Q.f0(false);
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1002) {
            this.Q.R();
            return;
        }
        if (i != 20001 || i2 != -1) {
            if (ikc.b(this)) {
                return;
            }
            ToastUtils.s(R.string.error_auhtor);
            onBackPressed();
            return;
        }
        Uri data = intent.getData();
        if (!data.toString().contains(".Statuses")) {
            ToastUtils.s(R.string.error_auhtor);
            onBackPressed();
        } else {
            getContentResolver().takePersistableUriPermission(data, 3);
            C0();
            this.e0 = true;
            E0(true);
        }
    }

    @Override
    public void onBackPressed() {
        if (this.Q.F()) {
            this.Q.f0(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_whats_save);
        initView();
        G0();
        F0();
        boolean zB = ikc.b(this);
        E0(zB);
        if (zB) {
            return;
        }
        T0();
    }

    @Override
    public void onItemClick(int i) {
        WhatsappViewModel.b bVarX = this.Q.x();
        if (bVarX == null || bVarX.a <= 0) {
            ToastUtils.s(R.string.none_select);
        } else {
            U0();
        }
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.Q.v(this, false);
        if (this.e0) {
            S0();
            this.e0 = false;
        }
    }
}

package com.transsion.tools.fragments;

import android.content.DialogInterface;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.WindowInfoViewModel;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.tools.R;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;
import defpackage.hb0;
import defpackage.oc2;
import defpackage.v34;
import defpackage.w6c;
import defpackage.woc;

public class LockScreenPlayerPreviewFragment extends BaseFragment implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    public MainViewModel l;
    public Switch m;
    public String n;
    public ImageView o;
    public WindowInfoViewModel p;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            LockScreenPlayerPreviewFragment.this.m.setChecked(false);
            hb0.markTrackSingle("setup_setuppage_locmusic_pop_cl", hb0.KEY_NAME_BTN, "cancel");
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            v34.i();
            ((BaseFragment) LockScreenPlayerPreviewFragment.this).mActivity.callAlertWindowPermission(false);
            hb0.markTrackSingle("setup_setuppage_locmusic_pop_cl", hb0.KEY_NAME_BTN, "go");
        }
    }

    public void T(View view) {
        this.mActivity.onBackPressed();
    }

    private void W() {
        hb0.markDirect("setup_setuppage_locmusic_pop");
        new d.a(this.mContext).A(R.string.setting_overlay_screen_title).j(R.string.setting_overlay_screen_message).u(R.string.setting_overlay_screen_ok, new b()).m(R.string.cancel, new a()).f(false).a().show();
    }

    public void S(View view) {
        TextView textView = (TextView) view.findViewById(com.transsion.playercommon.R.id.title_bar_title);
        view.findViewById(com.transsion.playercommon.R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.T(view2);
            }
        });
        textView.setText(getResources().getString(com.transsion.playercommon.R.string.setting_lock_screen_player));
    }

    public void U(String str) {
        this.n = str;
    }

    public final synchronized void V(boolean z) {
        ImageView imageView = this.o;
        if (imageView != null) {
            imageView.setAlpha(z ? 1.0f : 0.4f);
        }
    }

    public void X(boolean z) {
        if (!Settings.canDrawOverlays(this.mActivity) && z) {
            W();
            return;
        }
        this.l.i.setValue(Boolean.valueOf(z));
        w6c.r(this.mContext, "show_lock_screen_player_mode", z);
        if (MainApp.q != z && z) {
            ToastUtils.s(R.string.setting_lock_screen_player_toast);
        }
        hb0.markTrackSingle("setup_setuppage_locmusic_switch", ClientABTestDTOKt.SWITCH, z ? "on" : "off");
        MainApp.q = z;
        V(z);
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.getId() == R.id.switch_for_lock_screen_player) {
            X(z);
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.ll_lock_screen_setting) {
            Switch r1 = this.m;
            r1.setChecked(!r1.isChecked());
        }
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        super.onFinishRequestPermission(i, z);
        if (i == 1234) {
            this.m.setChecked(Settings.canDrawOverlays(this.mActivity));
            V(Settings.canDrawOverlays(this.mActivity));
            MainApp.q = Settings.canDrawOverlays(this.mActivity);
            this.l.i.setValue(Boolean.valueOf(MainApp.q));
            if (Settings.canDrawOverlays(this.mActivity)) {
                hb0.markTrackSingle("setup_setuppage_locmusic_switch", ClientABTestDTOKt.SWITCH, "on");
            }
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_lock_screen_preview;
    }

    @Override
    public void onResume() {
        super.onResume();
        if (Settings.canDrawOverlays(getApplicationContext())) {
            return;
        }
        MainApp.q = false;
        if (this.m.isChecked()) {
            this.m.setChecked(MainApp.q);
            V(MainApp.q);
            this.l.i.setValue(Boolean.valueOf(MainApp.q));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        S(view);
        view.findViewById(R.id.ll_lock_screen_setting).setOnClickListener(this);
        this.l = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.p = (WindowInfoViewModel) getViewModelByActivity(WindowInfoViewModel.class);
        this.m = (Switch) view.findViewById(R.id.switch_for_lock_screen_player);
        if (!Settings.canDrawOverlays(getApplicationContext())) {
            MainApp.q = false;
        }
        this.m.setChecked(MainApp.q);
        this.m.setOnCheckedChangeListener(this);
        this.o = (ImageView) view.findViewById(R.id.iv_preview);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.fl_skin);
        woc wocVar = (woc) this.p.a.getValue();
        if (wocVar != null) {
            if (wocVar.b()) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, oc2.a(getContext(), 328.68f));
                layoutParams.setMargins(0, oc2.a(getContext(), 14.0f), 0, 0);
                frameLayout.setLayoutParams(layoutParams);
                this.o.setImageResource(com.transsion.audio.R.drawable.bg_lockscreen_guide_port);
            } else if (wocVar.c()) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, oc2.a(getContext(), 287.18f));
                layoutParams2.setMargins(0, oc2.a(getContext(), 22.0f), 0, 0);
                frameLayout.setLayoutParams(layoutParams2);
                this.o.setImageResource(com.transsion.audio.R.drawable.bg_lockscreen_guide_land);
            }
        }
        V(MainApp.q);
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
        hb0.markTrackSingle("setup_setuppage_locmusic_show", "from", this.n);
    }
}

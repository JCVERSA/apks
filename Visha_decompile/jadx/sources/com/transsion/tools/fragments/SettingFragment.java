package com.transsion.tools.fragments;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.icu.text.DecimalFormat;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.p004lifecycle.Observer;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.livecaption.constant.ICode;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.cloudctrlconfigrequest.CloudCtrlConfigHelper;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.widgets.CustomOsSeekbar;
import com.transsion.tools.activities.SettingActivity;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BadgeView;
import com.transsion.widgets.InterceptLinearLayout;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import defpackage.a64;
import defpackage.ab9;
import defpackage.cz5;
import defpackage.dz5;
import defpackage.ef9;
import defpackage.fec;
import defpackage.h06;
import defpackage.h27;
import defpackage.hb0;
import defpackage.p06;
import defpackage.pp3;
import defpackage.q06;
import defpackage.qqb;
import defpackage.rt6;
import defpackage.sv3;
import defpackage.t08;
import defpackage.uv3;
import defpackage.vdb;
import defpackage.w6c;
import defpackage.ydc;
import defpackage.yx2;
import defpackage.z06;
import defpackage.zdc;
import defpackage.zz0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

@Route(path = VishaRouterTable.PATH_SERVICE_TOOLS_SETTINGFRAGEMENT)
public class SettingFragment extends BaseFragment implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    public static final String SHAKE_ITEM_AUTO_PLAY = "autoPlay";
    public static final String SHAKE_ITEM_HISTORY = "history";
    public static final String SHAKE_ITEM_LISTEN = "listen";
    public static final String SHAKE_ITEM_MUSIC_FADE = "fade";
    public static final String SHAKE_KEY_SOURCE = "source";
    private static final String TAG = "SettingFragment";

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowBreakpointPlay;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowDownloadWithMobileSwitch;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowHistorySwitch;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowPip;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowPlayBackSwitch;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowPlayWithMobileSwitch;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowStreamPlay;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mAllowsNewAudioNotification;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mBiometric;
    private int mBreakpointMode;
    private BadgeView mBvCount;
    private OverBoundNestedScrollView mContentSv;
    private com.transsion.widgetslib.dialog.d mDownSetPromptDialog;
    private TextView mDownloadPathTv;
    private long mFirstClickTime;
    Handler mHandler;
    private InterceptLinearLayout mIllFade;
    private String mKeySource;
    ViewGroup mLlAllowPlayBackGround;
    ViewGroup mLlAllowStreamPlay;
    ViewGroup mLlAudioFocusLayout;
    ViewGroup mLlBiometricUnlocking;
    ViewGroup mLlLockScreen;
    ViewGroup mLlLyricSetting;
    ViewGroup mLlMusicFadeLayout;
    ViewGroup mLlMusicSettings;
    ViewGroup mLlMusicVideoLayout;
    ViewGroup mLlNewAudioNotificationSetting;
    ViewGroup mLlPrivacyBrowse;
    ViewGroup mLlShowHistoryBackGround;
    ViewGroup mLlShowPrivateRoom;
    private TextView mLockModeTv;
    private String[] mLyricMode;
    private TextView mLyricModeTv;
    private MainViewModel mMainViewModel;
    private volatile boolean mPlayBackChecked;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mPrivacyBrowse;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private Switch mPrivateRoom;
    private CustomOsSeekbar mSbFadeTime;
    private BadgeView mSettingVideoRedBadge;
    private boolean mShouldNotifyOrientationChange;
    private TextView mSimultaneousDownloadStateTv;
    private String[] mSimultaneousMode;
    Switch mSwitchForAudioFocus;
    private Switch mSwitchForFade;
    Switch mSwitchForMusicVideo;
    private TextView mTvFadeValue;
    private String[] mVideoDirectionMode;
    private TextView mVideoPlayLandPortraitModeTv;
    public volatile int mCount = 0;
    ShakeRunnable mRunnable = new ShakeRunnable();
    protected final Observer<Boolean> mBottomBarShowStateObserver = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.lambda$new$0((Boolean) obj);
        }
    };
    DecimalFormat mDecimalFormat = new DecimalFormat("######0.00");

    public class ShakeRunnable implements Runnable {
        private View shakeView;

        @Override
        public void run() {
            if (this.shakeView == null) {
                return;
            }
            if (SettingFragment.this.mCount >= 5) {
                this.shakeView.setBackground(SettingFragment.this.getContext().getDrawable(R.drawable.settings_menu_item_bg));
                return;
            }
            SettingFragment settingFragment = SettingFragment.this;
            settingFragment.mPlayBackChecked = !settingFragment.mPlayBackChecked;
            this.shakeView.setBackground(SettingFragment.this.getContext().getDrawable(SettingFragment.this.mPlayBackChecked ? R.drawable.settings_menu_item_press : R.drawable.os_press_primary_bg_normal));
            SettingFragment.this.mCount++;
            SettingFragment.this.showListen();
        }

        public void setShakeView(View view) {
            this.shakeView = view;
        }

        private ShakeRunnable() {
        }
    }

    public class a implements sv3.b {
        public final Activity a;

        public a(Activity activity) {
            this.a = activity;
        }

        @Override
        public void a(int i, int i2) {
        }

        @Override
        public void b(int i, int i2) {
            SettingFragment.this.handleAuthenticationResult(this.a, i, false);
        }

        @Override
        public void c(int i, int i2) {
            SettingFragment.this.handleAuthenticationResult(this.a, i, true);
        }

        @Override
        public void d(int i, int i2) {
            if (i == 22) {
                uv3.g(true);
                SettingFragment.this.mBiometric.setChecked(false);
                uv3.g(false);
            } else if (i == 11) {
                uv3.g(true);
                SettingFragment.this.mBiometric.setChecked(true);
                uv3.g(false);
            }
        }
    }

    public class b implements Observer {
        public b() {
        }

        @Override
        public void onChanged(Boolean bool) {
            SettingFragment.this.updateLockScreenMode(bool.booleanValue());
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            SettingFragment.this.mAllowStreamPlay.setChecked(false);
            z06.c(3);
        }
    }

    public class d implements DialogInterface.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            zdc.h = true;
            w6c.r(((BaseFragment) SettingFragment.this).mContext, "allow_stream_auto_play", true);
            z06.c(1);
        }
    }

    public class e implements DialogInterface.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            SettingFragment.this.mAllowPlayWithMobileSwitch.setChecked(false);
        }
    }

    public class f implements DialogInterface.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            MainApp.j = true;
            w6c.r(((BaseFragment) SettingFragment.this).mContext, "allow_mobile_data_play", true);
        }
    }

    public class g implements PrivateRoomWarningFragment.a {
        public g() {
        }

        @Override
        public void onCancel() {
            zdc.l = false;
            SettingFragment.this.switchShowPrivateRoom();
        }

        @Override
        public void onClose() {
            zdc.l = false;
            w6c.r(((BaseFragment) SettingFragment.this).mContext, "show_private_room", false);
            h27.c().e(1119, new Object[0]);
        }
    }

    public class h implements DialogInterface.OnClickListener {
        public h() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            hb0.markTrackSingle("setup_setuppage_autolyric_s", ICode.CALL.CALL_KEY_STATE, Integer.valueOf(i + 1));
            MainApp.v(i);
            w6c.t(SettingFragment.this.getContext(), "show_lyric_search_mode", i);
            SettingFragment.this.updateLyricMode(i);
            dialogInterface.dismiss();
        }
    }

    public class i implements DialogInterface.OnClickListener {
        public i() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            int i2 = i + 1;
            MainApp.x(i2);
            w6c.t(SettingFragment.this.getContext(), "simultaneous_download_mode", i2);
            SettingFragment.this.updateSimultaneousSetting(i2);
            dialogInterface.dismiss();
            p06.U(i2);
        }
    }

    public class j implements CustomOsSeekbar.f {
        public j() {
        }

        @Override
        public void onProgressChanged(CustomOsSeekbar customOsSeekbar, int i, float f, boolean z) {
            SettingFragment.this.setFadeValue(i);
            rt6.b(((BaseFragment) SettingFragment.this).mContext).e(i);
            hb0.markKV("setup_setuppage_crossfade_time", new hb0.a("time", Float.valueOf(i / 1000.0f)));
        }

        @Override
        public void onStartTrackingTouch(CustomOsSeekbar customOsSeekbar) {
        }

        @Override
        public void onStopTrackingTouch(CustomOsSeekbar customOsSeekbar) {
            rt6.b(((BaseFragment) SettingFragment.this).mContext).d(((BaseFragment) SettingFragment.this).mContext);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addBottomBarShowStateObserver() {
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.mMainViewModel = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.mBottomBarShowStateObserver);
        notifyVideoBarShowStateChange(((Boolean) this.mMainViewModel.g.getValue()).booleanValue());
    }

    private void applyRootLinearLayoutPadding() {
        View childAt;
        OverBoundNestedScrollView overBoundNestedScrollView = this.mContentSv;
        if (overBoundNestedScrollView == null || (childAt = overBoundNestedScrollView.getChildAt(0)) == null) {
            return;
        }
        int iD = com.transsion.utils.a.d(this.mContext, 7.0f);
        childAt.setPadding(iD, childAt.getPaddingTop(), iD, childAt.getPaddingBottom());
    }

    private int getBackgroundOffsetPx() {
        if (getActivity() instanceof SettingActivity) {
            return 0;
        }
        return (int) this.mContext.getResources().getDimension(com.transsion.sniffer_load.R.dimen.video_main_activity_fragment_top_padding);
    }

    public void handleAuthenticationResult(Context context, int i2, boolean z) {
        int i3;
        if (context == null) {
            return;
        }
        int i4 = 0;
        if (z) {
            boolean z2 = !uv3.c(context);
            uv3.h(context, "fingerprintEnabled", z2);
            uv3.g(true);
            this.mBiometric.setChecked(z2);
            uv3.g(false);
        }
        if (i2 != 22) {
            if (i2 == 11) {
                i3 = z ? com.transsion.tools.R.string.biometric_lock_success : com.transsion.tools.R.string.biometric_lock_failure;
            }
            ToastUtils.s(i4);
            q06.a("vd_setting_hide_unlock_enabled", "enabled", Boolean.valueOf(uv3.c(context)));
        }
        i3 = z ? com.transsion.tools.R.string.biometric_unlock_success : com.transsion.tools.R.string.biometric_unlock_failure;
        i4 = i3;
        ToastUtils.s(i4);
        q06.a("vd_setting_hide_unlock_enabled", "enabled", Boolean.valueOf(uv3.c(context)));
    }

    private void initFadeSetting(View view) {
        this.mLlMusicFadeLayout = (ViewGroup) view.findViewById(R.id.ll_music_fade_layout);
        this.mIllFade = (InterceptLinearLayout) view.findViewById(R.id.ill_fade);
        if (!pp3.B) {
            this.mLlMusicFadeLayout.setVisibility(8);
            this.mIllFade.setVisibility(8);
            return;
        }
        this.mLlMusicFadeLayout.setOnClickListener(this);
        this.mSwitchForFade = (Switch) view.findViewById(R.id.switch_for_fade);
        this.mTvFadeValue = (TextView) view.findViewById(R.id.tv_fade_value);
        this.mSbFadeTime = (CustomOsSeekbar) view.findViewById(R.id.sb_fade_time);
        int iA = rt6.b(this.mContext).a();
        this.mSbFadeTime.setProgress(iA);
        this.mSwitchForFade.setChecked(rt6.b(this.mContext).c());
        setFadeClickable(rt6.b(this.mContext).c());
        setFadeValue(iA);
        this.mSbFadeTime.setOnProgressChangedListener(new j());
        this.mSwitchForFade.setOnCheckedChangeListener(new ef9(this));
    }

    private void initList() {
        updateSimultaneousSetting(MainApp.e);
        this.mDownloadPathTv.setText(yx2.e);
        p06.a(getArguments().getString("from"), MainApp.h, MainApp.e, this.mBreakpointMode, MainApp.j);
    }

    private void initLyricMode() {
        if (this.mLyricMode == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.mContext.getResources().getString(R.string.lyric_setting_11));
            arrayList.add(this.mContext.getResources().getString(R.string.lyric_setting_2));
            arrayList.add(this.mContext.getResources().getString(R.string.lyric_setting_3));
            this.mLyricMode = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
    }

    private void initTitleBar(View view) {
        View viewInflate = ((ViewStub) view.findViewById(R.id.title_bar)).inflate();
        TextView textView = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        viewInflate.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.lambda$initTitleBar$2(view2);
            }
        });
        if (getContext() != null) {
            textView.setText(getContext().getResources().getString(R.string.setting));
        }
    }

    private void initVideoDirectionSettingData() {
        if (this.mVideoDirectionMode == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.mContext.getResources().getString(R.string.video_playback_follow_system_title));
            arrayList.add(this.mContext.getResources().getString(R.string.video_playback_follow_self_title));
            this.mVideoDirectionMode = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
    }

    private void intDownloadFileNum() {
        if (this.mSimultaneousMode == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.mContext.getResources().getString(R.string.go_download_one_file_new, 1));
            Resources resources = this.mContext.getResources();
            int i2 = R.string.go_download_files;
            arrayList.add(resources.getString(i2, 2));
            arrayList.add(this.mContext.getResources().getString(i2, 3));
            this.mSimultaneousMode = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
    }

    private boolean isEmbeddedSettingPage() {
        return !(getActivity() instanceof SettingActivity);
    }

    public void lambda$initTitleBar$2(View view) {
        this.mActivity.onBackPressed();
    }

    public void lambda$new$0(Boolean bool) {
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    public void lambda$showMobilePlayDialog$3(DialogInterface dialogInterface) {
        this.mAllowPlayWithMobileSwitch.setChecked(false);
    }

    public void lambda$showStreamPlayDialog$1(DialogInterface dialogInterface) {
        this.mAllowStreamPlay.setChecked(false);
    }

    public void lambda$showVideoLandscapePortraitSettingDialog$4(com.transsion.widgetslib.dialog.d dVar, int i2) {
        updateVideoDirectionMode(i2);
        if (dVar.isShowing()) {
            dVar.dismiss();
        }
    }

    public static SettingFragment newInstance(Bundle bundle) {
        SettingFragment settingFragment = new SettingFragment();
        settingFragment.setArguments(bundle);
        return settingFragment;
    }

    private void onOpenOrCloseBiometric(boolean z) {
        if (z) {
            fingerPrintMethod(11, com.transsion.tools.R.string.disable_biometric_unlock, com.transsion.tools.R.string.prompt_fingerprint_authentication, 0, 0);
        } else {
            fingerPrintMethod(22, com.transsion.tools.R.string.enable_biometric_unlock, com.transsion.tools.R.string.prompt_fingerprint_authentication, 0, 0);
        }
    }

    private void onShowPrivateRoomSwitchCheckedChanged(boolean z) {
        if (!z) {
            PrivateRoomWarningFragment.G().H(this.mContext, "show private Room", new g());
            return;
        }
        zdc.l = true;
        w6c.r(this.mContext, "show_private_room", true);
        h27.c().e(1119, new Object[0]);
    }

    private void setFadeClickable(boolean z) {
        this.mIllFade.setChildClickable(z);
        this.mIllFade.setAlpha(z ? 1.0f : 0.5f);
    }

    public void setFadeValue(int i2) {
        if (getContext() != null) {
            if (i2 < 1000) {
                this.mTvFadeValue.setText(getResources().getString(R.string.music_fade_time) + i2 + "ms");
                return;
            }
            this.mTvFadeValue.setText(getResources().getString(R.string.music_fade_time) + this.mDecimalFormat.format(i2 / 1000.0f) + "s");
        }
    }

    private void settingVideoDirection(View view) {
        initVideoDirectionSettingData();
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.ll_allow_landscape_portrait_screen);
        this.mSettingVideoRedBadge = (BadgeView) view.findViewById(R.id.setting_iv_theme_menu_red_point);
        this.mVideoPlayLandPortraitModeTv = (TextView) view.findViewById(R.id.setting_tv_land_portrait_setting_state);
        if (ydc.e() || qqb.b(this.mContext)) {
            this.mSettingVideoRedBadge.setVisibility(8);
        }
        this.mVideoPlayLandPortraitModeTv.setText(this.mVideoDirectionMode[qqb.a(this.mContext)]);
        viewGroup.setOnClickListener(this);
    }

    public void showListen() {
        if (this.mKeySource == null) {
            return;
        }
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.removeCallbacks(this.mRunnable);
        if (SHAKE_ITEM_LISTEN.equals(this.mKeySource)) {
            this.mRunnable.setShakeView(this.mLlAllowPlayBackGround);
            this.mHandler.postDelayed(this.mRunnable, 250L);
            return;
        }
        if (SHAKE_ITEM_HISTORY.equals(this.mKeySource)) {
            this.mRunnable.setShakeView(this.mLlShowHistoryBackGround);
            this.mHandler.postDelayed(this.mRunnable, 250L);
        } else if (SHAKE_ITEM_AUTO_PLAY.equals(this.mKeySource)) {
            this.mRunnable.setShakeView(this.mLlAllowStreamPlay);
            this.mHandler.postDelayed(this.mRunnable, 250L);
        } else if (SHAKE_ITEM_MUSIC_FADE.equals(this.mKeySource)) {
            this.mRunnable.setShakeView(this.mLlMusicFadeLayout);
            this.mHandler.postDelayed(this.mRunnable, 250L);
        }
    }

    private void showLockScreenSettingFragment() {
        LockScreenPlayerPreviewFragment lockScreenPlayerPreviewFragment = (LockScreenPlayerPreviewFragment) new LockScreenPlayerPreviewFragment().setBaseActivity(this.mActivity);
        lockScreenPlayerPreviewFragment.U("setup");
        lockScreenPlayerPreviewFragment.setNeedBg(true);
        a64.n(lockScreenPlayerPreviewFragment, true, true);
        hb0.markDirect("setup_setuppage_locmusic_cl");
    }

    private void showLyricSettingDialog() {
        hb0.markDirect("setup_setuppage_autolyric_cl");
        new com.transsion.widgetslib.dialog.d.a(this.mContext).A(R.string.lyric_setting_title).z(this.mLyricMode, MainApp.u, new h()).m(R.string.cancel, null).F();
    }

    private void showMobilePlayDialog() {
        new com.transsion.widgetslib.dialog.d.a(this.mContext).j(R.string.setting_allow_play_with_mobile_data_second_confirm).u(R.string.talkback_on, new f()).m(R.string.cancel, new e()).r(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                this.b.lambda$showMobilePlayDialog$3(dialogInterface);
            }
        }).F();
    }

    public static boolean showNewAudioSetting(Context context) {
        if (pp3.x) {
            return CloudCtrlConfigHelper.b().c(3);
        }
        return false;
    }

    private void showStreamPlayDialog() {
        new com.transsion.widgetslib.dialog.d.a(this.mContext).j(R.string.setting_auto_play_stream_dialog_message).u(R.string.talkback_on, new d()).m(R.string.cancel, new c()).r(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                this.b.lambda$showStreamPlayDialog$1(dialogInterface);
            }
        }).F();
    }

    private void showVideoLandscapePortraitSettingDialog() {
        hb0.markDirect("setup_setuppage_orisetting_cl");
        ab9 ab9Var = new ab9(this.mContext, this.mVideoDirectionMode);
        final com.transsion.widgetslib.dialog.d dVarF = new com.transsion.widgetslib.dialog.d.a(this.mContext).A(R.string.video_playback_orientation_title).b(ab9Var, null).m(R.string.cancel, null).F();
        ab9Var.setOnItemClickListener(new ab9.b() {
            @Override
            public final void onItemClick(int i2) {
                this.a.lambda$showVideoLandscapePortraitSettingDialog$4(dVarF, i2);
            }
        });
    }

    private void switchBreakpointPlay() {
        MainApp.k = !MainApp.k;
        w6c.r(this.mContext, "break_point_mode_switch", MainApp.k);
        p06.x(MainApp.k ? "1" : "3");
        p06.o0("setup_setuppage_breakpoint_switch", ClientABTestDTOKt.SWITCH, MainApp.k ? "on" : "off");
    }

    private void switchNewAudioNotification() {
        MainApp.g = !MainApp.g;
        w6c.r(this.mContext, "audio_new_find_notification", MainApp.g);
        if (!MainApp.g || t08.i(this.mContext)) {
            return;
        }
        t08.k(this.mContext);
    }

    private void switchPrivacyBrowse() {
        this.mPrivacyBrowse.setChecked(!MainApp.p);
    }

    private void switchShowHistory() {
        Switch r1 = this.mAllowHistorySwitch;
        r1.setChecked(!r1.isChecked());
    }

    public void switchShowPrivateRoom() {
        zdc.l = !zdc.l;
        w6c.r(this.mContext, "show_private_room", zdc.l);
        this.mPrivateRoom.setChecked(zdc.l);
    }

    private void switchStreamPlay() {
        Switch r1 = this.mAllowStreamPlay;
        r1.setChecked(!r1.isChecked());
    }

    public void updateLockScreenMode(boolean z) {
        this.mLockModeTv.setText(z ? R.string.setting_lock_screen_player_open : R.string.timer_close);
    }

    public void updateLyricMode(int i2) {
        this.mLyricModeTv.setText(this.mLyricMode[i2]);
    }

    private void updateVideoDirectionMode(int i2) {
        String[] strArr = this.mVideoDirectionMode;
        if (strArr == null) {
            return;
        }
        this.mVideoPlayLandPortraitModeTv.setText(strArr[i2]);
        hb0.markTrackSingle("setup_setuppage_orisetting_s", "orisetting", i2 == 0 ? "system" : "video");
        this.mShouldNotifyOrientationChange = true;
    }

    public void fingerPrintMethod(int i2, int i3, int i4, int i5, int i6) {
        Activity activity = (Activity) new WeakReference(this.mActivity).get();
        if (activity != null) {
            new sv3(activity, new a(activity), i2, i6).g(activity, i3, i4, i5);
        }
    }

    public boolean ingoreClickEvent() {
        return Math.abs(System.currentTimeMillis() - this.mFirstClickTime) < 500;
    }

    public void notifyVideoBarShowStateChange(boolean z) {
        int iD;
        Log.d(TAG, "notifyVideoBarShowStateChange :" + z);
        OverBoundNestedScrollView overBoundNestedScrollView = this.mContentSv;
        if (overBoundNestedScrollView == null || overBoundNestedScrollView.getChildCount() == 0) {
            return;
        }
        View childAt = this.mContentSv.getChildAt(0);
        int iD2 = com.transsion.utils.a.d(this.mContext, 52.0f);
        if (z && isEmbeddedSettingPage()) {
            iD = com.transsion.utils.a.d(this.mContext, isFoldScreen() ? 72.0f : 60.0f);
        } else {
            iD = 0;
        }
        childAt.setPadding(childAt.getPaddingStart(), childAt.getPaddingTop(), childAt.getPaddingEnd(), iD2 + iD);
        this.mContentSv.setPadding(0, 0, 0, 0);
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int id = compoundButton.getId();
        if (id == R.id.switch_for_download) {
            switchMobileData();
            return;
        }
        if (id == R.id.switch_for_playback) {
            switchPlayBack();
            return;
        }
        if (id == R.id.switch_for_pip) {
            switchPipPlay();
            return;
        }
        if (id == R.id.switch_for_mobile_play) {
            if (z) {
                showMobilePlayDialog();
                return;
            } else {
                MainApp.j = false;
                w6c.r(this.mContext, "allow_mobile_data_play", false);
                return;
            }
        }
        if (id == R.id.switch_for_breakpoint) {
            switchBreakpointPlay();
            return;
        }
        if (id == R.id.switch_for_local_history) {
            MainApp.l = z;
            ((MainViewModel) getViewModelByActivity(MainViewModel.class)).h.setValue(Boolean.valueOf(z));
            w6c.r(this.mContext, "allow_show_history", z);
            hb0.markTrackSingle("setup_setuppage_historyhide_switch", ClientABTestDTOKt.SWITCH, z ? "on" : "off");
            MMKV.p().y("history_red_point_show", false);
            return;
        }
        if (id == R.id.switch_for_stream_play) {
            if (z) {
                showStreamPlayDialog();
                return;
            }
            z06.c(2);
            zdc.h = false;
            w6c.r(this.mContext, "allow_stream_auto_play", false);
            return;
        }
        if (id == R.id.switch_for_privacy_browse) {
            MainApp.p = z;
            w6c.r(this.mContext, "private_browsing", z);
            dz5.f(0, z ? 1 : 0);
            return;
        }
        if (id == R.id.switch_for_privateroom) {
            onShowPrivateRoomSwitchCheckedChanged(z);
            return;
        }
        if (id == R.id.switch_for_fade) {
            setFadeClickable(z);
            rt6.b(this.mContext).f(z);
            rt6.b(this.mContext).e(this.mSbFadeTime.getProgress());
            hb0.markKV("setup_setuppage_crossfade_time", new hb0.a("time", Float.valueOf(this.mSbFadeTime.getProgress() / 1000.0f)));
            rt6.b(this.mContext).d(this.mContext);
            hb0.markKV("setup_setuppage_crossfade_switch", new hb0.a(ClientABTestDTOKt.SWITCH, Integer.valueOf(z ? 1 : 0)));
            return;
        }
        if (id == R.id.switch_for_biometric) {
            if (uv3.e()) {
                return;
            }
            onOpenOrCloseBiometric(uv3.c(getContext()));
            return;
        }
        if (id == R.id.switch_for_new_audio_notification) {
            switchNewAudioNotification();
            this.mBvCount.setVisibility(8);
            w6c.r(getActivity(), "new_audio_already_check", true);
        } else if (id == R.id.switch_for_music_video) {
            MMKV.p().y("music_video", this.mSwitchForMusicVideo.isChecked());
            MMKV.p().y("mmkv_key_triggered_show_mv_switch", true);
        } else if (id == R.id.switch_for_audio_focus) {
            vdb.g(TAG, "click switch_for_audio_focus, value now: " + this.mSwitchForAudioFocus.isChecked());
            w6c.r(this.mContext, "audio_focus_allow_may_duck", this.mSwitchForAudioFocus.isChecked());
            VideoPlayManager.X().A1();
            MusicPlayManager.S().c1();
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        if (id == R.id.ll_simultaneous_downloads) {
            showSimultaneousSettingDialog();
            p06.f0(null, "setup_setuppage_max_cl", 9324L);
            return;
        }
        if (id == R.id.ll_allow_download_with_mobile) {
            Switch r3 = this.mAllowDownloadWithMobileSwitch;
            r3.setChecked(!r3.isChecked());
            return;
        }
        if (id == R.id.ll_allow_play_background_listen) {
            Switch r4 = this.mAllowPlayBackSwitch;
            r4.setChecked(!r4.isChecked());
            return;
        }
        if (id == R.id.ll_allow_auto_pip) {
            Switch r5 = this.mAllowPip;
            r5.setChecked(!r5.isChecked());
            return;
        }
        if (id == R.id.ll_allow_play_with_mobile) {
            switchPlayMobileData();
            return;
        }
        if (id == R.id.ll_break_point) {
            Switch r6 = this.mAllowBreakpointPlay;
            r6.setChecked(!r6.isChecked());
            return;
        }
        if (id == R.id.ll_allow_local_history) {
            switchShowHistory();
            return;
        }
        if (id == R.id.ll_allow_stream_auto_play) {
            switchStreamPlay();
            return;
        }
        if (id == R.id.ll_privacy_browse) {
            switchPrivacyBrowse();
            return;
        }
        if (id == R.id.ll_allow_show_privateroom) {
            switchShowPrivateRoom();
            return;
        }
        if (id == R.id.ll_lyric_setting) {
            showLyricSettingDialog();
            return;
        }
        if (id == R.id.ll_lock_screen_setting) {
            showLockScreenSettingFragment();
            return;
        }
        if (id == R.id.ll_music_fade_layout) {
            Switch r7 = this.mSwitchForFade;
            r7.setChecked(!r7.isChecked());
            return;
        }
        if (id == R.id.ll_biometric_unlocking) {
            onOpenOrCloseBiometric(uv3.c(getContext()));
            return;
        }
        if (id == R.id.ll_allow_landscape_portrait_screen) {
            if (!ydc.e() && !qqb.b(this.mContext)) {
                qqb.f(this.mContext, true);
                this.mSettingVideoRedBadge.setVisibility(8);
            }
            showVideoLandscapePortraitSettingDialog();
            return;
        }
        if (id == R.id.ll_new_audio_notification_setting) {
            Switch r8 = this.mAllowsNewAudioNotification;
            r8.setChecked(!r8.isChecked());
            return;
        }
        if (id == R.id.switch_for_new_audio_notification) {
            switchNewAudioNotification();
            this.mBvCount.setVisibility(8);
            w6c.r(getActivity(), "new_audio_already_check", true);
        } else if (id == R.id.ll_music_video_layout) {
            Switch r9 = this.mSwitchForMusicVideo;
            r9.setChecked(!r9.isChecked());
        } else if (id == R.id.ll_audio_focus_layout) {
            Switch r10 = this.mSwitchForAudioFocus;
            r10.setChecked(!r10.isChecked());
        }
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.transsion.widgetslib.dialog.d dVar = this.mDownSetPromptDialog;
        if (dVar != null) {
            dVar.g(configuration);
        }
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_download_setting, viewGroup, false);
    }

    @Override
    public void onDestroy() {
        MainViewModel mainViewModel;
        super.onDestroy();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (SHAKE_ITEM_HISTORY.equals(this.mKeySource) && (mainViewModel = this.mMainViewModel) != null) {
            mainViewModel.j.setValue(Boolean.FALSE);
        }
        MainViewModel mainViewModel2 = this.mMainViewModel;
        if (mainViewModel2 != null) {
            mainViewModel2.i.removeObservers(this.mActivity);
        }
        this.mSimultaneousMode = null;
        this.mLyricMode = null;
        this.mVideoDirectionMode = null;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        if (this.mShouldNotifyOrientationChange) {
            LiveEventBus.b().c("change_video_orientation", Boolean.TRUE);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (!pp3.x || t08.i(this.mContext)) {
            return;
        }
        this.mAllowsNewAudioNotification.setChecked(false);
        MainApp.g = false;
        w6c.r(this.mContext, "audio_new_find_notification", false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        String str;
        OverBoundNestedScrollView overBoundNestedScrollView;
        super.onViewCreated(view, bundle);
        if (getActivity() instanceof SettingActivity) {
            view.setBackground(null);
        } else {
            backgroundFollowBaseWindowByPx(view, getBackgroundOffsetPx());
        }
        initTitleBar(view);
        ((ViewGroup) view.findViewById(R.id.ll_break_point)).setOnClickListener(this);
        Switch r0 = (Switch) view.findViewById(R.id.switch_for_breakpoint);
        this.mAllowBreakpointPlay = r0;
        r0.setChecked(MainApp.k);
        this.mAllowBreakpointPlay.setOnCheckedChangeListener(new ef9(this));
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.ll_allow_play_with_mobile);
        viewGroup.setOnClickListener(this);
        settingVideoDirection(view);
        this.mAllowPlayWithMobileSwitch = (Switch) view.findViewById(R.id.switch_for_mobile_play);
        if (getActivity() != null) {
            viewGroup.setVisibility(pp3.y(getActivity()) ? 8 : 0);
        }
        this.mAllowPlayWithMobileSwitch.setChecked(MainApp.j);
        this.mAllowPlayWithMobileSwitch.setOnCheckedChangeListener(new ef9(this));
        ViewGroup viewGroup2 = (ViewGroup) view.findViewById(R.id.ll_allow_auto_pip);
        viewGroup2.setVisibility(pp3.i() ? 0 : 8);
        viewGroup2.setOnClickListener(this);
        Switch r1 = (Switch) view.findViewById(R.id.switch_for_pip);
        this.mAllowPip = r1;
        r1.setChecked(fec.a());
        this.mAllowPip.setOnCheckedChangeListener(new ef9(this));
        ViewGroup viewGroup3 = (ViewGroup) view.findViewById(R.id.ll_allow_play_background_listen);
        this.mLlAllowPlayBackGround = viewGroup3;
        viewGroup3.setOnClickListener(this);
        this.mLlAllowPlayBackGround.setVisibility(8);
        Switch r2 = (Switch) view.findViewById(R.id.switch_for_playback);
        this.mAllowPlayBackSwitch = r2;
        r2.setChecked(MMKV.p().e("ConfigIsBackPlay", false));
        this.mAllowPlayBackSwitch.setOnCheckedChangeListener(new ef9(this));
        ViewGroup viewGroup4 = (ViewGroup) view.findViewById(R.id.ll_allow_download_with_mobile);
        viewGroup4.setOnClickListener(this);
        Switch r3 = (Switch) view.findViewById(R.id.switch_for_download);
        this.mAllowDownloadWithMobileSwitch = r3;
        r3.setChecked(zz0.d() != MainApp.h);
        this.mAllowDownloadWithMobileSwitch.setOnCheckedChangeListener(new ef9(this));
        ViewGroup viewGroup5 = (ViewGroup) view.findViewById(R.id.ll_allow_local_history);
        this.mLlShowHistoryBackGround = viewGroup5;
        viewGroup5.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.onClick(view2);
            }
        });
        Switch r4 = (Switch) view.findViewById(R.id.switch_for_local_history);
        this.mAllowHistorySwitch = r4;
        r4.setChecked(MainApp.l);
        this.mAllowHistorySwitch.setOnCheckedChangeListener(this);
        ViewGroup viewGroup6 = (ViewGroup) view.findViewById(R.id.ll_allow_stream_auto_play);
        this.mLlAllowStreamPlay = viewGroup6;
        viewGroup6.setOnClickListener(this);
        Switch r5 = (Switch) view.findViewById(R.id.switch_for_stream_play);
        this.mAllowStreamPlay = r5;
        r5.setChecked(zdc.h);
        this.mAllowStreamPlay.setOnCheckedChangeListener(new ef9(this));
        this.mLlAllowStreamPlay.setVisibility(w6c.c(this.mContext, w6c.a, false) ? 0 : 8);
        ViewGroup viewGroup7 = (ViewGroup) view.findViewById(R.id.ll_privacy_browse);
        this.mLlPrivacyBrowse = viewGroup7;
        viewGroup7.setOnClickListener(this);
        Switch r6 = (Switch) view.findViewById(R.id.switch_for_privacy_browse);
        this.mPrivacyBrowse = r6;
        r6.setChecked(MainApp.p);
        this.mPrivacyBrowse.setOnCheckedChangeListener(new ef9(this));
        ViewGroup viewGroup8 = (ViewGroup) view.findViewById(R.id.ll_allow_show_privateroom);
        this.mLlShowPrivateRoom = viewGroup8;
        viewGroup8.setOnClickListener(this);
        Switch r7 = (Switch) view.findViewById(R.id.switch_for_privateroom);
        this.mPrivateRoom = r7;
        r7.setChecked(zdc.l);
        this.mPrivateRoom.setOnCheckedChangeListener(new ef9(this));
        Switch r8 = (Switch) view.findViewById(R.id.switch_for_biometric);
        this.mBiometric = r8;
        r8.setChecked(uv3.c(getContext()) && sv3.e(getContext()));
        this.mBiometric.setOnCheckedChangeListener(new ef9(this));
        ViewGroup viewGroup9 = (ViewGroup) view.findViewById(R.id.ll_biometric_unlocking);
        this.mLlBiometricUnlocking = viewGroup9;
        viewGroup9.setOnClickListener(this);
        this.mLlMusicVideoLayout = (ViewGroup) view.findViewById(R.id.ll_music_video_layout);
        this.mSwitchForMusicVideo = (Switch) view.findViewById(R.id.switch_for_music_video);
        if (pp3.y) {
            this.mLlMusicVideoLayout.setVisibility(0);
            this.mLlMusicVideoLayout.setOnClickListener(this);
            this.mSwitchForMusicVideo.setOnCheckedChangeListener(new ef9(this));
            this.mSwitchForMusicVideo.setChecked(MMKV.p().e("music_video", true));
        }
        this.mLlAudioFocusLayout = (ViewGroup) view.findViewById(R.id.ll_audio_focus_layout);
        this.mSwitchForAudioFocus = (Switch) view.findViewById(R.id.switch_for_audio_focus);
        this.mLlAudioFocusLayout.setOnClickListener(this);
        this.mSwitchForAudioFocus.setOnCheckedChangeListener(new ef9(this));
        this.mSwitchForAudioFocus.setChecked(w6c.c(this.mContext, "audio_focus_allow_may_duck", false));
        if (!pp3.p) {
            this.mLlShowPrivateRoom.setVisibility(8);
        } else if (uv3.d(getContext()) || !sv3.e(getContext())) {
            this.mLlBiometricUnlocking.setVisibility(8);
        } else {
            this.mLlBiometricUnlocking.setVisibility(0);
        }
        ViewGroup viewGroup10 = (ViewGroup) view.findViewById(R.id.ll_simultaneous_downloads);
        this.mSimultaneousDownloadStateTv = (TextView) view.findViewById(R.id.tv_simultaneous_downloads_state);
        viewGroup10.setOnClickListener(this);
        this.mDownloadPathTv = (TextView) view.findViewById(R.id.tv_download_folder_path);
        OverBoundNestedScrollView overBoundNestedScrollView2 = (OverBoundNestedScrollView) view.findViewById(R.id.sv_content);
        this.mContentSv = overBoundNestedScrollView2;
        overBoundNestedScrollView2.setUpOverScroll();
        if (com.transsion.utils.a.A()) {
            applyRootLinearLayoutPadding();
        }
        TextView textView = (TextView) view.findViewById(R.id.download_subtitle);
        if (!pp3.k) {
            textView.setVisibility(8);
            view.findViewById(R.id.divider_download_folder).setVisibility(8);
            viewGroup10.setVisibility(8);
            viewGroup4.setVisibility(8);
            view.findViewById(R.id.ll_download_folder).setVisibility(8);
        }
        textView.setText(zz0.d() ? R.string.visha_transfer : R.string.download);
        ((TextView) view.findViewById(R.id.tv_allow_download_with_mobile_data)).setText(zz0.d() ? R.string.visha_wifi_only_transfer : R.string.setting_allow_download_with_mobile_data);
        if (getActivity() != null) {
            viewGroup4.setVisibility(pp3.y(getActivity()) ? 8 : 0);
        }
        initList();
        if (getArguments() != null) {
            this.mKeySource = getArguments().getString("source");
        }
        this.mLlMusicSettings = (ViewGroup) view.findViewById(R.id.ll_music_settings);
        ViewGroup viewGroup11 = (ViewGroup) view.findViewById(R.id.ll_lyric_setting);
        this.mLlLyricSetting = viewGroup11;
        if (pp3.z) {
            viewGroup11.setVisibility(0);
            this.mLlLyricSetting.setOnClickListener(this);
            this.mLyricModeTv = (TextView) view.findViewById(R.id.tv_lyric_setting_state);
            initLyricMode();
            updateLyricMode(MainApp.u);
        } else {
            viewGroup11.setVisibility(8);
        }
        ViewGroup viewGroup12 = (ViewGroup) view.findViewById(R.id.ll_lock_screen_setting);
        this.mLlLockScreen = viewGroup12;
        viewGroup12.setVisibility(0);
        this.mLlLockScreen.setOnClickListener(this);
        this.mLockModeTv = (TextView) view.findViewById(R.id.tv_lock_setting_state);
        this.mLlNewAudioNotificationSetting = (ViewGroup) view.findViewById(R.id.ll_new_audio_notification_setting);
        this.mAllowsNewAudioNotification = (Switch) view.findViewById(R.id.switch_for_new_audio_notification);
        BadgeView badgeView = (BadgeView) view.findViewById(R.id.bv_count);
        this.mBvCount = badgeView;
        badgeView.setVisibility((ydc.e() || w6c.c(getActivity(), "new_audio_already_check", false)) ? 8 : 0);
        MainApp.k();
        if (showNewAudioSetting(this.mContext)) {
            this.mAllowsNewAudioNotification.setChecked(MainApp.g);
            this.mAllowsNewAudioNotification.setOnCheckedChangeListener(new ef9(this));
            this.mLlNewAudioNotificationSetting.setOnClickListener(this);
        } else {
            Log.w(TAG, "showNewAudioSetting : false");
            this.mLlNewAudioNotificationSetting.setVisibility(8);
        }
        initFadeSetting(view);
        showListen();
        this.mMainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        if (SHAKE_ITEM_HISTORY.equals(this.mKeySource)) {
            this.mMainViewModel.j.setValue(Boolean.TRUE);
        }
        this.mMainViewModel.i.observe(this.mActivity, new b());
        if (!Settings.canDrawOverlays(getApplicationContext())) {
            MainApp.q = false;
        }
        this.mMainViewModel.i.setValue(Boolean.valueOf(MainApp.q));
        ThemeData themeData = (ThemeData) w6c.f(this.mContext, "skin_theme");
        if (themeData != null && (str = themeData.name) != null && !str.equals(this.mContext.getString(R.string.default_skin)) && (overBoundNestedScrollView = this.mContentSv) != null) {
            overBoundNestedScrollView.setBackground(null);
        }
        super.onViewCreatedEnd(view, bundle);
        addBottomBarShowStateObserver();
    }

    public void refreshThemeBackground() {
        View view = getView();
        if (view != null) {
            if (getActivity() instanceof SettingActivity) {
                view.setBackground(null);
            } else {
                backgroundFollowBaseWindowByPx(view, getBackgroundOffsetPx());
            }
        }
    }

    public void showSimultaneousSettingDialog() {
        intDownloadFileNum();
        this.mDownSetPromptDialog = new com.transsion.widgetslib.dialog.d.a(this.mContext).A(R.string.setting_simultaneous_downloads).z(this.mSimultaneousMode, MainApp.e - 1, new i()).m(R.string.ok, null).F();
    }

    public void switchMobileData() {
        MainApp.h = !MainApp.h;
        w6c.r(this.mContext, "allow_mobile_data", MainApp.h);
        this.mAllowDownloadWithMobileSwitch.setChecked(zz0.d() != MainApp.h);
        if (zz0.d()) {
            cz5.d(!MainApp.h);
        } else {
            p06.i(MainApp.h);
        }
    }

    public void switchPipPlay() {
        boolean z = !fec.a();
        MMKV.p().y("auto_pip", z);
        h06.c(z);
    }

    public void switchPlayBack() {
        boolean zE = MMKV.p().e("ConfigIsBackPlay", false);
        boolean z = !zE;
        MMKV.p().y("ConfigIsBackPlay", z);
        this.mAllowPlayBackSwitch.setChecked(z);
        HashMap map = new HashMap();
        map.put(ClientABTestDTOKt.SWITCH, !zE ? "on" : "off");
        p06.b0("vd_more_background_switch", map);
    }

    public void switchPlayMobileData() {
        Switch r1 = this.mAllowPlayWithMobileSwitch;
        r1.setChecked(!r1.isChecked());
        z06.b(MainApp.j);
    }

    public void updateSimultaneousSetting(int i2) {
        Context context = this.mContext;
        if (context != null) {
            this.mSimultaneousDownloadStateTv.setText(i2 > 1 ? context.getString(R.string.go_download_files, Integer.valueOf(i2)) : context.getString(R.string.go_download_one_file_new, Integer.valueOf(i2)));
        }
    }

    @Override
    public SettingFragment setBaseActivity(BaseActivity baseActivity) {
        return (SettingFragment) super.setBaseActivity(baseActivity);
    }
}

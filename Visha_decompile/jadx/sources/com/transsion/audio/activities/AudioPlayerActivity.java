package com.transsion.audio.activities;

import android.animation.TimeInterpolator;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.ChangeImageTransform;
import android.transition.ChangeTransform;
import android.transition.Slide;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.util.Log;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.p003activity.OnBackPressedCallback;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.gw.swipeback.SwipeBackLayout;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.fragments.AudioPlayerFragmentNew;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.AudioAlbumViewModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.privacy.MarkPointUtil;
import com.transsion.sysbar.ImmersionBar;
import com.transsion.transsion_gdpr.GdprUtil;
import com.transsion.widgets.CustomSwipeBackLayout;
import defpackage.a64;
import defpackage.ao;
import defpackage.f5;
import defpackage.h27;
import defpackage.jf;
import defpackage.jy7;
import defpackage.k29;
import defpackage.lz5;
import defpackage.mc7;
import defpackage.oa1;
import defpackage.p06;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.rf;
import defpackage.se;
import defpackage.t08;
import defpackage.t74;
import defpackage.vb;
import defpackage.woc;
import defpackage.ydc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public class AudioPlayerActivity extends BasePermissionActivity implements MusicPlayManager.d {
    public static boolean t0 = false;
    public boolean N;
    public AudioPlayerFragmentNew O;
    public AudioAlbumViewModel P;
    public PlayListModel Q;
    public MusicPlayManager R;
    public boolean T;
    public CustomSwipeBackLayout U;
    public com.transsion.widgetslib.dialog.d V;
    public FileOperateUtils W;
    public float c0;
    public float d0;
    public boolean e0;
    public boolean j0;
    public ViewTreeObserver.OnPreDrawListener k0;
    public ImageView m0;
    public float n0;
    public float o0;
    public ActivityResultLauncher q0;
    public ActivityResultCallback r0;
    public PlayAudioData S = new PlayAudioData();
    public String X = "";
    public float Y = 0.0f;
    public float Z = 0.0f;
    public float a0 = 1.0f;
    public float b0 = 1.0f;
    public float f0 = 108.0f;
    public float g0 = 108.0f;
    public boolean h0 = false;
    public final Handler i0 = new Handler(Looper.getMainLooper());
    public final Runnable l0 = new Runnable() {
        @Override
        public final void run() {
            this.b.O1();
        }
    };
    public final ActivityResultCallback p0 = new d();
    public final Runnable s0 = new Runnable() {
        @Override
        public final void run() {
            this.b.s1();
        }
    };

    public class AnonymousClass4 extends TaskExecutor.Task<Object> {
        final Uri val$uri;

        public AnonymousClass4(Uri uri) {
            this.val$uri = uri;
        }

        public void lambda$onBackground$0(String str) {
            AudioItem audioItemB = AudioPlayerActivity.this.P.b();
            AudioItem audioItemPlayMediaItem = MusicPlayManager.S().Y().playMediaItem();
            if (audioItemB != null && audioItemPlayMediaItem != null && audioItemB.id == audioItemPlayMediaItem.id) {
                AudioPlayerActivity.this.O.Z1(str);
                MusicPlayManager.S().G(str);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("onActivityResult alumMediaItem:");
            sb.append(audioItemB != null ? audioItemB.data : "null");
            sb.append(",  ");
            sb.append(audioItemPlayMediaItem != null ? audioItemPlayMediaItem.data : "null");
            Log.w("AudioPlayer_Activity", sb.toString());
        }

        @Override
        public Object onBackground() throws Throwable {
            final String strB = jy7.b(AudioPlayerActivity.this, this.val$uri);
            AudioPlayerActivity.this.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onBackground$0(strB);
                }
            });
            AudioPlayerActivity.this.P.e(strB);
            rf.h.a().d(AudioPlayerActivity.this.getApplicationContext());
            return strB;
        }

        @Override
        public void onResult(Object obj) {
            super.onResult(obj);
            LiveEventBus.b().c("change_audio_cover", MusicPlayManager.S().Y().playMediaItem());
        }
    }

    public class a extends OnBackPressedCallback {
        public a(boolean z) {
            super(z);
        }

        @Override
        public void handleOnBackPressed() {
            AudioPlayerActivity.this.h1();
        }
    }

    public class b implements SwipeBackLayout.c {
        public b() {
        }

        @Override
        public void a(View view, float f, float f2) {
            if (AudioPlayerActivity.this.Y <= 0.0f || AudioPlayerActivity.this.Z <= 0.0f) {
                return;
            }
            if (AudioPlayerActivity.this.m0 == null) {
                AudioPlayerActivity.this.i1();
            } else {
                AudioPlayerActivity.this.R1(f);
            }
        }

        @Override
        public void b(View view, boolean z) {
            if (!z) {
                AudioPlayerActivity.this.J1();
            } else {
                AudioPlayerActivity.this.getWindow().getDecorView().setAlpha(0.0f);
                AudioPlayerActivity.this.g1(false);
            }
        }
    }

    public class c implements ViewTreeObserver.OnPreDrawListener {
        public c() {
        }

        @Override
        public boolean onPreDraw() {
            AudioPlayerActivity.this.O1();
            return true;
        }
    }

    public class d implements ActivityResultCallback {
        public d() {
        }

        @Override
        public void onActivityResult(Boolean bool) {
            ActivityResultCallback activityResultCallback = AudioPlayerActivity.this.r0;
            if (activityResultCallback != null) {
                activityResultCallback.onActivityResult(bool);
            }
        }
    }

    public static void A1(DialogInterface dialogInterface, int i) {
        p06.f0(null, "popup_mediafile2_n", 9324L);
        dialogInterface.dismiss();
    }

    public static void C1(DialogInterface dialogInterface) {
    }

    public static void D1(Context context, PlayAudioData playAudioData) {
        Intent intent = new Intent(context, (Class<?>) AudioPlayerActivity.class);
        playAudioData.toIntent(intent);
        PlayAudioListData.getInstance().setSource(playAudioData, "");
        boolean z = context instanceof Activity;
        if (!z) {
            intent.addFlags(268435456);
        }
        f5.c(intent, context);
        if (z) {
            ((Activity) context).overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
        }
    }

    public static void E1(Context context, PlayAudioData playAudioData, boolean z) {
        Intent intent = new Intent(context, (Class<?>) AudioPlayerActivity.class);
        intent.putExtra("IA_AUTO_PLAY", z);
        playAudioData.toIntent(intent);
        PlayAudioListData.getInstance().setSource(playAudioData, "");
        boolean z2 = context instanceof Activity;
        if (!z2) {
            intent.addFlags(268435456);
        }
        f5.c(intent, context);
        if (z2) {
            ((Activity) context).overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
        }
    }

    public static void F1(Context context, PlayAudioData playAudioData) {
        Intent intent = new Intent(context, (Class<?>) AudioPlayerActivity.class);
        playAudioData.toIntent(intent);
        PlayAudioListData.getInstance().setSource(playAudioData, "");
        boolean z = context instanceof Activity;
        if (!z) {
            intent.addFlags(268435456);
        }
        intent.putExtra("fromPage", "audio_list_item_click");
        f5.c(intent, context);
        if (z) {
            ((Activity) context).overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
        }
    }

    public static boolean o1(AudioItem audioItem, AudioItem audioItem2) {
        return audioItem2.id == audioItem.id;
    }

    public static Pair p1(PlayAudioData playAudioData, Pair pair) {
        List listJ;
        Pair pair2 = new Pair(Boolean.FALSE, null);
        if (((Integer) pair.second).intValue() == 26) {
            listJ = ao.U().I((String) pair.first, null);
        } else {
            listJ = ((Integer) pair.second).intValue() == 25 ? ao.U().J((String) pair.first, null) : (List) ao.U().x(null).getSecond();
        }
        if (listJ.isEmpty()) {
            return pair2;
        }
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData((AudioItem) listJ.get(0));
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioData = playAudioDataConvertToPlayAudioData;
        }
        playAudioData.autoPlay = true;
        playAudioData.listFlag = ((Integer) pair.second).intValue();
        Pair pair3 = new Pair(Boolean.TRUE, playAudioData);
        LogUtils.j("AudioPlayer_Activity", "onSearchPlay->" + playAudioData);
        return pair3;
    }

    public static void r1(Throwable th) {
        Log.e("AudioPlayer_Activity", "handleAudioData error: " + th);
    }

    public void s1() {
        if (isFinishing() || isDestroyed() || oa1.d()) {
            return;
        }
        GdprUtil.GDPRConfig gDPRConfig = new GdprUtil.GDPRConfig();
        gDPRConfig.setIgnoreUserExperience(true);
        gDPRConfig.setGdprStyle(0);
        gDPRConfig.setContentText(getString(R.string.gdpr_notice_visha_translatable));
        gDPRConfig.setTitleText(getString(R.string.visha_welcome_to, getResources().getString(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player)));
        MarkPointUtil.y(this, getFragmentManager(), true, gDPRConfig);
    }

    public void t1() {
        com.transsion.utils.a.B(this, 0.0f, 30.0f);
    }

    public static void w1(PlayAudioData playAudioData, PlayAudioData playAudioData2) {
        MusicPlayManager.S().N0(playAudioData);
    }

    public static void x1(Throwable th) {
        Log.w("AudioPlayer_Activity", "onNewIntent " + th);
    }

    public final void B1(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent(BasePermissionActivity.PERMISSION_ACTION);
        intent.putExtra("packagename", getPackageName());
        try {
            f5.b(intent, 132, this);
        } catch (ActivityNotFoundException unused) {
            Intent intent2 = new Intent(BasePermissionActivity.PERMISSION_ACTION_OTHER);
            intent2.setData(Uri.fromParts("package", getPackageName(), null));
            try {
                f5.b(intent2, 132, this);
            } catch (ActivityNotFoundException e) {
                Log.e("AudioPlayer_Activity", e.getMessage());
            }
        }
    }

    public final boolean G1(PlayAudioData playAudioData, AudioPlayerFragmentNew audioPlayerFragmentNew, Bundle bundle, Intent intent) {
        if (playAudioData == null) {
            return false;
        }
        if (r0a.g(playAudioData.displayName) && r0a.g(playAudioData.artistName) && r0a.g(playAudioData.albumName)) {
            return false;
        }
        if (!r0a.g(playAudioData.displayName)) {
            k1(playAudioData, audioPlayerFragmentNew, bundle, playAudioData.displayName, 100);
            return true;
        }
        if (!r0a.g(playAudioData.artistName)) {
            k1(playAudioData, audioPlayerFragmentNew, bundle, playAudioData.artistName, 26);
            return true;
        }
        if (r0a.g(playAudioData.albumName)) {
            z1(audioPlayerFragmentNew, bundle, playAudioData);
            return true;
        }
        k1(playAudioData, audioPlayerFragmentNew, bundle, playAudioData.albumName, 25);
        return true;
    }

    public final void H1(final PlayAudioData playAudioData, final AudioPlayerFragmentNew audioPlayerFragmentNew, final Bundle bundle, final Intent intent) {
        mc7.K(intent).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.y1(intent, playAudioData, (Intent) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.z1(audioPlayerFragmentNew, bundle, (PlayAudioData) obj);
            }
        });
    }

    public void I1(ActivityResultCallback activityResultCallback) {
        ActivityResultLauncher activityResultLauncher = this.q0;
        if (activityResultLauncher != null) {
            this.r0 = activityResultCallback;
            activityResultLauncher.launch("android.permission.RECORD_AUDIO");
        }
    }

    public final void J1() {
        ImageView imageView = this.m0;
        if (imageView == null) {
            return;
        }
        imageView.setX(this.n0);
        this.m0.setY(this.o0);
        this.m0.setScaleX(1.0f);
        this.m0.setScaleY(1.0f);
        this.m0.setLayerType(0, null);
        this.m0.animate().cancel();
        this.m0.setTranslationX(0.0f);
        this.m0.setTranslationY(0.0f);
    }

    public final void K1() {
        View viewFindViewById;
        if (!this.e0 && (viewFindViewById = findViewById(android.R.id.content)) != null) {
            this.k0 = new c();
            viewFindViewById.getViewTreeObserver().addOnPreDrawListener(this.k0);
        }
        this.i0.postDelayed(this.l0, 400L);
    }

    public final void L1() {
        if (this.h0) {
            return;
        }
        LiveEventBus.b().c("finish_media_player_activity", Boolean.TRUE);
        this.h0 = true;
    }

    public void M1(boolean z) {
        CustomSwipeBackLayout customSwipeBackLayout = this.U;
        if (customSwipeBackLayout != null) {
            customSwipeBackLayout.enableSwipeBack(z);
        }
    }

    public void N1() {
        f1();
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(this);
        View viewInflate = LayoutInflater.from(this).inflate(com.transsion.playercommon.R.layout.dialog_permission_remind, (ViewGroup) null, false);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.title)).setText(com.transsion.playercommon.R.string.audio_record_permission_content);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.tv2)).setText(com.transsion.playercommon.R.string.audio_record_permission_notice);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.description)).setVisibility(8);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.content)).setText(com.transsion.playercommon.R.string.audio_record_permission_explanation);
        aVar.E(viewInflate);
        aVar.m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                AudioPlayerActivity.A1(dialogInterface, i);
            }
        });
        aVar.f(false);
        aVar.u(com.transsion.playercommon.R.string.audio_record_continue, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.B1(dialogInterface, i);
            }
        });
        com.transsion.widgetslib.dialog.d dVarA = aVar.a();
        this.V = dVarA;
        dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                AudioPlayerActivity.C1(dialogInterface);
            }
        });
        if (this.V.isShowing()) {
            return;
        }
        this.V.show();
        p06.f0(null, "popup_mediafile2", 9324L);
    }

    public void O1() {
        if (this.j0) {
            return;
        }
        this.j0 = true;
        this.i0.removeCallbacks(this.l0);
        View viewFindViewById = findViewById(android.R.id.content);
        if (viewFindViewById != null && this.k0 != null) {
            ViewTreeObserver viewTreeObserver = viewFindViewById.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.k0);
            }
            this.k0 = null;
        }
        Log.i("AudioPlayer_Activity", "startPostponedEnterTransition");
        startPostponedEnterTransition();
    }

    public void P1() {
        Intent intent = new Intent("com.transsion.magicmovie.video_player_main_activity");
        RouterBean.RouterData routerData = new RouterBean.RouterData(1, 0);
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        Bundle bundle = new Bundle();
        bundle.putParcelable(RouterUtils.ROUTER_DATA, routerData);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        intent.addFlags(268435456);
        intent.setPackage(se.a().getPackageName());
        startActivity(intent);
    }

    public final void Q1(Intent intent) {
        this.X = intent != null ? intent.getStringExtra("fromPage") : "";
        this.Y = 0.0f;
        this.Z = 0.0f;
        boolean z = false;
        if (intent != null) {
            int intExtra = intent.getIntExtra("audio_cover_originX", 0);
            int intExtra2 = intent.getIntExtra("audio_cover_originY", 0);
            if (intExtra > 0) {
                this.Y = intExtra;
            }
            if (intExtra2 > 0) {
                this.Z = intExtra2;
            }
        }
        if (this.Y > 0.0f && this.Z > 0.0f) {
            z = true;
        }
        this.e0 = z;
    }

    public final void R1(float f) {
        if (this.m0 == null || this.c0 <= 0.0f || this.d0 <= 0.0f || !Float.isFinite(f)) {
            return;
        }
        Log.d(AbstractID3v1Tag.TAG, "updateSharedElement startX =  " + this.a0 + ", targetX = " + this.Y);
        float f2 = this.a0;
        float f3 = f2 + ((this.Y - f2) * f);
        float f4 = this.b0;
        float f5 = f4 + ((this.Z - f4) * f);
        float f6 = this.c0;
        float f7 = ((this.f0 - f6) * f) + f6;
        float f8 = this.d0;
        a1(f3, f5, f7 / f6, (((this.g0 - f8) * f) + f8) / f8);
        if (f > 0.7f) {
            L1();
        }
    }

    public final void Y0() {
        final AudioItem audioItemConvertToPlayAudioItem = PlayAudioData.convertToPlayAudioItem(this.S);
        if (audioItemConvertToPlayAudioItem != null) {
            MusicPlayManager.S().Y().getPlayList().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AudioPlayerActivity.o1(audioItemConvertToPlayAudioItem, (AudioItem) obj);
                }
            });
            MusicPlayManager.S().Y().addToPlayList(audioItemConvertToPlayAudioItem, 0);
        }
    }

    public final void Z0() {
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        if (this.e0) {
            overrideActivityTransition(0, 0, 0);
            overrideActivityTransition(1, 0, 0);
        } else {
            overrideActivityTransition(0, R.anim.activity_audio_slide_in_up, 0);
            overrideActivityTransition(1, 0, R.anim.activity_audio_slide_out_down);
        }
    }

    public final void a1(float f, float f2, float f3, float f4) {
        ImageView imageView = this.m0;
        if (imageView == null) {
            return;
        }
        imageView.setLayerType(2, null);
        int[] iArr = new int[2];
        ((ViewGroup) this.m0.getParent()).getLocationOnScreen(iArr);
        float f5 = f - iArr[0];
        float f6 = f2 - iArr[1];
        ImageView imageView2 = this.m0;
        imageView2.setX(f5 - (imageView2.getWidth() / 2.0f));
        ImageView imageView3 = this.m0;
        imageView3.setY(f6 - (imageView3.getHeight() / 2.0f));
        if (!Float.isFinite(f3)) {
            f3 = 1.0f;
        }
        if (!Float.isFinite(f4)) {
            f4 = 1.0f;
        }
        ImageView imageView4 = this.m0;
        imageView4.setPivotX(imageView4.getWidth() / 2.0f);
        ImageView imageView5 = this.m0;
        imageView5.setPivotY(imageView5.getHeight() / 2.0f);
        if (f3 > Float.MAX_VALUE) {
            f3 = Float.MAX_VALUE;
        } else if (f3 < -3.4028235E38f) {
            f3 = -3.4028235E38f;
        }
        if (f4 > Float.MAX_VALUE) {
            f4 = Float.MAX_VALUE;
        } else if (f4 < -3.4028235E38f) {
            f4 = -3.4028235E38f;
        }
        this.m0.setScaleX(f3);
        this.m0.setScaleY(f4);
    }

    public final void b1() {
        if (!this.e0) {
            getWindow().setEnterTransition(null);
            getWindow().setReturnTransition(null);
            getWindow().setSharedElementEnterTransition(null);
            getWindow().setSharedElementReturnTransition(null);
            return;
        }
        long duration = AnimationUtils.loadAnimation(this, R.anim.activity_audio_slide_in_up).getDuration();
        long duration2 = AnimationUtils.loadAnimation(this, R.anim.activity_audio_slide_out_down).getDuration();
        Interpolator interpolatorLoadInterpolator = AnimationUtils.loadInterpolator(this, com.transsion.common.R.anim.interpolator_audio_enter);
        Interpolator interpolatorLoadInterpolator2 = AnimationUtils.loadInterpolator(this, com.transsion.common.R.anim.interpolator_audio_exit);
        Transition transitionD1 = d1(duration, interpolatorLoadInterpolator);
        Transition transitionD2 = d1(duration2, interpolatorLoadInterpolator2);
        Transition transitionC1 = c1(duration, interpolatorLoadInterpolator);
        Transition transitionC2 = c1(duration2, interpolatorLoadInterpolator2);
        getWindow().setTransitionBackgroundFadeDuration(0L);
        getWindow().setAllowEnterTransitionOverlap(true);
        getWindow().setAllowReturnTransitionOverlap(true);
        getWindow().setEnterTransition(transitionD1);
        getWindow().setReturnTransition(transitionD2);
        getWindow().setSharedElementEnterTransition(transitionC1);
        getWindow().setSharedElementReturnTransition(transitionC2);
    }

    public final Transition c1(long j, Interpolator interpolator) {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new ChangeBounds());
        transitionSet.addTransition(new ChangeTransform());
        transitionSet.addTransition(new ChangeImageTransform());
        transitionSet.setDuration(j);
        transitionSet.setInterpolator((TimeInterpolator) interpolator);
        return transitionSet;
    }

    @Override
    public void changeThemeWindowBackground() {
        super.changeThemeWindowBackground();
        AudioItem audioItemA0 = MusicPlayManager.S().a0();
        if (audioItemA0 != null) {
            Log.d("AudioPlayer_Activity", "changeThemeWindowBackground curItem data:" + audioItemA0.data);
        }
        AudioPlayerFragmentNew audioPlayerFragmentNew = this.O;
        if (audioPlayerFragmentNew != null) {
            audioPlayerFragmentNew.Y1(audioItemA0);
        }
    }

    public final Transition d1(long j, Interpolator interpolator) {
        Slide slide = new Slide(80);
        slide.setDuration(j);
        slide.setInterpolator(interpolator);
        slide.excludeTarget(android.R.id.statusBarBackground, true);
        slide.excludeTarget(android.R.id.navigationBarBackground, true);
        return slide;
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        AudioPlayerFragmentNew audioPlayerFragmentNew;
        super.didReceivedNotification(i, objArr);
        if (i != 1164 || (audioPlayerFragmentNew = this.O) == null) {
            return;
        }
        audioPlayerFragmentNew.c2();
    }

    public final void e1() {
        FileOperateUtils fileOperateUtils = this.W;
        if (fileOperateUtils == null || fileOperateUtils.M() == null || !this.W.M().isShowing()) {
            return;
        }
        this.W.M().dismiss();
    }

    public final void f1() {
        com.transsion.widgetslib.dialog.d dVar = this.V;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.V.cancel();
    }

    @Override
    public void finish() {
        super.finish();
        boolean z = this.S.fromInternal;
    }

    public void g1(boolean z) {
        ImageView imageView;
        if (z) {
            finish();
            return;
        }
        if (Build.VERSION.SDK_INT >= 34) {
            overrideActivityTransition(1, 0, 0);
        }
        super.finish();
        overridePendingTransition(0, 0);
        if (!this.S.fromInternal || (imageView = this.m0) == null) {
            return;
        }
        imageView.setLayerType(0, null);
    }

    public final void h1() {
        if (t0) {
            Iterator it = jf.b().iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (!((Activity) it.next()).getComponentName().getClassName().equals("com.transsion.audio.activities.AudioPlayerActivity")) {
                    z = true;
                }
            }
            if (!z) {
                if (Build.VERSION.SDK_INT >= 34) {
                    overrideActivityTransition(1, 0, 0);
                }
                overridePendingTransition(0, 0);
                finish();
                P1();
            }
        }
        boolean z2 = this.S.fromInternal;
        if (z2 && this.e0) {
            L1();
            supportFinishAfterTransition();
            p06.h0("audio_guide_back");
        } else {
            if (!z2) {
                finish();
                p06.h0("audio_guide_back");
                return;
            }
            L1();
            finish();
            if (Build.VERSION.SDK_INT < 34) {
                overridePendingTransition(0, R.anim.activity_audio_slide_out_down);
            }
            p06.h0("audio_guide_back");
        }
    }

    public final void handleShareIntent(Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
        Log.v("AudioPlayer_Activity", "handleShareIntent uri: " + uri);
        Log.i("AudioPlayer_Activity", "handleShareIntent item: " + jy7.b(this, uri));
        PlayAudioData playAudioData = new PlayAudioData(uri, false);
        MusicPlayManager.S().u1(PlayAudioData.convertToPlayAudioItem(playAudioData));
        m1(playAudioData, true);
    }

    @Override
    public void hideBottomOperateBar() {
        Log.w("AudioPlayer_Activity", "hideBottomOperateBar finish myself");
        if (this.S.fromInternal) {
            L1();
        }
    }

    public final void i1() {
        ImageView imageView = (ImageView) findViewById(R.id.music_alumb_view);
        if (imageView != null) {
            for (ViewParent parent = imageView.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
            }
            View viewFindViewById = getWindow().getDecorView().findViewById(android.R.id.content);
            if (viewFindViewById instanceof ViewGroup) {
                ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
                viewGroup2.setClipChildren(false);
                viewGroup2.setClipToPadding(false);
            }
            int[] iArr = new int[2];
            imageView.getLocationOnScreen(iArr);
            int i = iArr[0];
            this.n0 = i;
            this.o0 = iArr[1];
            this.a0 = i + (imageView.getWidth() / 2.0f);
            this.b0 = iArr[1] + (imageView.getHeight() / 2.0f);
            this.Y += this.f0 / 2.0f;
            this.Z += this.g0 / 2.0f;
            this.c0 = imageView.getWidth();
            this.d0 = imageView.getHeight();
            this.m0 = imageView;
        }
    }

    @Override
    public boolean isExtendAngelMonitorTime() {
        return true;
    }

    @Override
    public boolean isNeedAngelSensor() {
        return ydc.g();
    }

    @Override
    public boolean isRestrictPermissionGuideShow() {
        return false;
    }

    public final void z1(AudioPlayerFragmentNew audioPlayerFragmentNew, Bundle bundle, PlayAudioData playAudioData) {
        bundle.putParcelable("video_play_fragment_bean", playAudioData);
        bundle.putString("action", getIntent().getStringExtra("action"));
        this.O.setArguments(bundle);
        a64.i(this, audioPlayerFragmentNew, false);
    }

    public final void k1(final PlayAudioData playAudioData, final AudioPlayerFragmentNew audioPlayerFragmentNew, final Bundle bundle, String str, int i) {
        mc7.K(new Pair(str, Integer.valueOf(i))).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return AudioPlayerActivity.p1(playAudioData, (Pair) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.q1(audioPlayerFragmentNew, bundle, (Pair) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                AudioPlayerActivity.r1((Throwable) obj);
            }
        });
    }

    public boolean l1() {
        return ContextCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") == 0;
    }

    @Override
    public int loadSkin(boolean z) {
        int iLoadSkin = super.loadSkin(false);
        getWindow().setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_window_skin_transparent, getTheme()));
        return iLoadSkin;
    }

    public void m1(PlayAudioData playAudioData, boolean z) {
        AudioPlayerFragmentNew audioPlayerFragmentNewJ2 = new AudioPlayerFragmentNew().setBaseActivity(this);
        this.O = audioPlayerFragmentNewJ2;
        audioPlayerFragmentNewJ2.C = this.X;
        audioPlayerFragmentNewJ2.S = z;
        Bundle bundle = new Bundle();
        String stringExtra = getIntent().getStringExtra("tag_display_name");
        String stringExtra2 = getIntent().getStringExtra(PlayAudioData.TAG_ARTIST_NAME);
        String stringExtra3 = getIntent().getStringExtra(PlayAudioData.TAG_ALBUM_NAME);
        boolean booleanExtra = getIntent().getBooleanExtra("IA_AUTO_PLAY", false);
        t0 = booleanExtra;
        if (booleanExtra) {
            Y0();
        }
        LogUtils.j("AudioPlayer_Activity", "start audio play->", "audio name:" + stringExtra, "artist name:" + stringExtra2, "album name:" + stringExtra3);
        if (getIntent() != null && getIntent().getData() != null) {
            Intent intent = getIntent();
            if (intent.getLongExtra("play_bucket_id", -1L) == -1) {
                H1(playAudioData, audioPlayerFragmentNewJ2, bundle, intent);
                return;
            }
        } else if (G1(playAudioData, audioPlayerFragmentNewJ2, bundle, getIntent())) {
            return;
        }
        bundle.putParcelable("video_play_fragment_bean", playAudioData);
        audioPlayerFragmentNewJ2.setArguments(bundle);
        a64.i(this, audioPlayerFragmentNewJ2, false);
    }

    public final boolean n1(PlayAudioData playAudioData) {
        int i;
        return (playAudioData == null || (i = playAudioData.mediaId) == -1 || i == 0) ? false : true;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        AudioPlayerFragmentNew audioPlayerFragmentNew;
        super.onActivityResult(i, i2, intent);
        this.T = true;
        if (i == 132 && (audioPlayerFragmentNew = this.O) != null) {
            audioPlayerFragmentNew.z2(i, i2);
        }
        if (i2 == 0) {
            return;
        }
        if (i == 2001) {
            if (intent == null) {
                return;
            }
            TaskExecutor.c(new AnonymousClass4(intent.getData()));
            return;
        }
        if (i == 1247) {
            AudioPlayerFragmentNew audioPlayerFragmentNew2 = this.O;
            if (audioPlayerFragmentNew2 != null) {
                audioPlayerFragmentNew2.e2(i == 1248);
                return;
            }
            return;
        }
        if (i != 1248 || intent == null) {
            return;
        }
        if (intent.getIntExtra("search_type", 0) == 0) {
            AudioPlayerFragmentNew audioPlayerFragmentNew3 = this.O;
            if (audioPlayerFragmentNew3 != null) {
                audioPlayerFragmentNew3.e2(i == 1248);
                return;
            }
            return;
        }
        AudioPlayerFragmentNew audioPlayerFragmentNew4 = this.O;
        if (audioPlayerFragmentNew4 != null) {
            audioPlayerFragmentNew4.h2();
        }
    }

    @Override
    public void onBackPressed() {
        h1();
    }

    @Override
    public void onCreate(Bundle bundle) {
        ImmersionBar.with(this).transparentBar().init();
        this.q0 = registerForActivityResult(new ActivityResultContracts.RequestPermission(), this.p0);
        super.onCreate(bundle);
        if (pp3.x(getApplicationContext())) {
            ((ViewGroup) findViewById(android.R.id.content)).setPadding(0, 0, 0, 0);
        }
        MusicPlayManager musicPlayManagerS = MusicPlayManager.S();
        this.R = musicPlayManagerS;
        musicPlayManagerS.C(getApplicationContext());
        this.P = (AudioAlbumViewModel) getViewModel(AudioAlbumViewModel.class);
        this.Q = (PlayListModel) getViewModel(PlayListModel.class);
        if (bundle != null) {
            this.N = true;
        }
        Q1(getIntent());
        if (pp3.x(getApplicationContext())) {
            ((ViewGroup) findViewById(android.R.id.content)).setPadding(0, 0, 0, 0);
        }
        postponeEnterTransition();
        setContentView(R.layout.activity_audio_player);
        K1();
        com.transsion.utils.a.a(this, 10);
        getWindow().getDecorView().post(new Runnable() {
            @Override
            public final void run() {
                this.b.t1();
            }
        });
        b1();
        Z0();
        getOnBackPressedDispatcher().addCallback(this, new a(true));
        CustomSwipeBackLayout customSwipeBackLayout = (CustomSwipeBackLayout) findViewById(R.id.swipeBackLayout);
        this.U = customSwipeBackLayout;
        customSwipeBackLayout.setSwipeFromEdge(false);
        this.U.setSwipeBackListener(new b());
        MarkPointUtil.p(932460000088L, "privacy_policy_cl", "version");
        this.i0.postDelayed(this.s0, 500L);
        this.R.f1(this);
        boolean zC = t08.c(this);
        this.mHaveFilePermission = zC;
        if (zC) {
            successWritePermissionOnce();
        }
        h27.c().b(this, 1164);
        this.mWindowInfoViewModel.a.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.u1((woc) obj);
            }
        });
    }

    @Override
    public void onDestroy() {
        this.i0.removeCallbacks(this.l0);
        this.i0.removeCallbacks(this.s0);
        this.R.F1(this);
        MusicPlayManager.S().D1(getApplicationContext());
        h27.c().f(this, 1164);
        e1();
        L1();
        super.onDestroy();
    }

    @Override
    public void onEjected(String str) {
        String str2;
        Log.d("AudioPlayer_Activity", "onEjected unMountPoint:" + str);
        AudioItem audioItemA0 = MusicPlayManager.S().a0();
        if (audioItemA0 == null || (str2 = audioItemA0.data) == null || !str2.contains(str)) {
            return;
        }
        finish();
        Log.d("AudioPlayer_Activity", "onEjected finish");
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        AudioPlayerFragmentNew audioPlayerFragmentNew = this.O;
        if (audioPlayerFragmentNew != null && audioPlayerFragmentNew.p1()) {
            if (i == 24) {
                this.O.o2(true);
                return true;
            }
            if (i == 25) {
                this.O.o2(false);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override
    public void onNewIntent(Intent intent) {
        Log.d("AudioPlayer_Activity", "onNewIntent " + intent + StringUtils.COMMA + getIntent());
        super.onNewIntent(intent);
        setIntent(intent);
        Q1(intent);
        b1();
        Z0();
        if (!this.mHaveFilePermission && !t08.c(getApplicationContext())) {
            Log.w("AudioPlayer_Activity", "onNewIntent no permission");
            return;
        }
        if (intent != null) {
            if ("android.intent.action.SEND".equals(intent.getAction())) {
                handleShareIntent(intent);
                return;
            }
            final PlayAudioData playAudioDataRestore = PlayAudioData.restore(intent);
            playAudioDataRestore.fromInternal = this.S.fromInternal;
            this.S = playAudioDataRestore;
            if ((playAudioDataRestore.playUri == null || !TextUtils.isEmpty(playAudioDataRestore.displayName)) && !TextUtils.isEmpty(playAudioDataRestore.artistName)) {
                MusicPlayManager.S().N0(playAudioDataRestore);
            } else {
                mc7.K(playAudioDataRestore).g(bindToLifecycle()).L(new t74() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.b.v1(playAudioDataRestore, (PlayAudioData) obj);
                    }
                }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        AudioPlayerActivity.w1(playAudioDataRestore, (PlayAudioData) obj);
                    }
                }, new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        AudioPlayerActivity.x1((Throwable) obj);
                    }
                });
            }
        }
    }

    @Override
    public void onPause() {
        O1();
        super.onPause();
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        Log.d("AudioPlayer_Activity", "onRequestPermissionsResult requestCode:" + i + StringUtils.COMMA + strArr.toString());
        if (i == 131 && this.mAutoRequestGuideDialog && iArr.length > 0) {
            boolean z = iArr[0] == 0;
            if (z) {
                successWritePermission();
                com.transsion.widgetslib.dialog.d dVar = this.permissionDialog;
                if (dVar != null && dVar.isShowing()) {
                    this.permissionDialog.setOnDismissListener(null);
                    this.permissionDialog.cancel();
                }
            }
            boolean zD = t08.d(getApplicationContext());
            boolean z2 = this.mRequestVideoAndAudioPermission;
            if (z2 && !zD && !z) {
                showRequestPermissionDialog();
            } else if ((z2 && !zD) || !z) {
                showRequestPermissionDialog();
            }
            AudioItem audioItemB = this.P.b();
            if (audioItemB != null) {
                this.O.Y1(audioItemB);
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.S.fromInternal && !this.T && !this.e0 && Build.VERSION.SDK_INT < 34) {
            overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
        }
        this.T = false;
        if (MarkPointUtil.j(getFragmentManager()) && MarkPointUtil.c(this)) {
            Log.d("AudioPlayer_Activity", "onResume: hide because has been grant");
            MarkPointUtil.v(getFragmentManager());
        }
        lz5.c();
    }

    @Override
    public void onStop() {
        O1();
        super.onStop();
    }

    public final void q1(AudioPlayerFragmentNew audioPlayerFragmentNew, Bundle bundle, Pair pair) {
        PlayAudioData playAudioData = (PlayAudioData) pair.second;
        if (!((Boolean) pair.first).booleanValue() || playAudioData == null) {
            return;
        }
        z1(audioPlayerFragmentNew, bundle, playAudioData);
    }

    @Override
    public boolean shouldApplyLegacySystemBarPadding() {
        return false;
    }

    @Override
    public void successWritePermissionOnce() {
        Intent intent = getIntent();
        if (intent != null) {
            if ("android.intent.action.SEND".equals(intent.getAction())) {
                handleShareIntent(intent);
                return;
            }
            if (!this.N) {
                PlayAudioData playAudioDataRestore = PlayAudioData.restore(intent);
                this.S = playAudioDataRestore;
                playAudioDataRestore.autoPlay = true;
                m1(playAudioDataRestore, false);
                return;
            }
            AudioPlayerFragmentNew audioPlayerFragmentNew = (AudioPlayerFragmentNew) getSupportFragmentManager().findFragmentById(R.id.fragment_content);
            this.O = audioPlayerFragmentNew;
            if (audioPlayerFragmentNew != null) {
                audioPlayerFragmentNew.setBaseActivity(this);
                this.O.C = this.X;
            }
            Log.w("AudioPlayer_Activity", "isAutoRecover,not need initData again," + this.O);
        }
    }

    public final void u1(woc wocVar) {
        int i = wocVar.a;
        boolean z = true;
        if (i != 1 && i != 3) {
            z = false;
        }
        this.U.setSwipeFromEdge(z);
        if (z) {
            e1();
        }
    }

    public final PlayAudioData v1(PlayAudioData playAudioData, PlayAudioData playAudioData2) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(ao.U().H(playAudioData.playUri));
        if (!n1(playAudioDataConvertToPlayAudioData) || playAudioDataConvertToPlayAudioData.playUri == null) {
            playAudioDataConvertToPlayAudioData.playUri = playAudioData.playUri;
        }
        if (n1(playAudioDataConvertToPlayAudioData)) {
            this.P.g(playAudioDataConvertToPlayAudioData);
        }
        return playAudioDataConvertToPlayAudioData;
    }

    public final PlayAudioData y1(Intent intent, PlayAudioData playAudioData, Intent intent2) throws Throwable {
        AudioItem audioItemG;
        PlayAudioData playAudioDataConvertToPlayAudioData;
        String strB = jy7.b(this, intent.getData());
        if (strB != null) {
            audioItemG = ao.U().G(strB);
            playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItemG);
            if (audioItemG != null && audioItemG.id == 0 && audioItemG.bucketId == 0 && !TextUtils.isEmpty(audioItemG.data)) {
                return playAudioDataConvertToPlayAudioData;
            }
            playAudioDataConvertToPlayAudioData.isFromNet = false;
        } else {
            audioItemG = null;
            playAudioDataConvertToPlayAudioData = null;
        }
        if (strB == null || (audioItemG != null && TextUtils.isEmpty(audioItemG.data))) {
            playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(ao.U().H(playAudioData.playUri));
            if (!n1(playAudioDataConvertToPlayAudioData) || playAudioDataConvertToPlayAudioData.playUri == null) {
                playAudioDataConvertToPlayAudioData.playUri = playAudioData.playUri;
            }
        }
        playAudioDataConvertToPlayAudioData.autoPlay = playAudioData.autoPlay;
        this.P.g(playAudioDataConvertToPlayAudioData);
        return playAudioDataConvertToPlayAudioData;
    }
}

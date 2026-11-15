.class public Lcom/transsion/tools/fragments/SettingFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/tools/settingfragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;
    }
.end annotation


# static fields
.field public static final SHAKE_ITEM_AUTO_PLAY:Ljava/lang/String; = "autoPlay"

.field public static final SHAKE_ITEM_HISTORY:Ljava/lang/String; = "history"

.field public static final SHAKE_ITEM_LISTEN:Ljava/lang/String; = "listen"

.field public static final SHAKE_ITEM_MUSIC_FADE:Ljava/lang/String; = "fade"

.field public static final SHAKE_KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String; = "SettingFragment"


# instance fields
.field private mAllowBreakpointPlay:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mAllowDownloadWithMobileSwitch:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mAllowHistorySwitch:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mAllowPip:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mAllowPlayBackSwitch:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mAllowPlayWithMobileSwitch:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mAllowStreamPlay:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mAllowsNewAudioNotification:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mBiometric:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field protected final mBottomBarShowStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBreakpointMode:I

.field private mBvCount:Lcom/transsion/widgets/BadgeView;

.field private mContentSv:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

.field public volatile mCount:I

.field mDecimalFormat:Landroid/icu/text/DecimalFormat;

.field private mDownSetPromptDialog:Lcom/transsion/widgetslib/dialog/d;

.field private mDownloadPathTv:Landroid/widget/TextView;

.field private mFirstClickTime:J

.field mHandler:Landroid/os/Handler;

.field private mIllFade:Lcom/transsion/widgets/InterceptLinearLayout;

.field private mKeySource:Ljava/lang/String;

.field mLlAllowPlayBackGround:Landroid/view/ViewGroup;

.field mLlAllowStreamPlay:Landroid/view/ViewGroup;

.field mLlAudioFocusLayout:Landroid/view/ViewGroup;

.field mLlBiometricUnlocking:Landroid/view/ViewGroup;

.field mLlLockScreen:Landroid/view/ViewGroup;

.field mLlLyricSetting:Landroid/view/ViewGroup;

.field mLlMusicFadeLayout:Landroid/view/ViewGroup;

.field mLlMusicSettings:Landroid/view/ViewGroup;

.field mLlMusicVideoLayout:Landroid/view/ViewGroup;

.field mLlNewAudioNotificationSetting:Landroid/view/ViewGroup;

.field mLlPrivacyBrowse:Landroid/view/ViewGroup;

.field mLlShowHistoryBackGround:Landroid/view/ViewGroup;

.field mLlShowPrivateRoom:Landroid/view/ViewGroup;

.field private mLockModeTv:Landroid/widget/TextView;

.field private mLyricMode:[Ljava/lang/String;

.field private mLyricModeTv:Landroid/widget/TextView;

.field private mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field private volatile mPlayBackChecked:Z

.field private mPrivacyBrowse:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field private mPrivateRoom:Landroid/widget/Switch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation
.end field

.field mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

.field private mSbFadeTime:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field private mSettingVideoRedBadge:Lcom/transsion/widgets/BadgeView;

.field private mShouldNotifyOrientationChange:Z

.field private mSimultaneousDownloadStateTv:Landroid/widget/TextView;

.field private mSimultaneousMode:[Ljava/lang/String;

.field mSwitchForAudioFocus:Landroid/widget/Switch;

.field private mSwitchForFade:Landroid/widget/Switch;

.field mSwitchForMusicVideo:Landroid/widget/Switch;

.field private mTvFadeValue:Landroid/widget/TextView;

.field private mVideoDirectionMode:[Ljava/lang/String;

.field private mVideoPlayLandPortraitModeTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mCount:I

    new-instance v0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;-><init>(Lcom/transsion/tools/fragments/SettingFragment;Lif9;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    new-instance v0, Lcf9;

    invoke-direct {v0, p0}, Lcf9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBottomBarShowStateObserver:Landroidx/lifecycle/Observer;

    new-instance v0, Landroid/icu/text/DecimalFormat;

    const-string v1, "######0.00"

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/tools/fragments/SettingFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->lambda$showMobilePlayDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/tools/fragments/SettingFragment;Lcom/transsion/widgetslib/dialog/d;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tools/fragments/SettingFragment;->lambda$showVideoLandscapePortraitSettingDialog$4(Lcom/transsion/widgetslib/dialog/d;I)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/tools/fragments/SettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->lambda$initTitleBar$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/tools/fragments/SettingFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->lambda$showStreamPlayDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/tools/fragments/SettingFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic U(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayWithMobileSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method public static bridge synthetic V(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowStreamPlay:Landroid/widget/Switch;

    return-object p0
.end method

.method public static bridge synthetic W(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBiometric:Landroid/widget/Switch;

    return-object p0
.end method

.method public static bridge synthetic X(Lcom/transsion/tools/fragments/SettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPlayBackChecked:Z

    return p0
.end method

.method public static bridge synthetic Y(Lcom/transsion/tools/fragments/SettingFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPlayBackChecked:Z

    return-void
.end method

.method public static bridge synthetic Z(Lcom/transsion/tools/fragments/SettingFragment;Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tools/fragments/SettingFragment;->handleAuthenticationResult(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static bridge synthetic a0(Lcom/transsion/tools/fragments/SettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->setFadeValue(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBottomBarShowStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/SettingFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method private applyRootLinearLayoutPadding()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mContentSv:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static bridge synthetic b0(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showListen()V

    return-void
.end method

.method public static bridge synthetic c0(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchShowPrivateRoom()V

    return-void
.end method

.method public static bridge synthetic d0(Lcom/transsion/tools/fragments/SettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->updateLockScreenMode(Z)V

    return-void
.end method

.method public static bridge synthetic e0(Lcom/transsion/tools/fragments/SettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->updateLyricMode(I)V

    return-void
.end method

.method private getBackgroundOffsetPx()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/tools/activities/SettingActivity;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private handleAuthenticationResult(Landroid/content/Context;IZ)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-static {p1}, Luv3;->c(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "fingerprintEnabled"

    invoke-static {p1, v3, v1}, Luv3;->h(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    invoke-static {v2}, Luv3;->g(Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBiometric:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {v0}, Luv3;->g(Z)V

    :cond_1
    const/16 p0, 0x16

    if-ne p2, p0, :cond_3

    if-eqz p3, :cond_2

    sget p0, Lcom/transsion/tools/R$string;->biometric_unlock_success:I

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/tools/R$string;->biometric_unlock_failure:I

    goto :goto_0

    :cond_3
    const/16 p0, 0xb

    if-ne p2, p0, :cond_5

    if-eqz p3, :cond_4

    sget p0, Lcom/transsion/tools/R$string;->biometric_lock_success:I

    goto :goto_0

    :cond_4
    sget p0, Lcom/transsion/tools/R$string;->biometric_lock_failure:I

    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {p1}, Luv3;->c(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "vd_setting_hide_unlock_enabled"

    const-string p2, "enabled"

    invoke-static {p1, p2, p0}, Lq06;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private initFadeSetting(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/playercommon/R$id;->ll_music_fade_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicFadeLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/playercommon/R$id;->ill_fade:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/InterceptLinearLayout;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mIllFade:Lcom/transsion/widgets/InterceptLinearLayout;

    sget-boolean v0, Lpp3;->B:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicFadeLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mIllFade:Lcom/transsion/widgets/InterceptLinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicFadeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_fade:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForFade:Landroid/widget/Switch;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_fade_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mTvFadeValue:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$id;->sb_fade_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSbFadeTime:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object p1

    invoke-virtual {p1}, Lrt6;->a()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSbFadeTime:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForFade:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object v1

    invoke-virtual {v1}, Lrt6;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object v0

    invoke-virtual {v0}, Lrt6;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/tools/fragments/SettingFragment;->setFadeClickable(Z)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->setFadeValue(I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSbFadeTime:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    new-instance v0, Lcom/transsion/tools/fragments/SettingFragment$j;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/SettingFragment$j;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForFade:Landroid/widget/Switch;

    new-instance v0, Lef9;

    invoke-direct {v0, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method private initList()V
    .locals 4

    sget v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/SettingFragment;->updateSimultaneousSetting(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mDownloadPathTv:Landroid/widget/TextView;

    sget-object v1, Lyx2;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->h:Z

    sget v2, Lcom/transsion/playercommon/core/MainApp;->e:I

    iget p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBreakpointMode:I

    sget-boolean v3, Lcom/transsion/playercommon/core/MainApp;->j:Z

    invoke-static {v0, v1, v2, p0, v3}, Lp06;->a(Ljava/lang/String;ZIIZ)V

    return-void
.end method

.method private initLyricMode()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLyricMode:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->lyric_setting_11:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->lyric_setting_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->lyric_setting_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLyricMode:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initTitleBar(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$id;->title_bar_back:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lbf9;

    invoke-direct {v1, p0}, Lbf9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->setting:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initVideoDirectionSettingData()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoDirectionMode:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->video_playback_follow_system_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->video_playback_follow_self_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoDirectionMode:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private intDownloadFileNum()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSimultaneousMode:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->go_download_one_file_new:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->go_download_files:I

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSimultaneousMode:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private isEmbeddedSettingPage()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/tools/activities/SettingActivity;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$initTitleBar$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method private synthetic lambda$showMobilePlayDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayWithMobileSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$showStreamPlayDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowStreamPlay:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$showVideoLandscapePortraitSettingDialog$4(Lcom/transsion/widgetslib/dialog/d;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/transsion/tools/fragments/SettingFragment;->updateVideoDirectionMode(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/transsion/tools/fragments/SettingFragment;
    .locals 1

    new-instance v0, Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/SettingFragment;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onOpenOrCloseBiometric(Z)V
    .locals 12

    if-eqz p1, :cond_0

    sget v2, Lcom/transsion/tools/R$string;->disable_biometric_unlock:I

    sget v3, Lcom/transsion/tools/R$string;->prompt_fingerprint_authentication:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0xb

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/tools/fragments/SettingFragment;->fingerPrintMethod(IIIII)V

    goto :goto_0

    :cond_0
    sget v8, Lcom/transsion/tools/R$string;->enable_biometric_unlock:I

    sget v9, Lcom/transsion/tools/R$string;->prompt_fingerprint_authentication:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x16

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/tools/fragments/SettingFragment;->fingerPrintMethod(IIIII)V

    :goto_0
    return-void
.end method

.method private onShowPrivateRoomSwitchCheckedChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;->G()Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/transsion/tools/fragments/SettingFragment$g;

    invoke-direct {v1, p0}, Lcom/transsion/tools/fragments/SettingFragment$g;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    const-string p0, "show private Room"

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;->H(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/tools/fragments/PrivateRoomWarningFragment$a;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lzdc;->l:Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "show_private_room"

    invoke-static {p0, v0, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x45f

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setFadeClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mIllFade:Lcom/transsion/widgets/InterceptLinearLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mIllFade:Lcom/transsion/widgets/InterceptLinearLayout;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setFadeValue(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mTvFadeValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/playercommon/R$string;->music_fade_time:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mTvFadeValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->music_fade_time:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {p0, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private settingVideoDirection(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->initVideoDirectionSettingData()V

    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_landscape_portrait_screen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/playercommon/R$id;->setting_iv_theme_menu_red_point:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/BadgeView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSettingVideoRedBadge:Lcom/transsion/widgets/BadgeView;

    sget v1, Lcom/transsion/playercommon/R$id;->setting_tv_land_portrait_setting_state:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoPlayLandPortraitModeTv:Landroid/widget/TextView;

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lqqb;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSettingVideoRedBadge:Lcom/transsion/widgets/BadgeView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoPlayLandPortraitModeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoDirectionMode:[Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lqqb;->a(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showListen()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "listen"

    iget-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0xfa

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    iget-object v3, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAllowPlayBackGround:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->setShakeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "history"

    iget-object v3, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    iget-object v3, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlShowHistoryBackGround:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->setShakeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v0, "autoPlay"

    iget-object v3, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    iget-object v3, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAllowStreamPlay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->setShakeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const-string v0, "fade"

    iget-object v3, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    iget-object v3, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicFadeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->setShakeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mRunnable:Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private showLockScreenSettingFragment()V
    .locals 1

    new-instance v0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    const-string v0, "setup"

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->U(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    const-string p0, "setup_setuppage_locmusic_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method private showLyricSettingDialog()V
    .locals 4

    const-string v0, "setup_setuppage_autolyric_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->lyric_setting_title:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLyricMode:[Ljava/lang/String;

    sget v2, Lcom/transsion/playercommon/core/MainApp;->u:I

    new-instance v3, Lcom/transsion/tools/fragments/SettingFragment$h;

    invoke-direct {v3, p0}, Lcom/transsion/tools/fragments/SettingFragment$h;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->z([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method private showMobilePlayDialog()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->setting_allow_play_with_mobile_data_second_confirm:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->talkback_on:I

    new-instance v2, Lcom/transsion/tools/fragments/SettingFragment$f;

    invoke-direct {v2, p0}, Lcom/transsion/tools/fragments/SettingFragment$f;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lcom/transsion/tools/fragments/SettingFragment$e;

    invoke-direct {v2, p0}, Lcom/transsion/tools/fragments/SettingFragment$e;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v1, Ldf9;

    invoke-direct {v1, p0}, Ldf9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->r(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static showNewAudioSetting(Landroid/content/Context;)Z
    .locals 1

    sget-boolean p0, Lpp3;->x:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b()Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->c(I)Z

    move-result p0

    return p0
.end method

.method private showStreamPlayDialog()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->setting_auto_play_stream_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->talkback_on:I

    new-instance v2, Lcom/transsion/tools/fragments/SettingFragment$d;

    invoke-direct {v2, p0}, Lcom/transsion/tools/fragments/SettingFragment$d;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lcom/transsion/tools/fragments/SettingFragment$c;

    invoke-direct {v2, p0}, Lcom/transsion/tools/fragments/SettingFragment$c;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v1, Lhf9;

    invoke-direct {v1, p0}, Lhf9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->r(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method private showVideoLandscapePortraitSettingDialog()V
    .locals 4

    const-string v0, "setup_setuppage_orisetting_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Lab9;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoDirectionMode:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lab9;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/playercommon/R$string;->video_playback_orientation_title:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    sget v3, Lcom/transsion/playercommon/R$string;->cancel:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v1

    new-instance v2, Lgf9;

    invoke-direct {v2, p0, v1}, Lgf9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v0, v2}, Lab9;->setOnItemClickListener(Lab9$b;)V

    return-void
.end method

.method private switchBreakpointPlay()V
    .locals 2

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->k:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->k:Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "break_point_mode_switch"

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->k:Z

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-boolean p0, Lcom/transsion/playercommon/core/MainApp;->k:Z

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "3"

    :goto_0
    invoke-static {p0}, Lp06;->x(Ljava/lang/String;)V

    sget-boolean p0, Lcom/transsion/playercommon/core/MainApp;->k:Z

    if-eqz p0, :cond_1

    const-string p0, "on"

    goto :goto_1

    :cond_1
    const-string p0, "off"

    :goto_1
    const-string v0, "setup_setuppage_breakpoint_switch"

    const-string v1, "switch"

    invoke-static {v0, v1, p0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private switchNewAudioNotification()V
    .locals 3

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->g:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->g:Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "audio_new_find_notification"

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->g:Z

    invoke-static {v0, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lt08;->k(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private switchPrivacyBrowse()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPrivacyBrowse:Landroid/widget/Switch;

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->p:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private switchShowHistory()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowHistorySwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private switchShowPrivateRoom()V
    .locals 3

    sget-boolean v0, Lzdc;->l:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lzdc;->l:Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "show_private_room"

    sget-boolean v2, Lzdc;->l:Z

    invoke-static {v0, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPrivateRoom:Landroid/widget/Switch;

    sget-boolean v0, Lzdc;->l:Z

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private switchStreamPlay()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowStreamPlay:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private updateLockScreenMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLockModeTv:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/playercommon/R$string;->setting_lock_screen_player_open:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$string;->timer_close:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateLyricMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLyricModeTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLyricMode:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateVideoDirectionMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoDirectionMode:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoPlayLandPortraitModeTv:Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    const-string p1, "system"

    goto :goto_0

    :cond_1
    const-string p1, "video"

    :goto_0
    const-string v0, "setup_setuppage_orisetting_s"

    const-string v1, "orisetting"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mShouldNotifyOrientationChange:Z

    return-void
.end method


# virtual methods
.method public fingerPrintMethod(IIIII)V
    .locals 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lsv3;

    new-instance v2, Lcom/transsion/tools/fragments/SettingFragment$a;

    invoke-direct {v2, p0, v0}, Lcom/transsion/tools/fragments/SettingFragment$a;-><init>(Lcom/transsion/tools/fragments/SettingFragment;Landroid/app/Activity;)V

    invoke-direct {v1, v0, v2, p1, p5}, Lsv3;-><init>(Landroid/content/Context;Lsv3$b;II)V

    invoke-virtual {v1, v0, p2, p3, p4}, Lsv3;->g(Landroid/content/Context;III)V

    :cond_0
    return-void
.end method

.method public ingoreClickEvent()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mFirstClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mContentSv:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mContentSv:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->isEmbeddedSettingPage()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x42900000    # 72.0f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x42700000    # 60.0f

    :goto_0
    invoke-static {p1, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    add-int/2addr v2, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mContentSv:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_download:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchMobileData()V

    goto/16 :goto_1

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_playback:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchPlayBack()V

    goto/16 :goto_1

    :cond_1
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_pip:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchPipPlay()V

    goto/16 :goto_1

    :cond_2
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_mobile_play:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showMobilePlayDialog()V

    goto/16 :goto_1

    :cond_3
    sput-boolean v1, Lcom/transsion/playercommon/core/MainApp;->j:Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "allow_mobile_data_play"

    invoke-static {p0, p1, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_4
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_breakpoint:I

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchBreakpointPlay()V

    goto/16 :goto_1

    :cond_5
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_local_history:I

    const-string v2, "switch"

    if-ne p1, v0, :cond_7

    sput-boolean p2, Lcom/transsion/playercommon/core/MainApp;->l:Z

    const-class p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "allow_show_history"

    invoke-static {p0, p1, p2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p2, :cond_6

    const-string p0, "on"

    goto :goto_0

    :cond_6
    const-string p0, "off"

    :goto_0
    const-string p1, "setup_setuppage_historyhide_switch"

    invoke-static {p1, v2, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "history_red_point_show"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_stream_play:I

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showStreamPlayDialog()V

    goto/16 :goto_1

    :cond_8
    const/4 p1, 0x2

    invoke-static {p1}, Lz06;->c(I)V

    sput-boolean v1, Lzdc;->h:Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "allow_stream_auto_play"

    invoke-static {p0, p1, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_privacy_browse:I

    if-ne p1, v0, :cond_a

    sput-boolean p2, Lcom/transsion/playercommon/core/MainApp;->p:Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "private_browsing"

    invoke-static {p0, p1, p2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v1, p2}, Ldz5;->f(II)V

    goto/16 :goto_1

    :cond_a
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_privateroom:I

    if-ne p1, v0, :cond_b

    invoke-direct {p0, p2}, Lcom/transsion/tools/fragments/SettingFragment;->onShowPrivateRoomSwitchCheckedChanged(Z)V

    goto/16 :goto_1

    :cond_b
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_fade:I

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p2}, Lcom/transsion/tools/fragments/SettingFragment;->setFadeClickable(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object p1

    invoke-virtual {p1, p2}, Lrt6;->f(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSbFadeTime:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lrt6;->e(I)V

    new-instance p1, Lhb0$a;

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSbFadeTime:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "time"

    invoke-direct {p1, v1, v0}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {p1}, [Lhb0$a;

    move-result-object p1

    const-string v0, "setup_setuppage_crossfade_time"

    invoke-static {v0, p1}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lrt6;->d(Landroid/content/Context;)V

    new-instance p0, Lhb0$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {p0}, [Lhb0$a;

    move-result-object p0

    const-string p1, "setup_setuppage_crossfade_switch"

    invoke-static {p1, p0}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    goto/16 :goto_1

    :cond_c
    sget p2, Lcom/transsion/playercommon/R$id;->switch_for_biometric:I

    if-ne p1, p2, :cond_e

    invoke-static {}, Luv3;->e()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Luv3;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->onOpenOrCloseBiometric(Z)V

    goto :goto_1

    :cond_e
    sget p2, Lcom/transsion/playercommon/R$id;->switch_for_new_audio_notification:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_f

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchNewAudioNotification()V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBvCount:Lcom/transsion/widgets/BadgeView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "new_audio_already_check"

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_f
    sget p2, Lcom/transsion/playercommon/R$id;->switch_for_music_video:I

    if-ne p1, p2, :cond_10

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForMusicVideo:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "music_video"

    invoke-virtual {p1, p2, p0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_triggered_show_mv_switch"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_10
    sget p2, Lcom/transsion/playercommon/R$id;->switch_for_audio_focus:I

    if-ne p1, p2, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "click switch_for_audio_focus, value now: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForAudioFocus:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingFragment"

    invoke-static {p2, p1}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForAudioFocus:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const-string p2, "audio_focus_allow_may_duck"

    invoke-static {p1, p2, p0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A1()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->c1()V

    :cond_11
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SettingFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mFirstClickTime:J

    sget v0, Lcom/transsion/playercommon/R$id;->ll_simultaneous_downloads:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showSimultaneousSettingDialog()V

    const-string p0, "setup_setuppage_max_cl"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_download_with_mobile:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowDownloadWithMobileSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_2
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_play_background_listen:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayBackSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_auto_pip:I

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPip:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_play_with_mobile:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchPlayMobileData()V

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/transsion/playercommon/R$id;->ll_break_point:I

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowBreakpointPlay:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_local_history:I

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchShowHistory()V

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_stream_auto_play:I

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchStreamPlay()V

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/transsion/playercommon/R$id;->ll_privacy_browse:I

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchPrivacyBrowse()V

    goto/16 :goto_0

    :cond_9
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_show_privateroom:I

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchShowPrivateRoom()V

    goto/16 :goto_0

    :cond_a
    sget v0, Lcom/transsion/playercommon/R$id;->ll_lyric_setting:I

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showLyricSettingDialog()V

    goto/16 :goto_0

    :cond_b
    sget v0, Lcom/transsion/playercommon/R$id;->ll_lock_screen_setting:I

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showLockScreenSettingFragment()V

    goto/16 :goto_0

    :cond_c
    sget v0, Lcom/transsion/playercommon/R$id;->ll_music_fade_layout:I

    if-ne p1, v0, :cond_d

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForFade:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_d
    sget v0, Lcom/transsion/playercommon/R$id;->ll_biometric_unlocking:I

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Luv3;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->onOpenOrCloseBiometric(Z)V

    goto :goto_0

    :cond_e
    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_landscape_portrait_screen:I

    const/16 v2, 0x8

    if-ne p1, v0, :cond_10

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lqqb;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lqqb;->f(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSettingVideoRedBadge:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showVideoLandscapePortraitSettingDialog()V

    goto :goto_0

    :cond_10
    sget v0, Lcom/transsion/playercommon/R$id;->ll_new_audio_notification_setting:I

    if-ne p1, v0, :cond_11

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowsNewAudioNotification:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_11
    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_new_audio_notification:I

    if-ne p1, v0, :cond_12

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->switchNewAudioNotification()V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBvCount:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "new_audio_already_check"

    invoke-static {p0, p1, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_12
    sget v0, Lcom/transsion/playercommon/R$id;->ll_music_video_layout:I

    if-ne p1, v0, :cond_13

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForMusicVideo:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_13
    sget v0, Lcom/transsion/playercommon/R$id;->ll_audio_focus_layout:I

    if-ne p1, v0, :cond_14

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForAudioFocus:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_14
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mDownSetPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p0, Lcom/transsion/playercommon/R$layout;->fragment_download_setting:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "history"

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_2
    iput-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSimultaneousMode:[Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLyricMode:[Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mVideoDirectionMode:[Ljava/lang/String;

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->onDetach()V

    iget-boolean p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mShouldNotifyOrientationChange:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "change_video_orientation"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    sget-boolean v0, Lpp3;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowsNewAudioNotification:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    sput-boolean v1, Lcom/transsion/playercommon/core/MainApp;->g:Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "audio_new_find_notification"

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/tools/activities/SettingActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->getBackgroundOffsetPx()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->initTitleBar(Landroid/view/View;)V

    sget v0, Lcom/transsion/playercommon/R$id;->ll_break_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_breakpoint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowBreakpointPlay:Landroid/widget/Switch;

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->k:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowBreakpointPlay:Landroid/widget/Switch;

    new-instance v2, Lef9;

    invoke-direct {v2, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_play_with_mobile:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->settingVideoDirection(Landroid/view/View;)V

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_mobile_play:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayWithMobileSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lpp3;->y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayWithMobileSwitch:Landroid/widget/Switch;

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->j:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayWithMobileSwitch:Landroid/widget/Switch;

    new-instance v2, Lef9;

    invoke-direct {v2, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_auto_pip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {}, Lpp3;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_pip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPip:Landroid/widget/Switch;

    invoke-static {}, Lfec;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPip:Landroid/widget/Switch;

    new-instance v2, Lef9;

    invoke-direct {v2, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_play_background_listen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAllowPlayBackGround:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAllowPlayBackGround:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_playback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayBackSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v5, "ConfigIsBackPlay"

    invoke-virtual {v2, v5, v4}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayBackSwitch:Landroid/widget/Switch;

    new-instance v2, Lef9;

    invoke-direct {v2, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->ll_allow_download_with_mobile:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_download:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowDownloadWithMobileSwitch:Landroid/widget/Switch;

    invoke-static {}, Lzz0;->d()Z

    move-result v5

    sget-boolean v6, Lcom/transsion/playercommon/core/MainApp;->h:Z

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowDownloadWithMobileSwitch:Landroid/widget/Switch;

    new-instance v5, Lef9;

    invoke-direct {v5, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->ll_allow_local_history:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlShowHistoryBackGround:Landroid/view/ViewGroup;

    new-instance v5, Lff9;

    invoke-direct {v5, p0}, Lff9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_local_history:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowHistorySwitch:Landroid/widget/Switch;

    sget-boolean v5, Lcom/transsion/playercommon/core/MainApp;->l:Z

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowHistorySwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->ll_allow_stream_auto_play:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAllowStreamPlay:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_stream_play:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowStreamPlay:Landroid/widget/Switch;

    sget-boolean v5, Lzdc;->h:Z

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowStreamPlay:Landroid/widget/Switch;

    new-instance v5, Lef9;

    invoke-direct {v5, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget-object v5, Lw6c;->a:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v5, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAllowStreamPlay:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->ll_privacy_browse:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlPrivacyBrowse:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_privacy_browse:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPrivacyBrowse:Landroid/widget/Switch;

    sget-boolean v5, Lcom/transsion/playercommon/core/MainApp;->p:Z

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPrivacyBrowse:Landroid/widget/Switch;

    new-instance v5, Lef9;

    invoke-direct {v5, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->ll_allow_show_privateroom:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlShowPrivateRoom:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_privateroom:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPrivateRoom:Landroid/widget/Switch;

    sget-boolean v5, Lzdc;->l:Z

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mPrivateRoom:Landroid/widget/Switch;

    new-instance v5, Lef9;

    invoke-direct {v5, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_biometric:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBiometric:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Luv3;->c(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lsv3;->e(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_5

    :cond_6
    move v5, v4

    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBiometric:Landroid/widget/Switch;

    new-instance v5, Lef9;

    invoke-direct {v5, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->ll_biometric_unlocking:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlBiometricUnlocking:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/playercommon/R$id;->ll_music_video_layout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicVideoLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_music_video:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForMusicVideo:Landroid/widget/Switch;

    sget-boolean v2, Lpp3;->y:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicVideoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicVideoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForMusicVideo:Landroid/widget/Switch;

    new-instance v5, Lef9;

    invoke-direct {v5, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForMusicVideo:Landroid/widget/Switch;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "music_video"

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_7
    sget v2, Lcom/transsion/playercommon/R$id;->ll_audio_focus_layout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAudioFocusLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/playercommon/R$id;->switch_for_audio_focus:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForAudioFocus:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlAudioFocusLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForAudioFocus:Landroid/widget/Switch;

    new-instance v5, Lef9;

    invoke-direct {v5, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSwitchForAudioFocus:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v6, "audio_focus_allow_may_duck"

    invoke-static {v5, v6, v4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    sget-boolean v2, Lpp3;->p:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlShowPrivateRoom:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Luv3;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsv3;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlBiometricUnlocking:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_a
    :goto_6
    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlBiometricUnlocking:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    sget v2, Lcom/transsion/playercommon/R$id;->ll_simultaneous_downloads:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget v5, Lcom/transsion/playercommon/R$id;->tv_simultaneous_downloads_state:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSimultaneousDownloadStateTv:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v5, Lcom/transsion/playercommon/R$id;->tv_download_folder_path:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/transsion/tools/fragments/SettingFragment;->mDownloadPathTv:Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$id;->sv_content:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iput-object v5, p0, Lcom/transsion/tools/fragments/SettingFragment;->mContentSv:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->applyRootLinearLayoutPadding()V

    :cond_b
    sget v5, Lcom/transsion/playercommon/R$id;->download_subtitle:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-boolean v6, Lpp3;->k:Z

    if-nez v6, :cond_c

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    sget v6, Lcom/transsion/playercommon/R$id;->divider_download_folder:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->ll_download_folder:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-static {}, Lzz0;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lcom/transsion/playercommon/R$string;->visha_transfer:I

    goto :goto_8

    :cond_d
    sget v2, Lcom/transsion/playercommon/R$string;->download:I

    :goto_8
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->tv_allow_download_with_mobile_data:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lzz0;->d()Z

    move-result v5

    if-eqz v5, :cond_e

    sget v5, Lcom/transsion/playercommon/R$string;->visha_wifi_only_transfer:I

    goto :goto_9

    :cond_e
    sget v5, Lcom/transsion/playercommon/R$string;->setting_allow_download_with_mobile_data:I

    :goto_9
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lpp3;->y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    goto :goto_a

    :cond_f
    move v2, v4

    :goto_a
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->initList()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "source"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    :cond_11
    sget v0, Lcom/transsion/playercommon/R$id;->ll_music_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlMusicSettings:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/playercommon/R$id;->ll_lyric_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlLyricSetting:Landroid/view/ViewGroup;

    sget-boolean v2, Lpp3;->z:Z

    if-nez v2, :cond_12

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlLyricSetting:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->tv_lyric_setting_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLyricModeTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->initLyricMode()V

    sget v0, Lcom/transsion/playercommon/core/MainApp;->u:I

    invoke-direct {p0, v0}, Lcom/transsion/tools/fragments/SettingFragment;->updateLyricMode(I)V

    :goto_b
    sget v0, Lcom/transsion/playercommon/R$id;->ll_lock_screen_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlLockScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlLockScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->tv_lock_setting_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLockModeTv:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$id;->ll_new_audio_notification_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlNewAudioNotificationSetting:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/playercommon/R$id;->switch_for_new_audio_notification:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowsNewAudioNotification:Landroid/widget/Switch;

    sget v0, Lcom/transsion/playercommon/R$id;->bv_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BadgeView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mBvCount:Lcom/transsion/widgets/BadgeView;

    invoke-static {}, Lydc;->e()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v5, "new_audio_already_check"

    invoke-static {v2, v5, v4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_c

    :cond_13
    move v2, v4

    goto :goto_d

    :cond_14
    :goto_c
    move v2, v3

    :goto_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->k()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SettingFragment;->showNewAudioSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "SettingFragment"

    const-string v2, "showNewAudioSetting : false"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlNewAudioNotificationSetting:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_15
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowsNewAudioNotification:Landroid/widget/Switch;

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->g:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowsNewAudioNotification:Landroid/widget/Switch;

    new-instance v2, Lef9;

    invoke-direct {v2, p0}, Lef9;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mLlNewAudioNotificationSetting:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_e
    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->initFadeSetting(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->showListen()V

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    const-string v0, "history"

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment;->mKeySource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v3, Lcom/transsion/tools/fragments/SettingFragment$b;

    invoke-direct {v3, p0}, Lcom/transsion/tools/fragments/SettingFragment$b;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    sput-boolean v4, Lcom/transsion/playercommon/core/MainApp;->q:Z

    :cond_17
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "skin_theme"

    invoke-static {v0, v2}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/ThemeData;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/playercommon/R$string;->default_skin:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mContentSv:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->addBottomBarShowStateObserver()V

    return-void
.end method

.method public refreshThemeBackground()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/tools/activities/SettingActivity;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->getBackgroundOffsetPx()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SettingFragment;

    move-result-object p0

    return-object p0
.end method

.method public setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SettingFragment;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/SettingFragment;

    return-object p0
.end method

.method public showSimultaneousSettingDialog()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/tools/fragments/SettingFragment;->intDownloadFileNum()V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->setting_simultaneous_downloads:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSimultaneousMode:[Ljava/lang/String;

    sget v2, Lcom/transsion/playercommon/core/MainApp;->e:I

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/transsion/tools/fragments/SettingFragment$i;

    invoke-direct {v3, p0}, Lcom/transsion/tools/fragments/SettingFragment$i;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->z([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mDownSetPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public switchMobileData()V
    .locals 4

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "allow_mobile_data"

    sget-boolean v3, Lcom/transsion/playercommon/core/MainApp;->h:Z

    invoke-static {v0, v2, v3}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowDownloadWithMobileSwitch:Landroid/widget/Switch;

    invoke-static {}, Lzz0;->d()Z

    move-result v0

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->h:Z

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {}, Lzz0;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lcz5;->d(Z)V

    goto :goto_1

    :cond_1
    sget-boolean p0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    invoke-static {p0}, Lp06;->i(Z)V

    :goto_1
    return-void
.end method

.method public switchPipPlay()V
    .locals 2

    invoke-static {}, Lfec;->a()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "auto_pip"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {p0}, Lh06;->c(Z)V

    return-void
.end method

.method public switchPlayBack()V
    .locals 4

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ConfigIsBackPlay"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayBackSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-string v1, "switch"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vd_more_background_switch"

    invoke-static {v0, p0}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public switchPlayMobileData()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mAllowPlayWithMobileSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    sget-boolean p0, Lcom/transsion/playercommon/core/MainApp;->j:Z

    invoke-static {p0}, Lz06;->b(Z)V

    return-void
.end method

.method public updateSimultaneousSetting(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment;->mSimultaneousDownloadStateTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->go_download_files:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->go_download_one_file_new:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

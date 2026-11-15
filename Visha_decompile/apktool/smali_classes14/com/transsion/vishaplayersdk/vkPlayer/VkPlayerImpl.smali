.class public Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;,
        Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentTime:I

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mDuration:I

.field private mFirstInitEd:I

.field private mInitMute:Z

.field private mJsCallback:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

.field private mMuted:Z

.field private mNeedCheckTouch:Z

.field private mPlaying:Z

.field private mVideoHeight:I

.field private mVideoWidth:I

.field protected mVkPlayer:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCurrentTime:I

    iput v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mDuration:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mMuted:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mInitMute:Z

    iput v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mFirstInitEd:I

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mNeedCheckTouch:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->lambda$initPlayer$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCurrentTime:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mFirstInitEd:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mInitMute:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mMuted:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCurrentTime:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCustomView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mDuration:I

    return-void
.end method

.method private synthetic lambda$initPlayer$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mNeedCheckTouch:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic m(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mFirstInitEd:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mMuted:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    return-void
.end method

.method public static bridge synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private refreshView(Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    new-instance v1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$2;-><init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    iget p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCurrentTime:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mDuration:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoHeight:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoWidth:I

    return p0
.end method

.method public initPlayer(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mJsCallback:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;-><init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mJsCallback:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    :cond_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    sget p1, Lcom/transsion/vishaplayersdk/R$color;->biometric_error_color:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    new-instance v1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$1;-><init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    new-instance v0, Lxfc;

    invoke-direct {v0, p0}, Lxfc;-><init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mJsCallback:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    const-string v1, "AndroidVk"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->getInstance()Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

    move-result-object v1

    const-string v2, "/#/vk?vkUrl="

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->getDomainByApi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&appName=aiCalculator"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkInitMute:Z

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mInitMute:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkTouchCheck:Z

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mNeedCheckTouch:Z

    sget-object p1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNeedCheckTouch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkTouchCheck:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->onResume()V

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->resumeTimers()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initPlayer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public layoutPlayController(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    const-string p1, "layout_play_controller_failed: mVkPlayer not init"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->isValidConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->refreshView(Landroid/view/ViewGroup;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    const-string v0, "layout_play_controller_failed: invalid layout config"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v0, 0x895452

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x40a

    invoke-virtual {p0, v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onActivityPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 3
    .param p1    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    sget-object p1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget p1, p2, Landroidx/media3/common/VideoSize;->width:I

    int-to-float v0, p1

    iget v2, p2, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoWidth:I

    iget v0, p2, Landroidx/media3/common/VideoSize;->height:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnVideoSizeChanged(IIII)V

    iget p1, p2, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    if-lez p1, :cond_0

    const/16 p2, 0x2711

    invoke-virtual {p0, p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnInfo(II)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->PAUSE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->resetListeners()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->reset()V

    return-void
.end method

.method public reset()V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoWidth:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVideoHeight:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mCurrentTime:I

    iput v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mDuration:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mMuted:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mInitMute:Z

    iput v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mFirstInitEd:I

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mNeedCheckTouch:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mJsCallback:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->destroy()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mJsCallback:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->DESTROY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->a(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    :cond_2
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->SEEK:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mMuted:Z

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->UN_MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    :goto_0
    invoke-static {p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->a(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->PLAY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->a(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->pause()V

    return-void
.end method

.method public togglePlay()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "togglePlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mVkPlayer:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->start()V

    :goto_0
    return-void
.end method

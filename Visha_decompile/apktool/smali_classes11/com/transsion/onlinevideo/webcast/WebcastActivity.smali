.class public Lcom/transsion/onlinevideo/webcast/WebcastActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:J

.field public R:J

.field public S:I

.field public T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

.field public U:Lo18;

.field public V:Z

.field public W:J

.field public X:J

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a0:I

.field public b0:Ljava/lang/String;

.field public c0:Z

.field public final d0:Ljava/lang/String;

.field public e0:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->V:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->d0:Ljava/lang/String;

    new-instance v0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;-><init>(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->e0:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    return-void
.end method

.method private enterPip()V
    .locals 11

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->U:Lo18;

    iget-object v1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_floating_pause:I

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_play:I

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoWidth()I

    move-result v6

    iget-object v1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoHeight()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v10}, Lo18;->x(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lo18;->q(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    return-void
.end method

.method private exitOthersPip()V
    .locals 1

    sget-object p0, Lo18;->g:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    :cond_0
    sget-object p0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private flushPip(Z)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->U:Lo18;

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_pause:I

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_play:I

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoWidth()I

    move-result v6

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoHeight()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v10}, Lo18;->s(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V

    return-void
.end method

.method private getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPlayerActivity(Landroid/app/Activity;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLoginState(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserOpenID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitTokenType(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPalmToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withClientIP(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withGAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withCountryCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withVAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    iget p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->S:I

    invoke-static {p0}, Lkfc;->m(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitVIP(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLanguageCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->v0(Landroid/view/View;)V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "router_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->P:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->O:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_id()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Q:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSerialId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->R:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->S:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_id()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->W:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->X:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getChannel_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Y:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Z:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_sort()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->a0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->N:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->b0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static bridge synthetic q0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->c0:Z

    return p0
.end method

.method public static bridge synthetic r0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Q:J

    return-wide v0
.end method

.method public static bridge synthetic s0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->c0:Z

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->flushPip(Z)V

    return-void
.end method

.method private u0()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->exitOthersPip()V

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->detail_player:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iput-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    new-instance v0, Lo18;

    invoke-direct {v0}, Lo18;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->U:Lo18;

    return-void
.end method


# virtual methods
.method public final initVishaPlayer()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->registerNetStatus(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerType(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->stopPlay()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoReset()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setIfCurrentIsFullscreen(Z)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setIsTouchWiget(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setLockLand(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setAutoFullWithSize(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setShowFullAnimation(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Q:J

    invoke-virtual {v0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->R:J

    invoke-virtual {v0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setSerialID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setHardwareAccelerated(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->e0:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->w0(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    new-instance v1, Lcom/transsion/onlinevideo/webcast/WebcastActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity$a;-><init>(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setBackFromFullScreenListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    new-instance v1, Lric;

    invoke-direct {v1, p0}, Lric;-><init>(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setPipListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->release()V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_webcast_fullscreen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->parseIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->u0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->initVishaPlayer()V

    return-void
.end method

.method public onDestroy()V
    .locals 15

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onDestroy()V

    sget-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->R:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Q:J

    iget-wide v7, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->X:J

    iget-wide v9, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->W:J

    iget-object v11, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->P:Ljava/lang/String;

    iget-object v12, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Z:Ljava/lang/String;

    iget-object v13, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Y:Ljava/lang/String;

    iget-object v14, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->b0:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v14}, Lyz5;->e(JJLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->clear()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->w0(Z)V

    invoke-static {p0}, Lo18;->h(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->gotoBackground()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lo18;->q(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    invoke-static {}, Lyz5;->g()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->flushPip(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo18;->f()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    invoke-static {}, Lyz5;->i()V

    :goto_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->V:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 11

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->backToFront()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getIsPausedByUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isInPlayingState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStart(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->V:Z

    invoke-static {}, Lwz5;->w()V

    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->Q:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->W:J

    iget v9, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->a0:I

    iget p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->S:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v1 .. v10}, Lwz5;->Z(JJJJILjava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->V:Z

    return-void
.end method

.method public final synthetic v0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->enterPip()V

    return-void
.end method

.method public w0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->U:Lo18;

    new-instance v0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$c;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity$c;-><init>(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)V

    invoke-virtual {p1, p0, v0}, Lo18;->o(Landroid/app/Activity;Lo18$b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->U:Lo18;

    invoke-virtual {p1, p0}, Lo18;->v(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.class public Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;
.super Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/utils/WebcastListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdComplete()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "vd_sdk_adendduration_p"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdStartPlaying()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "vd_sdk_adstartduration_p"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_play_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p2, Lcom/transsion/onlinevideo/R$drawable;->ic_replay_feed_stream:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->start(Z)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Ljava/lang/String;)V

    return-void
.end method

.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->Q(I)V

    return-void
.end method

.method public varargs onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_play_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p2, Lcom/transsion/onlinevideo/R$drawable;->ic_replay_feed_stream:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->start(Z)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Ljava/lang/String;)V

    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setNeedMute(Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    :cond_3
    return-void
.end method

.method public onNeedVip()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onNeedVip()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/transsion/onlinevideo/R$id;->iv_play_logo:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_replay_feed_stream:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Ljava/lang/String;)V

    return-void
.end method

.method public varargs onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le07;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/transsion/onlinevideo/R$string;->no_network:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/onlinevideo/R$string;->ott_feed_play_error:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/transsion/onlinevideo/R$id;->loading_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz p0, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p0

    if-ne p0, p2, :cond_1

    const-string p0, "vd_sdk_videoprepare_p"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public varargs onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "playdetail"

    invoke-static {p2, p1, p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->T0(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onSetMute(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->n(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "vd_sdk_playercoreprepare_p"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs onVideoAuthFailed(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoAuthFailed(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V

    return-void
.end method

.method public varargs onVideoAuthSuccess(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoAuthSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V

    return-void
.end method

.method public varargs onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->showMuteButton(ZZ)V

    :cond_0
    return-void
.end method

.method public varargs onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lyz5;->a:Ljava/lang/String;

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "vd_sdk_videostartplaying_p"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setAspectRatio(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I

    move-result p1

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->o(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->start(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->i(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->loading_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->X()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getLiveMuteButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->showMuteButton(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/transsion/onlinevideo/R$id;->loading_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->X()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->h(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getLiveMuteButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->h(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method

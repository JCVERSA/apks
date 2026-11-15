.class public Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;
.super Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/webcast/WebcastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onBufferingUpdate(Z[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onBufferingUpdate(Z[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lyz5;->f()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->r0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lyz5;->h(J)V

    :goto_0
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->shouldAllowedMobileNetPlay()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    :cond_0
    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public varargs onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->t0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;Z)V

    :cond_0
    return-void
.end method

.method public varargs onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->q0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$b;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->s0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;Z)V

    sget-object p0, Lyz5;->a:Ljava/lang/String;

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

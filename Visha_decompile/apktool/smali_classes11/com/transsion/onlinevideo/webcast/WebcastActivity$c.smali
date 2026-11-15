.class public Lcom/transsion/onlinevideo/webcast/WebcastActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo18$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/webcast/WebcastActivity;->w0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/webcast/WebcastActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$c;->a:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$c;->a:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    iget-object v0, v0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$c;->a:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    iget-object v0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->T:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/webcast/WebcastActivity;->t0(Lcom/transsion/onlinevideo/webcast/WebcastActivity;Z)V

    :cond_0
    return-void
.end method

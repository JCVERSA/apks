.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo18$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->G1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->flushPip(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->H1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->flushPip(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->A1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isAdPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->A1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->A1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->flushPip(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPlaying:Z

    :cond_1
    return-void
.end method

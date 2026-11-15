.class public final Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;
.super Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d$a;
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAutoComplete position="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mVideoTitle="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokVideoItemFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs onBufferingUpdate(Z[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onBufferingUpdate(Z[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    return-void
.end method

.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickBlank position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mVideoTitle="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->M0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    return-void
.end method

.method public varargs onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickResume position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mVideoTitle="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->K0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->B0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->p0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->setUserPauseHoldAcrossHostResume(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->a0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->C0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    sget-object p2, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->ACTIVE:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    const-string v0, "onClickResume"

    invoke-static {p1, p2, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->N0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->I0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;J)V

    return-void
.end method

.method public varargs onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->p0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->getPlayerErrMsgForLog()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayError position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mVideoTitle="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  url="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errMsg="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TiktokVideoItemFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->D0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Z(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->G0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->l0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->J0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->r0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->dismissNetworkErrorLayers()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->GONE_FOR_ERROR:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Y(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;)V

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mVideoTitle="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->p0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->b(Landroid/content/Context;)Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    move-result-object p2

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    const/4 v1, 0x2

    if-eq p2, v1, :cond_7

    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->J0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->dismissNetworkErrorLayers()V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->G0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->l0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Landroid/widget/ProgressBar;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->D0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Z(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->V(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, v1}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->setStartAfterPrepared(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->v0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->d0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->VIDEO:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->COVER:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    :goto_0
    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Y(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->L0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->r0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->w0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    goto :goto_1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_WIFI:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->W(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;)V

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_NET:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->W(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;)V

    :goto_1
    return-void
.end method

.method public onRetryPlay()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->p0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->isNetworkBlockRetryPending()Z

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->dismissNetworkErrorLayers()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->D0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Z(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v4}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Y0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2, v3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->K0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2, v3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->B0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    invoke-virtual {v0, v3}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->setUserPauseHoldAcrossHostResume(Z)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2, v5}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2, v3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->r0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->d()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->m0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->s0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->isPreparedBeforeNetworkConsent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->resumeAfterNetworkConsent()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->y0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->z0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    :goto_0
    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartPrepared position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mVideoTitle="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->b(Landroid/content/Context;)Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    move-result-object p1

    sget-object p2, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NONE:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->x0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->g0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->l0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->b0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    return-void
.end method

.method public varargs onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoPause position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mVideoTitle="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->v0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->L0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->f0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->e0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->k0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->O0()Z

    move-result p1

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const-string p2, "onVideoPause"

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->t0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->r0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->U(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    return-void
.end method

.method public varargs onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    const-string v0, "objects"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStartShow position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mVideoTitle="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->f0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->p0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->isOwningSharedPlayer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStartShow ignore (not owner) position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mVideoTitle="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->isNetworkErrorShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->x0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->D0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Z(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->j0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->o0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->COVER:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Y(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->X(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    :cond_4
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const-string v1, "onVideoStartShow"

    invoke-static {p0, v1, p2, p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->R2(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

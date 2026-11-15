.class public Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
    return-void
.end method

.method public b(JJI)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lxnd;->b(JJI)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoClickToPauseOrPlay isPlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashAdVideoView"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0}, Lxnd;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0}, Lxnd;->e()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->f(Z)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0}, Lxnd;->onComplete()V

    :cond_1
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->onIsPlayingChanged(Z)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lxnd;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->onVolumeChanged(F)V

    :cond_1
    return-void
.end method

.class public Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    invoke-interface {v0, p1}, Lxnd;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->j(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b(JJI)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lxnd;->b(JJI)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->c(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    invoke-interface {v0}, Lxnd;->d()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    invoke-interface {v0}, Lxnd;->e()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->f(Z)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    invoke-interface {v0}, Lxnd;->onComplete()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setCompanionViewVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->j(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    invoke-interface {v0, p1}, Lxnd;->onIsPlayingChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->j(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lxnd;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lxnd;

    move-result-object v0

    invoke-interface {v0, p1}, Lxnd;->onVolumeChanged(F)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->i(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

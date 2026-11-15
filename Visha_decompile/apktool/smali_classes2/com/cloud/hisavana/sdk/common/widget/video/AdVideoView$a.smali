.class public Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    invoke-interface {v0, p1}, Lxnd;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBitmap failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(JJI)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

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

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->c(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Z)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0}, Lxnd;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0}, Lxnd;->e()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->f(Z)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0}, Lxnd;->onComplete()V

    :cond_0
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->onIsPlayingChanged(Z)V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    move-result-object v0

    if-lez p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lhm4;->h()I

    move-result v1

    :goto_0
    if-lez p2, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lhm4;->g()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->adaptVideoSize(II)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lxnd;->onVideoSizeChanged(II)V

    :cond_2
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;

    move-result-object p0

    invoke-interface {p0, p1}, Lxnd;->onVolumeChanged(F)V

    :cond_0
    return-void
.end method

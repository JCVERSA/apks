.class Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/j4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/j4;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public b(JJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-wide v2, p1

    .line 16
    move-wide v4, p3

    .line 17
    move v6, p5

    .line 18
    invoke-interface/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/j4;->b(JJI)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onVideoClickToPauseOrPlay isPlay "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "SplashAdVideoView"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/j4;->d()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/j4;->e(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/j4;->onComplete()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/j4;->onIsPlayingChanged(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/j4;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/j4;->onVideoSizeChanged(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Landroid/widget/ImageView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Landroid/widget/ImageView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/j4;->onVolumeChanged(F)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.class Lcom/mgtv/thirdsdk/playcore/e/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/MediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/e/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/thirdsdk/playcore/e/f;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTime()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method public getPositiveView()Lcom/hunantv/media/widget/IVideoView;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSnapshot(II)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aM:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->o()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->c(Lcom/mgtv/thirdsdk/playcore/e/f;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->c(Lcom/mgtv/thirdsdk/playcore/e/f;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getVideoWith()I
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->n()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->c(Lcom/mgtv/thirdsdk/playcore/e/f;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->c(Lcom/mgtv/thirdsdk/playcore/e/f;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_1
    return v0
.end method

.method public isContentPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    return p0
.end method

.method public onAdClick()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public onAdComplete()V
    .locals 6

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->k()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdComplete()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdEmpty()V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/f;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onAdComplete\uff1aonAdEmpty"

    invoke-static {v0, v2, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->g(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    const/4 v2, 0x4

    filled-new-array {v2}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/f;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdComplete\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v4}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aA:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->h(Lcom/mgtv/thirdsdk/playcore/e/f;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->g(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->i(Lcom/mgtv/thirdsdk/playcore/e/f;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    :cond_5
    return-void
.end method

.method public onAdCountClicked()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->l(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/ssp/authbase/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->l(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/ssp/authbase/c;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/e/f$1$1;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/e/f$1$1;-><init>(Lcom/mgtv/thirdsdk/playcore/e/f$1;)V

    invoke-interface {v0, v1}, Lcom/mgtv/ssp/authbase/c;->a(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V

    :cond_0
    return-void
.end method

.method public onAdError(Lcom/mgmi/ssp/AdError;)V
    .locals 2
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdError(Lcom/mgmi/ssp/AdError;)V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/f;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onAdError"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    new-instance p0, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p0}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/ssp/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/ssp/AdError;->getErrorCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdPrepared()V
    .locals 3

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/f;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdPrepare"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->k()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aa:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;Z)Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->e(Lcom/mgtv/thirdsdk/playcore/e/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdPrepare()V

    :cond_3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->j(Lcom/mgtv/thirdsdk/playcore/e/f;)V

    return-void
.end method

.method public onAdRequestSuccess()V
    .locals 3

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f(Lcom/mgtv/thirdsdk/playcore/e/f;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V

    return-void
.end method

.method public onAdStart()V
    .locals 14

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aa:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;Z)Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->e(Lcom/mgtv/thirdsdk/playcore/e/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/f;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onAdStart"

    invoke-static {v0, v2, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/hunantv/imgo/util/e;->a:J

    sub-long v4, v0, v4

    sget-wide v6, Lcom/hunantv/imgo/util/e;->b:J

    sget-wide v8, Lcom/hunantv/imgo/util/e;->c:J

    sget-wide v10, Lcom/hunantv/imgo/util/e;->d:J

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f(Lcom/mgtv/thirdsdk/playcore/e/f;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "front_ad"

    invoke-virtual/range {v3 .. v13}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(JJJJLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdStartPlayering()V

    :cond_1
    return-void
.end method

.method public onClickBackButton()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onClickBack()V

    :cond_0
    return-void
.end method

.method public onClickFullScreenButton()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onClickFullScreen()V

    :cond_0
    return-void
.end method

.method public onNoAd(Lcom/mgmi/ssp/AdError;)V
    .locals 7
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->k()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->Z:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mgmi/ssp/AdError;->getErrorCode()I

    move-result v2

    const/16 v3, 0x138e

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iput-boolean v0, v2, Lcom/mgtv/thirdsdk/playcore/e;->Z:Z

    :cond_2
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iput-boolean v1, v2, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdComplete()V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2, v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;Z)Z

    :cond_3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdEmpty()V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/f;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onNoAd\uff1aonAdEmpty"

    invoke-static {v2, v3, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_4
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->g(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    const/4 v3, 0x4

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/f;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNoAd--------------\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v5}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms; error:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/ssp/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-boolean p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->aA:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->h(Lcom/mgtv/thirdsdk/playcore/e/f;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->g(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    :goto_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->i(Lcom/mgtv/thirdsdk/playcore/e/f;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    :cond_6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f(Lcom/mgtv/thirdsdk/playcore/e/f;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateAdTime(I)V
    .locals 0

    return-void
.end method

.method public onUpdateStatus(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->k(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->k(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;->onUpdateStatus(ZZZ)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public resumePlay()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f$1;->a:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    :cond_0
    return-void
.end method

.class Lcom/mgmi/ssp/PreRollVideoAd$1;
.super Lcom/mgmi/ads/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ssp/PreRollVideoAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/MediaListener;IZLcom/mgmi/ssp/TParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ssp/PreRollVideoAd;


# direct methods
.method public constructor <init>(Lcom/mgmi/ssp/PreRollVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-direct {p0}, Lcom/mgmi/ads/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->getCurrentTime()I

    move-result p0

    return p0
.end method

.method public getSnapshot(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgmi/ssp/MediaListener;->getSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$100(Lcom/mgmi/ssp/PreRollVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$100(Lcom/mgmi/ssp/PreRollVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$100(Lcom/mgmi/ssp/PreRollVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->getVideoWith()I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$100(Lcom/mgmi/ssp/PreRollVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$100(Lcom/mgmi/ssp/PreRollVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$100(Lcom/mgmi/ssp/PreRollVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isContentPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->isContentPlaying()Z

    move-result p0

    return p0
.end method

.method public isFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->isFullScreen()Z

    move-result p0

    return p0
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V
    .locals 4
    .param p2    # Lcom/mgmi/ads/api/AdWidgetInfoImp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/mgmi/ads/api/a$a;->START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mgmi/f/e;->g(Z)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p1, v1}, Lcom/mgmi/ssp/PreRollVideoAd;->setAdBackground(I)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdComplete()V

    :cond_0
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd START_POSITIVE_REQUESTED onAdComplete"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/mgmi/ads/api/a$a;->START_PLAY_AD:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd  @@@@START_PLAY_AD"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/mgmi/ads/api/a$a;->PAUSE_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mgmi/f/e;->g(Z)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p1, v1}, Lcom/mgmi/ssp/PreRollVideoAd;->setAdBackground(I)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdPrepared()V

    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd PAUSE_POSITIVE_REQUESTED onAdPrepared"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FAIL:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p1, v1}, Lcom/mgmi/ssp/PreRollVideoAd;->setAdBackground(I)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    new-instance p1, Lcom/mgmi/ssp/AdError;

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getErrorCode()I

    move-result v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd AD_REQUEST_FAIL onNoAd"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/mgmi/ads/api/a$a;->VIP_START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mgmi/f/e;->g(Z)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p1, v1}, Lcom/mgmi/ssp/PreRollVideoAd;->setAdBackground(I)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdComplete()V

    :cond_5
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd VIP_START_POSITIVE_REQUESTED onNoAd"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/mgmi/ads/api/a$a;->RESUME_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mgmi/f/e;->g(Z)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p1, v1}, Lcom/mgmi/ssp/PreRollVideoAd;->setAdBackground(I)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdComplete()V

    :cond_7
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd RESUME_POSITIVE_REQUESTED onAdComplete"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/mgmi/ads/api/a$a;->FULLSCREEN_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "PreRollVideoAd FULLSCREEN_REQUESTED onClickFullScreenButton"

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onClickFullScreenButton()V

    :cond_9
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/mgmi/ads/api/a$a;->HALFSCREEN_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onClickBackButton()V

    :cond_b
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    sget-object v0, Lcom/mgmi/ads/api/a$a;->BACK_BUTTON_REQUEST:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onClickBackButton()V

    :cond_d
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd BACK_BUTTON_REQUEST onClickBackButton"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_SUCCESS:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdRequestSuccess()V

    :cond_f
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PreRollVideoAd AD_REQUEST_SUCCESS  widgetInfo.getWidgetType() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getWidgetType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcom/mgmi/ads/api/a$a;->PLAYER_PROGRESS_UPDATE:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p2, :cond_1c

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getAdDurationRemain()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/MediaListener;->onUpdateAdTime(I)V

    goto/16 :goto_1

    :cond_11
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_BACK_PICTURE_IS_SHOW:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p2, :cond_1c

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdStart()V

    goto/16 :goto_1

    :cond_12
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_BACK_PICTURE_IS_FINISH:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$300(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p1, v1}, Lcom/mgmi/ssp/PreRollVideoAd;->setAdBackground(I)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$300(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object p0

    sget-object p1, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_FINISH:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mgmi/f/e;->g(Z)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdComplete()V

    goto/16 :goto_1

    :cond_14
    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_VIP:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/mgmi/ads/api/a$a;->LOAD_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_0

    :cond_15
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_COUNT_CLICK:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdCountClicked()V

    goto/16 :goto_1

    :cond_16
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_PAUSEAD_REPLAYER:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->resumePlay()V

    goto :goto_1

    :cond_17
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_PLAYER_ON_FIRST_FRAME:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdStart()V

    goto :goto_1

    :cond_18
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_PREPARED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mgmi/f/e;->g(Z)V

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdPrepared()V

    goto :goto_1

    :cond_19
    :goto_0
    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getClickUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mgmi/ssp/MediaListener;->onAdClick(Ljava/lang/String;)V

    :cond_1a
    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/MediaListener;->onAdClick()V

    :cond_1b
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreRollVideoAd onAdClick"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1
    return-void
.end method

.method public onUpdateStatus(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$1;->a:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/mgmi/ssp/MediaListener;->onUpdateStatus(ZZZ)V

    :cond_0
    return-void
.end method

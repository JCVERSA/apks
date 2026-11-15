.class Lcom/mgmi/ssp/IncentiveVideoAd$2;
.super Lcom/mgmi/ads/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ssp/IncentiveVideoAd;->init(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ssp/IncentiveVideoListener;

.field final synthetic b:Lcom/mgmi/ssp/IncentiveVideoAd;


# direct methods
.method public constructor <init>(Lcom/mgmi/ssp/IncentiveVideoAd;Lcom/mgmi/ssp/IncentiveVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    iput-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->a:Lcom/mgmi/ssp/IncentiveVideoListener;

    invoke-direct {p0}, Lcom/mgmi/ads/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$000(Lcom/mgmi/ssp/IncentiveVideoAd;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$000(Lcom/mgmi/ssp/IncentiveVideoAd;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public isFullScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V
    .locals 2
    .param p2    # Lcom/mgmi/ads/api/AdWidgetInfoImp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/mgmi/ads/api/a$a;->START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdComplete()V

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/a$a;->PAUSE_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdPrepared()V

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FAIL:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    new-instance p1, Lcom/mgmi/ssp/AdError;

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getErrorCode()I

    move-result v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/mgmi/ads/api/a$a;->VIP_START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdComplete()V

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/mgmi/ads/api/a$a;->RESUME_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdComplete()V

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/mgmi/ads/api/a$a;->FULLSCREEN_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$200(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setLandScape()V

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lcom/mgmi/ads/api/a$a;->HALFSCREEN_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$200(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setPortrait()V

    goto/16 :goto_2

    :cond_6
    sget-object v0, Lcom/mgmi/ads/api/a$a;->BACK_BUTTON_REQUEST:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_2

    :cond_7
    sget-object v0, Lcom/mgmi/ads/api/a$a;->PLAYER_PROGRESS_UPDATE:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getAdDurationRemain()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/IncentiveVideoListener;->onUpdateAdTime(I)V

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_VIP:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/mgmi/ads/api/a$a;->LOAD_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    sget-object p2, Lcom/mgmi/ads/api/a$a;->CLOSE_AD:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->a:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdClosed()V

    goto/16 :goto_2

    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$300(Lcom/mgmi/ssp/IncentiveVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getClickUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg4d;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getAwayAppType()Lcom/mgmi/ads/api/d;

    move-result-object p1

    sget-object v0, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    if-ne p1, v0, :cond_b

    new-instance p1, Lcom/mgmi/ViewGroup/a/a;

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$300(Lcom/mgmi/ssp/IncentiveVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mgmi/ViewGroup/a/a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$300(Lcom/mgmi/ssp/IncentiveVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_confirm_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/a/a;->a(Ljava/lang/CharSequence;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_cancel:I

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->b(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_confim:I

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->c(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->a(Z)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    new-instance v1, Lcom/mgmi/ssp/IncentiveVideoAd$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mgmi/ssp/IncentiveVideoAd$2$1;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd$2;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->a(Lcom/mgmi/ViewGroup/a/a$a;)Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {p1}, Lcom/mgmi/ViewGroup/a/a;->b()Z

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p1

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getClickUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lk7d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$300(Lcom/mgmi/ssp/IncentiveVideoAd;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getAwayAppType()Lcom/mgmi/ads/api/d;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/mgadplus/brower/CustomWebActivity;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/d;)V

    :cond_d
    :goto_1
    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$2;->b:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdClick()V

    :cond_e
    :goto_2
    return-void
.end method

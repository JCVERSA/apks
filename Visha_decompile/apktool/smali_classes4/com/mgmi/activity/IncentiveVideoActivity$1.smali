.class final Lcom/mgmi/activity/IncentiveVideoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/IncentiveVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/activity/IncentiveVideoActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 0

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdClosed()V

    :cond_0
    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/activity/IncentiveVideoActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onAdComplete()V
    .locals 0

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdComplete()V

    :cond_0
    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/activity/IncentiveVideoActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onAdError(Lcom/mgmi/ssp/AdError;)V
    .locals 0
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdError(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/activity/IncentiveVideoActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onAdPrepared()V
    .locals 0

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdPrepared()V

    :cond_0
    return-void
.end method

.method public onAdStart()V
    .locals 0

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdStart()V

    :cond_0
    return-void
.end method

.method public onNoAd(Lcom/mgmi/ssp/AdError;)V
    .locals 0
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/activity/IncentiveVideoActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onUpdateAdTime(I)V
    .locals 0

    sget-object p0, Lcom/mgmi/activity/IncentiveVideoActivity;->d:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/IncentiveVideoListener;->onUpdateAdTime(I)V

    :cond_0
    return-void
.end method

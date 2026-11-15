.class public Lcom/mgmi/ssp/RewardVideoAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/IncentiveVideoListener;


# static fields
.field public static final HORIZONTAL:I = 0x2

.field public static final VERTICAL:I = 0x1


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private appid:Ljava/lang/String;

.field private listener:Lcom/mgmi/ssp/IncentiveVideoListener;

.field private mCloseBtnVisible:Z

.field private mIncentiveVideoAd:Lcom/mgmi/ssp/IncentiveVideoAd;

.field private mResizeVideo:Z

.field private nativeUi:Z

.field private orientation:I

.field private posID:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->appid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->posID:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->timeout:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->nativeUi:Z

    iput-boolean v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->mResizeVideo:Z

    iput-boolean v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->mCloseBtnVisible:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public create()Lcom/mgmi/ssp/RewardVideoAd;
    .locals 10

    iget-object v0, p0, Lcom/mgmi/ssp/RewardVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/mgmi/ssp/RewardVideoAd;->appid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgmi/ssp/RewardVideoAd;->posID:Ljava/lang/String;

    iget v5, p0, Lcom/mgmi/ssp/RewardVideoAd;->timeout:I

    iget-boolean v6, p0, Lcom/mgmi/ssp/RewardVideoAd;->nativeUi:Z

    iget-boolean v7, p0, Lcom/mgmi/ssp/RewardVideoAd;->mCloseBtnVisible:Z

    iget-boolean v8, p0, Lcom/mgmi/ssp/RewardVideoAd;->mResizeVideo:Z

    iget v9, p0, Lcom/mgmi/ssp/RewardVideoAd;->orientation:I

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Lcom/mgmi/activity/IncentiveVideoActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZZZI)V

    return-object p0
.end method

.method public loadAd()Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0

    invoke-static {}, Lcom/mgmi/activity/IncentiveVideoActivity;->a()V

    return-object p0
.end method

.method public onAdClick()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdComplete()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdComplete()V

    :cond_0
    return-void
.end method

.method public onAdError(Lcom/mgmi/ssp/AdError;)V
    .locals 0
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdError(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdPrepared()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdPrepared()V

    :cond_0
    return-void
.end method

.method public onAdStart()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

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

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void
.end method

.method public onUpdateAdTime(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/IncentiveVideoListener;->onUpdateAdTime(I)V

    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public setCloseBtnVisible(Z)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->mCloseBtnVisible:Z

    return-object p0
.end method

.method public setIncentiveVideoListener(Lcom/mgmi/ssp/IncentiveVideoListener;)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->listener:Lcom/mgmi/ssp/IncentiveVideoListener;

    return-object p0
.end method

.method public setNativeUi(Z)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->nativeUi:Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->orientation:I

    return-object p0
.end method

.method public setPosid(Ljava/lang/String;)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->posID:Ljava/lang/String;

    return-object p0
.end method

.method public setResizeVideo(Z)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->mResizeVideo:Z

    return-object p0
.end method

.method public setTimeout(I)Lcom/mgmi/ssp/RewardVideoAd;
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/RewardVideoAd;->timeout:I

    return-object p0
.end method

.method public showAd()V
    .locals 0

    invoke-static {}, Lcom/mgmi/activity/IncentiveVideoActivity;->b()V

    return-void
.end method

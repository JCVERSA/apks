.class public final Lcom/vungle/ads/internal/g;
.super Lcom/vungle/ads/internal/c;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/l;


# instance fields
.field private alertBodyText:Ljava/lang/String;

.field private alertCloseButtonText:Ljava/lang/String;

.field private alertContinueButtonText:Ljava/lang/String;

.field private alertTitleText:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/c;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getAlertBodyText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertBodyText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAlertBodyText$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertBodyText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlertCloseButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertCloseButtonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAlertCloseButtonText$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertCloseButtonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlertContinueButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertContinueButtonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAlertContinueButtonText$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertContinueButtonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlertTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertTitleText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAlertTitleText$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->alertTitleText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserId$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/g;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isValidAdTypeForPlacement(Lcom/vungle/ads/internal/model/g;)Z
    .locals 1

    .line 1
    const-string v0, "placement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isRewardedVideo()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public renderAd$vungle_ads_release(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 1

    .line 1
    const-string v0, "advertisement"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->Companion:Lcom/vungle/ads/internal/ui/AdActivity$a;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/ui/AdActivity$a;->setPresenterDelegate$vungle_ads_release(Lcom/vungle/ads/internal/presenter/l;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/vungle/ads/internal/AdInternal;->renderAd$vungle_ads_release(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/AdPayload;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setAlertBodyText$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/g;->alertBodyText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAlertCloseButtonText$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/g;->alertCloseButtonText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAlertContinueButtonText$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/g;->alertContinueButtonText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAlertTitleText$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/g;->alertTitleText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserId$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/g;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

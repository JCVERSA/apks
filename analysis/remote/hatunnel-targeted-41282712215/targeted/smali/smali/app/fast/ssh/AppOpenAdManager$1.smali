.class Lapp/fast/ssh/AppOpenAdManager$1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "AppOpenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/AppOpenAdManager;->fetchAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/AppOpenAdManager;


# direct methods
.method constructor <init>(Lapp/fast/ssh/AppOpenAdManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/AppOpenAdManager$1;->this$0:Lapp/fast/ssh/AppOpenAdManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    iget-object p1, p0, Lapp/fast/ssh/AppOpenAdManager$1;->this$0:Lapp/fast/ssh/AppOpenAdManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lapp/fast/ssh/AppOpenAdManager;->access$002(Lapp/fast/ssh/AppOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/AppOpenAdManager$1;->this$0:Lapp/fast/ssh/AppOpenAdManager;

    invoke-static {v0, p1}, Lapp/fast/ssh/AppOpenAdManager;->access$002(Lapp/fast/ssh/AppOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object p1, p0, Lapp/fast/ssh/AppOpenAdManager$1;->this$0:Lapp/fast/ssh/AppOpenAdManager;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lapp/fast/ssh/AppOpenAdManager;->access$102(Lapp/fast/ssh/AppOpenAdManager;J)J

    new-instance p1, Lapp/fast/ssh/AppOpenAdManager$1$1;

    invoke-direct {p1, p0}, Lapp/fast/ssh/AppOpenAdManager$1$1;-><init>(Lapp/fast/ssh/AppOpenAdManager$1;)V

    iget-object v0, p0, Lapp/fast/ssh/AppOpenAdManager$1;->this$0:Lapp/fast/ssh/AppOpenAdManager;

    invoke-static {v0}, Lapp/fast/ssh/AppOpenAdManager;->access$000(Lapp/fast/ssh/AppOpenAdManager;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/AppOpenAdManager$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method

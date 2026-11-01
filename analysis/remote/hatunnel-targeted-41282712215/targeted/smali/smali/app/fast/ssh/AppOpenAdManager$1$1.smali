.class Lapp/fast/ssh/AppOpenAdManager$1$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AppOpenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/AppOpenAdManager$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/AppOpenAdManager$1;


# direct methods
.method constructor <init>(Lapp/fast/ssh/AppOpenAdManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/AppOpenAdManager$1$1;->this$1:Lapp/fast/ssh/AppOpenAdManager$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/AppOpenAdManager$1$1;->this$1:Lapp/fast/ssh/AppOpenAdManager$1;

    iget-object v0, v0, Lapp/fast/ssh/AppOpenAdManager$1;->this$0:Lapp/fast/ssh/AppOpenAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lapp/fast/ssh/AppOpenAdManager;->access$002(Lapp/fast/ssh/AppOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v0, 0x0

    invoke-static {v0}, Lapp/fast/ssh/AppOpenAdManager;->access$202(Z)Z

    iget-object v0, p0, Lapp/fast/ssh/AppOpenAdManager$1$1;->this$1:Lapp/fast/ssh/AppOpenAdManager$1;

    iget-object v0, v0, Lapp/fast/ssh/AppOpenAdManager$1;->this$0:Lapp/fast/ssh/AppOpenAdManager;

    invoke-virtual {v0}, Lapp/fast/ssh/AppOpenAdManager;->fetchAd()V

    sget-object v0, Lapp/fast/ssh/HomeFragment;->MS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lapp/fast/ssh/HomeFragment;->SHOW_AD_MS:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lapp/fast/ssh/AppOpenAdManager;->access$202(Z)Z

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lapp/fast/ssh/AppOpenAdManager;->access$202(Z)Z

    return-void
.end method

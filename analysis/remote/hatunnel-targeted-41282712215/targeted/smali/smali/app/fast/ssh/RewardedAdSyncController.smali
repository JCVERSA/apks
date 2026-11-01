.class public final Lapp/fast/ssh/RewardedAdSyncController;
.super Ljava/lang/Object;
.source "RewardedAdSyncController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/RewardedAdSyncController$Ui;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adUnitId:Ljava/lang/String;

.field private cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private cachedAtMs:J

.field private isLoading:Z

.field private latestRequestId:J

.field private final main:Landroid/os/Handler;

.field private final mtx:Ljava/util/concurrent/locks/ReentrantLock;

.field private final ttlMs:J

.field private waitingRequestId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u2f9d"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/RewardedAdSyncController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0xdbba0

    invoke-direct {p0, p1, v0, v1}, Lapp/fast/ssh/RewardedAdSyncController;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->main:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->adUnitId:Ljava/lang/String;

    iput-wide p2, p0, Lapp/fast/ssh/RewardedAdSyncController;->ttlMs:J

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/RewardedAdSyncController;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$102(Lapp/fast/ssh/RewardedAdSyncController;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p1
.end method

.method static synthetic access$202(Lapp/fast/ssh/RewardedAdSyncController;J)J
    .locals 0

    iput-wide p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAtMs:J

    return-wide p1
.end method

.method static synthetic access$302(Lapp/fast/ssh/RewardedAdSyncController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->isLoading:Z

    return p1
.end method

.method static synthetic access$400(Lapp/fast/ssh/RewardedAdSyncController;)J
    .locals 2

    iget-wide v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->latestRequestId:J

    return-wide v0
.end method

.method static synthetic access$500(Lapp/fast/ssh/RewardedAdSyncController;)J
    .locals 2

    iget-wide v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->waitingRequestId:J

    return-wide v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private dropExpiredLocked()V
    .locals 4

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAtMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lapp/fast/ssh/RewardedAdSyncController;->ttlMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string/jumbo v0, "\u2f8e"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAtMs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private startLoadOnMain(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
    .locals 3

    .prologue
    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v1, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u2f8f"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->adUnitId:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/RewardedAdSyncController$1;

    invoke-direct {v2, p0, p2}, Lapp/fast/ssh/RewardedAdSyncController$1;-><init>(Lapp/fast/ssh/RewardedAdSyncController;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasValidCachedAd()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u2f90"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAtMs:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lapp/fast/ssh/RewardedAdSyncController;->ttlMs:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-string/jumbo v0, "\u2f91"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u2f92"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method synthetic lambda$onUserClick$0$app-fast-ssh-RewardedAdSyncController(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController;->onUserClick(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    return-void
.end method

.method synthetic lambda$prefetch$1$app-fast-ssh-RewardedAdSyncController(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController;->prefetch(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    return-void
.end method

.method public onDialogCancelled(J)V
    .locals 3

    .prologue
    const-string/jumbo v0, "\u2f93"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->waitingRequestId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->waitingRequestId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onUserClick(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
    .locals 9

    .prologue
    const-string/jumbo v0, "\u2f94"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2f95"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2f96"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lapp/fast/ssh/Subscription;

    new-instance v4, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v4, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v3}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->main:Landroid/os/Handler;

    new-instance v1, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda1;-><init>(Lapp/fast/ssh/RewardedAdSyncController;Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v3, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v3, p0, Lapp/fast/ssh/RewardedAdSyncController;->latestRequestId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lapp/fast/ssh/RewardedAdSyncController;->latestRequestId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lapp/fast/ssh/RewardedAdSyncController;->dropExpiredLocked()V

    iget-object v2, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iput-object v5, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAtMs:J

    iput-wide v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->waitingRequestId:J

    move-object v5, v0

    goto :goto_0

    :cond_2
    iput-wide v3, p0, Lapp/fast/ssh/RewardedAdSyncController;->waitingRequestId:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lapp/fast/ssh/RewardedAdSyncController;->waitingRequestId:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    iget-boolean v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->isLoading:Z

    if-nez v0, :cond_3

    const/4 v6, 0x1

    iput-boolean v6, p0, Lapp/fast/ssh/RewardedAdSyncController;->isLoading:Z

    const-string/jumbo v0, "\u2f97"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "\u2f98"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v5, :cond_4

    invoke-interface {p2, v3, v4}, Lapp/fast/ssh/RewardedAdSyncController$Ui;->dismissLoading(J)V

    return-void

    :cond_4
    invoke-interface {p2, v3, v4}, Lapp/fast/ssh/RewardedAdSyncController$Ui;->showLoading(J)V

    if-eqz v6, :cond_5

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController;->startLoadOnMain(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public prefetch(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
    .locals 2

    .prologue
    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v1, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->main:Landroid/os/Handler;

    new-instance v1, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;-><init>(Lapp/fast/ssh/RewardedAdSyncController;Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lapp/fast/ssh/RewardedAdSyncController;->dropExpiredLocked()V

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_2

    const-string/jumbo p1, "\u2f99"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->isLoading:Z

    if-eqz v0, :cond_3

    const-string/jumbo p1, "\u2f9a"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->isLoading:Z

    const-string/jumbo v0, "\u2f9b"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController;->startLoadOnMain(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lapp/fast/ssh/RewardedAdSyncController;->dropExpiredLocked()V

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v1, 0x0

    iput-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAtMs:J

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u2f9c"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

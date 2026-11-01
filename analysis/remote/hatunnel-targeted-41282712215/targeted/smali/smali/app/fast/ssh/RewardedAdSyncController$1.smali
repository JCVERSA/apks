.class Lapp/fast/ssh/RewardedAdSyncController$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "RewardedAdSyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/RewardedAdSyncController;->startLoadOnMain(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/RewardedAdSyncController;

.field final synthetic val$ui:Lapp/fast/ssh/RewardedAdSyncController$Ui;


# direct methods
.method constructor <init>(Lapp/fast/ssh/RewardedAdSyncController;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    iput-object p2, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->val$ui:Lapp/fast/ssh/RewardedAdSyncController$Ui;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 7

    .prologue
    const-string/jumbo v0, "\u2f8b"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v1}, Lapp/fast/ssh/RewardedAdSyncController;->access$000(Lapp/fast/ssh/RewardedAdSyncController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapp/fast/ssh/RewardedAdSyncController;->access$302(Lapp/fast/ssh/RewardedAdSyncController;Z)Z

    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v1}, Lapp/fast/ssh/RewardedAdSyncController;->access$400(Lapp/fast/ssh/RewardedAdSyncController;)J

    move-result-wide v1

    iget-object v3, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v3}, Lapp/fast/ssh/RewardedAdSyncController;->access$500(Lapp/fast/ssh/RewardedAdSyncController;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->access$600(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->access$000(Lapp/fast/ssh/RewardedAdSyncController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->val$ui:Lapp/fast/ssh/RewardedAdSyncController$Ui;

    invoke-interface {v0, v3, v4}, Lapp/fast/ssh/RewardedAdSyncController$Ui;->dismissLoading(J)V

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->val$ui:Lapp/fast/ssh/RewardedAdSyncController$Ui;

    invoke-interface {v0, v3, v4, p1}, Lapp/fast/ssh/RewardedAdSyncController$Ui;->showLoadFailed(JLcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->access$000(Lapp/fast/ssh/RewardedAdSyncController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->access$000(Lapp/fast/ssh/RewardedAdSyncController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v0, p1}, Lapp/fast/ssh/RewardedAdSyncController;->access$102(Lapp/fast/ssh/RewardedAdSyncController;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lapp/fast/ssh/RewardedAdSyncController;->access$202(Lapp/fast/ssh/RewardedAdSyncController;J)J

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lapp/fast/ssh/RewardedAdSyncController;->access$302(Lapp/fast/ssh/RewardedAdSyncController;Z)Z

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->access$400(Lapp/fast/ssh/RewardedAdSyncController;)J

    move-result-wide v0

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->access$500(Lapp/fast/ssh/RewardedAdSyncController;)J

    move-result-wide v2

    const-string/jumbo p1, "\u2f8c"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->access$600(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->access$000(Lapp/fast/ssh/RewardedAdSyncController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->val$ui:Lapp/fast/ssh/RewardedAdSyncController$Ui;

    invoke-interface {p1, v2, v3}, Lapp/fast/ssh/RewardedAdSyncController$Ui;->isLoadingVisible(J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u2f8d"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/RewardedAdSyncController;->access$600(Ljava/lang/String;)V

    iget-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->val$ui:Lapp/fast/ssh/RewardedAdSyncController$Ui;

    invoke-interface {p1, v2, v3}, Lapp/fast/ssh/RewardedAdSyncController$Ui;->dismissLoading(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$1;->this$0:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-static {v0}, Lapp/fast/ssh/RewardedAdSyncController;->access$000(Lapp/fast/ssh/RewardedAdSyncController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
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

    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/RewardedAdSyncController$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method

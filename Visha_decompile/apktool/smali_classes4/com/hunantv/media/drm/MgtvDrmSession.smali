.class public abstract Lcom/hunantv/media/drm/MgtvDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmSession;


# instance fields
.field protected ec:I

.field protected ec_msg:Ljava/lang/String;

.field protected error_what:I

.field protected isInnerSession:Z

.field protected volatile isProvisionDone:Z

.field protected mListenerLocker:Ljava/lang/Object;

.field protected mOnInfoListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hunantv/media/drm/IDrmSession$OnInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnProvisionErrorListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnProvisionSuccessListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnReportListener:Lcom/hunantv/media/drm/IDrmSession$OnReportListener;

.field protected mPlayer:Lcom/hunantv/media/player/h;

.field protected volatile mRequestClose:Z

.field protected mSessionConfig:Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

.field protected mSessionLocker:Ljava/lang/Object;

.field protected volatile mStatus:I

.field protected sf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->isProvisionDone:Z

    iput v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mStatus:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionSuccessListenerSet:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionErrorListenerSet:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnInfoListenerSet:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mRequestClose:Z

    iput v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec:I

    iput v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    const-string v1, ""

    iput-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec_msg:Ljava/lang/String;

    const v1, 0x61da2

    iput v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->error_what:I

    iput-boolean v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->isInnerSession:Z

    return-void
.end method


# virtual methods
.method public addOnInfoListener(Lcom/hunantv/media/drm/IDrmSession$OnInfoListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mRequestClose:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnInfoListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addOnProvisionErrorListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mRequestClose:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionErrorListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mRequestClose:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionSuccessListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bind(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    return-void
.end method

.method public getErrorWhat()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->error_what:I

    return p0
.end method

.method public getSessionConfig()Lcom/hunantv/media/drm/IDrmManager$SessionConfig;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionConfig:Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

    return-object p0
.end method

.method public isInnerSession()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->isInnerSession:Z

    return p0
.end method

.method public isProvisionDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->isProvisionDone:Z

    return p0
.end method

.method public declared-synchronized publishProvisionError(I)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/drm/MgtvDrmSession;->publishProvisionError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized publishProvisionError(ILjava/lang/String;)V
    .locals 3

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mStatus:I

    iput p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec:I

    iput-object p2, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec_msg:Ljava/lang/String;

    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionErrorListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1, p2}, Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;->onError(Lcom/hunantv/media/drm/IDrmSession;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized publishProvisionSuccess()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mStatus:I

    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionSuccessListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;->onSuccess(Lcom/hunantv/media/drm/IDrmSession;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public removeOnInfoListener(Lcom/hunantv/media/drm/IDrmSession$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnInfoListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeOnProvisionErrorListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionErrorListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionSuccessListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized sendDrmExReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnReportListener:Lcom/hunantv/media/drm/IDrmSession$OnReportListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hunantv/media/drm/IDrmSession$OnReportListener;->onExReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized sendDrmReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnReportListener:Lcom/hunantv/media/drm/IDrmSession$OnReportListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/hunantv/media/drm/IDrmSession$OnReportListener;->onReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsInnerSession(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->isInnerSession:Z

    return-void
.end method

.method public setOnReportListener(Lcom/hunantv/media/drm/IDrmSession$OnReportListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnReportListener:Lcom/hunantv/media/drm/IDrmSession$OnReportListener;

    return-void
.end method

.class public final Lio/appmetrica/analytics/impl/Vf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/hg;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Xf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Xf;Lio/appmetrica/analytics/impl/hg;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vf;->b:Lio/appmetrica/analytics/impl/Xf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Vf;->a:Lio/appmetrica/analytics/impl/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 8

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Vf;->b:Lio/appmetrica/analytics/impl/Xf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Xf;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    new-instance v7, Lio/appmetrica/analytics/impl/cg;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v4

    sget-object v6, Lio/appmetrica/analytics/impl/bg;->c:Lio/appmetrica/analytics/impl/bg;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/cg;-><init>(Ljava/lang/String;JJLio/appmetrica/analytics/impl/bg;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Vf;->b:Lio/appmetrica/analytics/impl/Xf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Xf;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v0, Lio/appmetrica/analytics/impl/Uf;

    invoke-direct {v0, p0, v7}, Lio/appmetrica/analytics/impl/Uf;-><init>(Lio/appmetrica/analytics/impl/Vf;Lio/appmetrica/analytics/impl/cg;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Vf;->b:Lio/appmetrica/analytics/impl/Xf;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->a:Lio/appmetrica/analytics/impl/hg;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Xf;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/Wf;

    invoke-direct {v2, v1, p1}, Lio/appmetrica/analytics/impl/Wf;-><init>(Lio/appmetrica/analytics/impl/hg;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Vf;->b:Lio/appmetrica/analytics/impl/Xf;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->a:Lio/appmetrica/analytics/impl/hg;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Referrer check failed with error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lio/appmetrica/analytics/impl/Xf;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v0, Lio/appmetrica/analytics/impl/Wf;

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Wf;-><init>(Lio/appmetrica/analytics/impl/hg;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    :try_start_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vf;->b:Lio/appmetrica/analytics/impl/Xf;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xf;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

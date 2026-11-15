.class public final Lio/appmetrica/analytics/impl/Xf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Va;


# instance fields
.field public final a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Xf;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xf;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Xf;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/hg;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/hg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/Vf;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/Vf;-><init>(Lio/appmetrica/analytics/impl/Xf;Lio/appmetrica/analytics/impl/hg;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xf;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p0, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method

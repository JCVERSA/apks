.class public final Lio/appmetrica/analytics/impl/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/e2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/e2;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/d2;->a:Lio/appmetrica/analytics/impl/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppSetIdRetrieved(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/d2;->a:Lio/appmetrica/analytics/impl/e2;

    new-instance v1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/e2;->c:Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d2;->a:Lio/appmetrica/analytics/impl/e2;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/e2;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d2;->a:Lio/appmetrica/analytics/impl/e2;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/e2;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

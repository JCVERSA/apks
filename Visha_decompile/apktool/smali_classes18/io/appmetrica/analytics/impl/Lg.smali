.class public final Lio/appmetrica/analytics/impl/Lg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final c:Lio/appmetrica/analytics/impl/s4;

.field public final d:Lio/appmetrica/analytics/impl/ha;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s4;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/ha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lg;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Lg;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Lg;->d:Lio/appmetrica/analytics/impl/ha;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/y0;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Function;)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Lg;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Gf;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lg;->d:Lio/appmetrica/analytics/impl/ha;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/y0;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/appmetrica/analytics/impl/Dd;

    new-instance v4, Lio/appmetrica/analytics/impl/Ed;

    iget-object v5, p1, Lio/appmetrica/analytics/impl/y0;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/y0;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lio/appmetrica/analytics/impl/Ed;-><init>(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;Ljava/lang/String;)V

    new-instance v5, Lio/appmetrica/analytics/impl/Cd;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/Cd;-><init>()V

    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/Dd;-><init>(Lio/appmetrica/analytics/impl/Ed;Lio/appmetrica/analytics/impl/Cd;)V

    new-instance v4, Lio/appmetrica/analytics/impl/Kg;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/y0;->f:Lio/appmetrica/analytics/impl/z0;

    invoke-direct {v4, p0, p1, p3}, Lio/appmetrica/analytics/impl/Kg;-><init>(Lio/appmetrica/analytics/impl/Lg;Lio/appmetrica/analytics/impl/z0;Lio/appmetrica/analytics/coreapi/internal/backport/Function;)V

    invoke-direct {v1, v2, v3, p2, v4}, Lio/appmetrica/analytics/impl/Gf;-><init>(Ljava/io/File;Lio/appmetrica/analytics/coreapi/internal/backport/Function;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class public final Lio/appmetrica/analytics/impl/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i1;->c:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/i1;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/i1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i1;->c:Lio/appmetrica/analytics/impl/m1;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/m1;->a(Lio/appmetrica/analytics/impl/m1;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/i1;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i1;->b:Ljava/util/List;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

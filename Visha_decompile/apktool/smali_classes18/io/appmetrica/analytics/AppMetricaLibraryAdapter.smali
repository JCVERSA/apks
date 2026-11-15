.class public Lio/appmetrica/analytics/AppMetricaLibraryAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lio/appmetrica/analytics/impl/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/w0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/w0;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/w0;

    return-void
.end method

.method public static activate(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/w0;

    invoke-static {}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->newConfigBuilder()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/w0;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    return-void
.end method

.method public static activate(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/w0;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/w0;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/w0;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/w0;->b:Lio/appmetrica/analytics/impl/Gb;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Gb;->c:Lio/appmetrica/analytics/impl/Jk;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Jk;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v2

    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Gb;->d:Lio/appmetrica/analytics/impl/Td;

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/Td;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v2

    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Gb;->e:Lio/appmetrica/analytics/impl/Td;

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Td;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v2

    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/impl/Td;

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/impl/Td;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v1

    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lio/appmetrica/analytics/impl/w0;->c:Lio/appmetrica/analytics/impl/Hb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/w0;->d:Lio/appmetrica/analytics/impl/Jb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-static {v0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object v0

    const-string v1, "appmetrica_system_event_42"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object v0

    const-string v1, "null"

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    const-string v2, "sender"

    invoke-static {v2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    const-string v2, "event"

    invoke-static {v2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    if-nez p2, :cond_2

    move-object p2, v1

    :cond_2
    const-string v1, "payload"

    invoke-static {v1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withAttributes(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed report event from sender: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with name = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and payload = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    invoke-virtual {p1}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[AppMetricaLibraryAdapterProxy]"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setAdvIdentifiersTracking(Z)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/w0;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/w0;->b:Lio/appmetrica/analytics/impl/Gb;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Gb;->c:Lio/appmetrica/analytics/impl/Jk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Jk;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v1

    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/w0;->c:Lio/appmetrica/analytics/impl/Hb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->setAdvIdentifiersTracking(Z)V

    :cond_0
    return-void
.end method

.method public static setProxy(Lio/appmetrica/analytics/impl/w0;)V
    .locals 0
    .param p0    # Lio/appmetrica/analytics/impl/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/w0;

    return-void
.end method

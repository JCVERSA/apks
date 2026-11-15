.class public final Lio/appmetrica/analytics/impl/M7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint"

    const-string v1, "io.appmetrica.analytics.apphud.internal.ApphudServiceModuleEntryPoint"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/M7;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/ua;->s:Lio/appmetrica/analytics/impl/Xc;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/M7;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lio/appmetrica/analytics/impl/D5;

    invoke-direct {v4, v3}, Lio/appmetrica/analytics/impl/D5;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/appmetrica/analytics/impl/D5;

    invoke-interface {v2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, [Lio/appmetrica/analytics/impl/D5;

    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/appmetrica/analytics/impl/Wc;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Xc;->a:Ljava/util/LinkedHashSet;

    invoke-static {v2, p0}, Ld81;->D(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->s:Lio/appmetrica/analytics/impl/Xc;

    new-instance v1, Lio/appmetrica/analytics/impl/Je;

    const-string v2, "io.appmetrica.analytics.modules.ads"

    const-string v3, "lsm"

    invoke-direct {v1, p1, v2, v3}, Lio/appmetrica/analytics/impl/Je;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lio/appmetrica/analytics/impl/Wc;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Xc;->a([Lio/appmetrica/analytics/impl/Wc;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public final Lio/appmetrica/analytics/impl/hl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/jl;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/jl;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/appmetrica/analytics/impl/ll;Lio/appmetrica/analytics/impl/Hl;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/jl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/jl;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/jl;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/wa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wa;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/sl;

    invoke-interface {p1, p2, p3}, Lio/appmetrica/analytics/impl/sl;->a(Lio/appmetrica/analytics/impl/ll;Lio/appmetrica/analytics/impl/Hl;)V

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

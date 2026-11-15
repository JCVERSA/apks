.class public final Lio/appmetrica/analytics/impl/ni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/W4;

.field public final b:Lio/appmetrica/analytics/impl/pn;

.field public final c:Lio/appmetrica/analytics/impl/oi;

.field public final d:Lio/appmetrica/analytics/impl/i0;

.field public e:Lio/appmetrica/analytics/impl/rl;

.field public final f:Lio/appmetrica/analytics/impl/Lj;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/pn;Lio/appmetrica/analytics/impl/W4;Lio/appmetrica/analytics/impl/Lj;)V
    .locals 6

    .line 1
    new-instance v5, Lio/appmetrica/analytics/impl/oi;

    invoke-direct {v5, p1, p4}, Lio/appmetrica/analytics/impl/oi;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Lj;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/ni;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/pn;Lio/appmetrica/analytics/impl/W4;Lio/appmetrica/analytics/impl/Lj;Lio/appmetrica/analytics/impl/oi;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/pn;Lio/appmetrica/analytics/impl/W4;Lio/appmetrica/analytics/impl/Lj;Lio/appmetrica/analytics/impl/oi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ni;->d:Lio/appmetrica/analytics/impl/i0;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 5
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ni;->b:Lio/appmetrica/analytics/impl/pn;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/ni;->f:Lio/appmetrica/analytics/impl/Lj;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/ni;->c:Lio/appmetrica/analytics/impl/oi;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;
    .locals 2

    .line 46
    iget v0, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 47
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/xh;->d()Ljava/lang/String;

    move-result-object p1

    .line 49
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V
    .locals 6

    .line 27
    sget-object v0, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    .line 28
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ni;->d:Lio/appmetrica/analytics/impl/i0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i0;->b()V

    .line 29
    invoke-static {p4}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {p4}, Lio/appmetrica/analytics/impl/mb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    .line 31
    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    .line 32
    :cond_0
    new-instance p4, Lio/appmetrica/analytics/impl/nh;

    .line 33
    new-instance v5, Lio/appmetrica/analytics/impl/xh;

    .line 34
    new-instance v0, Lio/appmetrica/analytics/impl/pf;

    .line 35
    iget-object v1, p2, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    .line 36
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/pf;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    .line 37
    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 38
    iget-object v2, p2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 39
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object v2, p2, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 42
    invoke-direct {v5, v0, v1, v2}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p1

    move v3, p3

    .line 43
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/nh;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/xh;)V

    .line 44
    invoke-virtual {p0, p4}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/nh;)V

    return-void

    :catchall_0
    move-exception p0

    .line 45
    monitor-exit p2

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/nh;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/nh;->e:Lio/appmetrica/analytics/impl/xh;

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ni;->e:Lio/appmetrica/analytics/impl/rl;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 4
    check-cast v1, Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ql;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ni;->c:Lio/appmetrica/analytics/impl/oi;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/oi;->a(Lio/appmetrica/analytics/impl/nh;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ql;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ni;->e:Lio/appmetrica/analytics/impl/rl;

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 10
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/ql;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 11
    invoke-static {p1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 13
    iget-object v0, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setLocationTracking(Z)V

    .line 15
    :cond_0
    invoke-static {p2}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 17
    iget-object p1, p1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setDataSendingEnabled(Z)V

    .line 19
    :cond_1
    invoke-static {p3}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 21
    iget-object p1, p1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 22
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setAdvIdentifiersTracking(Z)V

    .line 24
    :cond_2
    invoke-static {}, Lio/appmetrica/analytics/impl/a6;->a()Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 25
    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 64
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_DISTRIBUTION_REFERRER"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 2

    .line 58
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 59
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_CLIDS"

    invoke-static {p1}, Lio/appmetrica/analytics/impl/mb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    .line 50
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    .line 51
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_CUSTOM_HOSTS"

    .line 54
    invoke-static {p1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ni;->a:Lio/appmetrica/analytics/impl/W4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_INSTALL_REFERRER_SOURCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

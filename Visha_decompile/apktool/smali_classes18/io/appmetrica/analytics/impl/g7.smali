.class public final Lio/appmetrica/analytics/impl/g7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile t:Lio/appmetrica/analytics/impl/g7;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Lio/appmetrica/analytics/impl/T6;

.field public final e:Landroid/content/Context;

.field public f:Lio/appmetrica/analytics/impl/f7;

.field public g:Lio/appmetrica/analytics/impl/f7;

.field public h:Lio/appmetrica/analytics/impl/m3;

.field public i:Lio/appmetrica/analytics/impl/n3;

.field public j:Lio/appmetrica/analytics/impl/m3;

.field public k:Lio/appmetrica/analytics/impl/n3;

.field public l:Lio/appmetrica/analytics/impl/xb;

.field public m:Lio/appmetrica/analytics/impl/yb;

.field public n:Lio/appmetrica/analytics/impl/Pm;

.field public o:Lio/appmetrica/analytics/impl/Qm;

.field public p:Lio/appmetrica/analytics/impl/xb;

.field public q:Lio/appmetrica/analytics/impl/yb;

.field public r:Lio/appmetrica/analytics/impl/ec;

.field public final s:Lio/appmetrica/analytics/impl/i7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/g7;->e:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/J5;->a()Lio/appmetrica/analytics/impl/T6;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/g7;->d:Lio/appmetrica/analytics/impl/T6;

    new-instance p1, Lio/appmetrica/analytics/impl/i7;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/i7;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/g7;->s:Lio/appmetrica/analytics/impl/i7;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/g7;->t:Lio/appmetrica/analytics/impl/g7;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lio/appmetrica/analytics/impl/g7;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/g7;->t:Lio/appmetrica/analytics/impl/g7;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/appmetrica/analytics/impl/g7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/g7;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/appmetrica/analytics/impl/g7;->t:Lio/appmetrica/analytics/impl/g7;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lio/appmetrica/analytics/impl/g7;->t:Lio/appmetrica/analytics/impl/g7;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 3

    monitor-enter p0

    .line 7
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/f5;)V

    .line 8
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/g7;->c(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/impl/f7;

    move-result-object p1

    .line 11
    new-instance v1, Lio/appmetrica/analytics/impl/m3;

    new-instance v2, Lio/appmetrica/analytics/impl/Sk;

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Sk;-><init>(Lio/appmetrica/analytics/impl/f7;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/m3;-><init>(Lio/appmetrica/analytics/impl/Sk;)V

    .line 12
    iget-object p1, p0, Lio/appmetrica/analytics/impl/g7;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/Oa;
    .locals 2

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->q:Lio/appmetrica/analytics/impl/yb;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lio/appmetrica/analytics/impl/yb;

    .line 15
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/yb;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->q:Lio/appmetrica/analytics/impl/yb;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->q:Lio/appmetrica/analytics/impl/yb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()Lio/appmetrica/analytics/impl/Oa;
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/impl/Oa;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/f5;)V

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/Oa;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/g7;->c(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/impl/f7;

    move-result-object p1

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/xb;

    .line 6
    new-instance v2, Lio/appmetrica/analytics/impl/Sk;

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Sk;-><init>(Lio/appmetrica/analytics/impl/f7;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/xb;-><init>(Lio/appmetrica/analytics/impl/F6;)V

    .line 7
    iget-object p1, p0, Lio/appmetrica/analytics/impl/g7;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c()Lio/appmetrica/analytics/impl/Oa;
    .locals 4

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->m:Lio/appmetrica/analytics/impl/yb;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lio/appmetrica/analytics/impl/yb;

    .line 33
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->l:Lio/appmetrica/analytics/impl/xb;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lio/appmetrica/analytics/impl/xb;

    .line 35
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->h()Lio/appmetrica/analytics/impl/f7;

    move-result-object v2

    .line 36
    new-instance v3, Lio/appmetrica/analytics/impl/Sk;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/Sk;-><init>(Lio/appmetrica/analytics/impl/f7;)V

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/xb;-><init>(Lio/appmetrica/analytics/impl/F6;)V

    .line 37
    iput-object v1, p0, Lio/appmetrica/analytics/impl/g7;->l:Lio/appmetrica/analytics/impl/xb;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->l:Lio/appmetrica/analytics/impl/xb;

    .line 39
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/yb;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->m:Lio/appmetrica/analytics/impl/yb;

    .line 40
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->m:Lio/appmetrica/analytics/impl/yb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/impl/f7;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/f5;)V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->a:Ljava/util/HashMap;

    .line 3
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/f7;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/impl/f7;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g7;->e:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/g7;->s:Lio/appmetrica/analytics/impl/i7;

    .line 6
    new-instance v4, Lio/appmetrica/analytics/impl/h7;

    .line 7
    iget-object v5, v3, Lio/appmetrica/analytics/impl/i7;->a:Lio/appmetrica/analytics/impl/P6;

    .line 8
    iget-object v3, v3, Lio/appmetrica/analytics/impl/i7;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 9
    invoke-direct {v4, v5, v3, v6}, Lio/appmetrica/analytics/impl/h7;-><init>(Lio/appmetrica/analytics/impl/P6;Ljava/util/ArrayList;Z)V

    .line 10
    invoke-virtual {v4, v2, v0}, Lio/appmetrica/analytics/impl/h7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/e7;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/g7;->d:Lio/appmetrica/analytics/impl/T6;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string v5, "component-%s"

    .line 13
    iget-object p1, p1, Lio/appmetrica/analytics/impl/f5;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 14
    const-string p1, "main"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v5, v4, Lio/appmetrica/analytics/impl/T6;->c:Lio/appmetrica/analytics/impl/Gm;

    iget-object v7, v4, Lio/appmetrica/analytics/impl/T6;->a:Lio/appmetrica/analytics/impl/d7;

    .line 16
    iget-object v8, v7, Lio/appmetrica/analytics/impl/d7;->a:Lio/appmetrica/analytics/impl/V6;

    .line 17
    iget-object v7, v7, Lio/appmetrica/analytics/impl/d7;->b:Lio/appmetrica/analytics/impl/W6;

    .line 18
    new-instance v9, Lio/appmetrica/analytics/impl/wa;

    .line 19
    invoke-direct {v9, v6}, Lio/appmetrica/analytics/impl/wa;-><init>(Z)V

    const/16 v6, 0x70

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v10, Lio/appmetrica/analytics/impl/b5;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/b5;-><init>()V

    invoke-virtual {v9, v6, v10}, Lio/appmetrica/analytics/impl/wa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    new-instance v6, Lio/appmetrica/analytics/impl/Im;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/T6;->b:Lio/appmetrica/analytics/impl/C7;

    .line 22
    iget-object v4, v4, Lio/appmetrica/analytics/impl/C7;->a:Ljava/util/HashMap;

    .line 23
    invoke-direct {v6, p1, v4}, Lio/appmetrica/analytics/impl/Im;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance p1, Lio/appmetrica/analytics/impl/Hm;

    .line 26
    invoke-direct {p1, v8, v7, v9, v6}, Lio/appmetrica/analytics/impl/Hm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/wa;Lio/appmetrica/analytics/impl/Im;)V

    .line 27
    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v4

    invoke-direct {v1, v2, v3, p1, v4}, Lio/appmetrica/analytics/impl/f7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Hm;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 28
    iget-object p1, p0, Lio/appmetrica/analytics/impl/g7;->a:Ljava/util/HashMap;

    .line 29
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d()Lio/appmetrica/analytics/impl/Oa;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->l:Lio/appmetrica/analytics/impl/xb;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/xb;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->h()Lio/appmetrica/analytics/impl/f7;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/Sk;

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/Sk;-><init>(Lio/appmetrica/analytics/impl/f7;)V

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/xb;-><init>(Lio/appmetrica/analytics/impl/F6;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->l:Lio/appmetrica/analytics/impl/xb;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->l:Lio/appmetrica/analytics/impl/xb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 12

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->j:Lio/appmetrica/analytics/impl/m3;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/impl/m3;

    new-instance v1, Lio/appmetrica/analytics/impl/Sk;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g7;->g:Lio/appmetrica/analytics/impl/f7;

    if-nez v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/f7;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/g7;->e:Landroid/content/Context;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/g7;->s:Lio/appmetrica/analytics/impl/i7;

    new-instance v5, Lio/appmetrica/analytics/impl/h7;

    iget-object v6, v4, Lio/appmetrica/analytics/impl/i7;->a:Lio/appmetrica/analytics/impl/P6;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/i7;->b:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lio/appmetrica/analytics/impl/h7;-><init>(Lio/appmetrica/analytics/impl/P6;Ljava/util/ArrayList;Z)V

    new-instance v4, Lio/appmetrica/analytics/impl/z2;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/z2;-><init>()V

    invoke-virtual {v5, v3, v4}, Lio/appmetrica/analytics/impl/h7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/e7;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/appmetrica/analytics/impl/g7;->d:Lio/appmetrica/analytics/impl/T6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v8, Lio/appmetrica/analytics/impl/E5;->a:Ljava/util/List;

    const-string v9, "binary_data"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v5, Lio/appmetrica/analytics/impl/T6;->c:Lio/appmetrica/analytics/impl/Gm;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/T6;->a:Lio/appmetrica/analytics/impl/d7;

    iget-object v9, v5, Lio/appmetrica/analytics/impl/d7;->g:Lio/appmetrica/analytics/impl/X6;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/d7;->h:Lio/appmetrica/analytics/impl/Y6;

    new-instance v10, Lio/appmetrica/analytics/impl/wa;

    invoke-direct {v10, v7}, Lio/appmetrica/analytics/impl/wa;-><init>(Z)V

    new-instance v7, Lio/appmetrica/analytics/impl/Im;

    const-string v11, "auto_inapp"

    invoke-direct {v7, v11, v6}, Lio/appmetrica/analytics/impl/Im;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lio/appmetrica/analytics/impl/Hm;

    invoke-direct {v6, v9, v5, v10, v7}, Lio/appmetrica/analytics/impl/Hm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/wa;Lio/appmetrica/analytics/impl/Im;)V

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v6, v5}, Lio/appmetrica/analytics/impl/f7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Hm;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v2, p0, Lio/appmetrica/analytics/impl/g7;->g:Lio/appmetrica/analytics/impl/f7;

    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/g7;->g:Lio/appmetrica/analytics/impl/f7;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Sk;-><init>(Lio/appmetrica/analytics/impl/f7;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/m3;-><init>(Lio/appmetrica/analytics/impl/Sk;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->j:Lio/appmetrica/analytics/impl/m3;

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g7;->j:Lio/appmetrica/analytics/impl/m3;

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/Oa;
    .locals 11

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->p:Lio/appmetrica/analytics/impl/xb;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/impl/xb;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->r:Lio/appmetrica/analytics/impl/ec;

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->s:Lio/appmetrica/analytics/impl/i7;

    new-instance v2, Lio/appmetrica/analytics/impl/h7;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/i7;->a:Lio/appmetrica/analytics/impl/P6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i7;->b:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lio/appmetrica/analytics/impl/h7;-><init>(Lio/appmetrica/analytics/impl/P6;Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->e:Landroid/content/Context;

    new-instance v3, Lio/appmetrica/analytics/impl/f4;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/f4;-><init>()V

    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/impl/h7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/e7;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/ec;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/g7;->e:Landroid/content/Context;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/g7;->d:Lio/appmetrica/analytics/impl/T6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "preferences"

    sget-object v7, Lio/appmetrica/analytics/impl/G5;->a:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lio/appmetrica/analytics/impl/T6;->c:Lio/appmetrica/analytics/impl/Gm;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/T6;->a:Lio/appmetrica/analytics/impl/d7;

    iget-object v7, v4, Lio/appmetrica/analytics/impl/d7;->c:Lio/appmetrica/analytics/impl/Z6;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/d7;->d:Lio/appmetrica/analytics/impl/a7;

    new-instance v8, Lio/appmetrica/analytics/impl/wa;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lio/appmetrica/analytics/impl/wa;-><init>(Z)V

    const/16 v9, 0x70

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lio/appmetrica/analytics/impl/g4;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/g4;-><init>()V

    invoke-virtual {v8, v9, v10}, Lio/appmetrica/analytics/impl/wa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lio/appmetrica/analytics/impl/Im;

    const-string v10, "service database"

    invoke-direct {v9, v10, v5}, Lio/appmetrica/analytics/impl/Im;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lio/appmetrica/analytics/impl/Hm;

    invoke-direct {v5, v7, v4, v8, v9}, Lio/appmetrica/analytics/impl/Hm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/wa;Lio/appmetrica/analytics/impl/Im;)V

    new-instance v4, Lio/appmetrica/analytics/impl/fa;

    invoke-direct {v4, v1}, Lio/appmetrica/analytics/impl/fa;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v4, v5}, Lio/appmetrica/analytics/impl/ec;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/fa;Lio/appmetrica/analytics/impl/Hm;)V

    iput-object v2, p0, Lio/appmetrica/analytics/impl/g7;->r:Lio/appmetrica/analytics/impl/ec;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->r:Lio/appmetrica/analytics/impl/ec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/xb;-><init>(Lio/appmetrica/analytics/impl/F6;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->p:Lio/appmetrica/analytics/impl/xb;

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g7;->p:Lio/appmetrica/analytics/impl/xb;

    return-object p0
.end method

.method public final g()Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->h:Lio/appmetrica/analytics/impl/m3;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/m3;

    new-instance v1, Lio/appmetrica/analytics/impl/Sk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->h()Lio/appmetrica/analytics/impl/f7;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Sk;-><init>(Lio/appmetrica/analytics/impl/f7;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/m3;-><init>(Lio/appmetrica/analytics/impl/Sk;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->h:Lio/appmetrica/analytics/impl/m3;

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g7;->h:Lio/appmetrica/analytics/impl/m3;

    return-object p0
.end method

.method public final declared-synchronized h()Lio/appmetrica/analytics/impl/f7;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->f:Lio/appmetrica/analytics/impl/f7;

    if-nez v0, :cond_5

    new-instance v0, Lio/appmetrica/analytics/impl/f7;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->e:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g7;->s:Lio/appmetrica/analytics/impl/i7;

    new-instance v3, Lio/appmetrica/analytics/impl/h7;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/i7;->a:Lio/appmetrica/analytics/impl/P6;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/i7;->b:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lio/appmetrica/analytics/impl/h7;-><init>(Lio/appmetrica/analytics/impl/P6;Ljava/util/ArrayList;Z)V

    new-instance v2, Lio/appmetrica/analytics/impl/Qj;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Qj;-><init>()V

    invoke-virtual {v3, v1, v2}, Lio/appmetrica/analytics/impl/h7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/e7;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/appmetrica/analytics/impl/g7;->d:Lio/appmetrica/analytics/impl/T6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lio/appmetrica/analytics/impl/G5;->a:Ljava/util/List;

    const-string v6, "preferences"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lio/appmetrica/analytics/impl/E5;->a:Ljava/util/List;

    const-string v6, "binary_data"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lio/appmetrica/analytics/impl/Sm;->a:Ljava/util/List;

    const-string v6, "temp_cache"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v5

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/bk;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;

    invoke-virtual {v6}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;->getTables()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;

    invoke-interface {v7}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getColumnNames()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    iget-object v5, v3, Lio/appmetrica/analytics/impl/T6;->c:Lio/appmetrica/analytics/impl/Gm;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/T6;->a:Lio/appmetrica/analytics/impl/d7;

    iget-object v6, v3, Lio/appmetrica/analytics/impl/d7;->e:Lio/appmetrica/analytics/impl/b7;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/d7;->f:Lio/appmetrica/analytics/impl/c7;

    new-instance v7, Lio/appmetrica/analytics/impl/wa;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lio/appmetrica/analytics/impl/wa;-><init>(Z)V

    const/16 v8, 0x72

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lio/appmetrica/analytics/impl/Rj;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/Rj;-><init>()V

    invoke-virtual {v7, v8, v9}, Lio/appmetrica/analytics/impl/wa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v8, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v8

    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/bk;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;

    invoke-virtual {v9}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;->getTables()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;

    invoke-interface {v10}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getDatabaseProviderUpgradeScript()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;

    invoke-virtual {v7, v12, v11}, Lio/appmetrica/analytics/impl/wa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v8, Lio/appmetrica/analytics/impl/Im;

    const-string v9, "service database"

    invoke-direct {v8, v9, v4}, Lio/appmetrica/analytics/impl/Im;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lio/appmetrica/analytics/impl/Hm;

    invoke-direct {v4, v6, v3, v7, v8}, Lio/appmetrica/analytics/impl/Hm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/wa;Lio/appmetrica/analytics/impl/Im;)V

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lio/appmetrica/analytics/impl/f7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Hm;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->f:Lio/appmetrica/analytics/impl/f7;

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->f:Lio/appmetrica/analytics/impl/f7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

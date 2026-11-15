.class public final Lq0h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfy0;

.field public final b:Ls0h;

.field public final c:Lwth;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Z

.field public final f:Loxg;

.field public g:Z

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Lfy0;Ls0h;Loxg;Lwth;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lq0h;->d:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lq0h;->a:Lfy0;

    iput-object p2, p0, Lq0h;->b:Ls0h;

    sget-object p1, Lcye;->N6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lq0h;->e:Z

    iput-object p3, p0, Lq0h;->f:Loxg;

    iput-object p4, p0, Lq0h;->c:Lwth;

    return-void
.end method

.method public static bridge synthetic b(Lq0h;)Loxg;
    .locals 0

    iget-object p0, p0, Lq0h;->f:Loxg;

    return-object p0
.end method

.method public static bridge synthetic c(Lq0h;)Ls0h;
    .locals 0

    iget-object p0, p0, Lq0h;->b:Ls0h;

    return-object p0
.end method

.method public static bridge synthetic d(Lq0h;)Lwth;
    .locals 0

    iget-object p0, p0, Lq0h;->c:Lwth;

    return-object p0
.end method

.method public static bridge synthetic e(Lq0h;)Lfy0;
    .locals 0

    iget-object p0, p0, Lq0h;->a:Lfy0;

    return-object p0
.end method

.method public static bridge synthetic h(Lq0h;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lq0h;->d:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static bridge synthetic n(Lq0h;)Z
    .locals 0

    iget-boolean p0, p0, Lq0h;->e:Z

    return p0
.end method

.method public static bridge synthetic o(Lq0h;)Z
    .locals 0

    iget-boolean p0, p0, Lq0h;->g:Z

    return p0
.end method

.method public static bridge synthetic p(Lq0h;Lhmh;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lq0h;->q(Lhmh;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lq0h;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f(Lvmh;Lhmh;Lim5;Lsth;)Lim5;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    monitor-enter p0

    move-object/from16 v9, p1

    :try_start_0
    iget-object v1, v9, Lvmh;->b:Lumh;

    iget-object v5, v1, Lumh;->b:Lkmh;

    iget-object v1, v10, Lq0h;->a:Lfy0;

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    iget-object v7, v0, Lhmh;->w:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v1, v10, Lq0h;->d:Ljava/util/LinkedHashMap;

    new-instance v2, Lp0h;

    iget-object v14, v0, Lhmh;->f0:Ljava/lang/String;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v15, 0x9

    move-object v12, v2

    move-object v13, v7

    invoke-direct/range {v12 .. v18}, Lp0h;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lo0h;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lo0h;-><init>(Lq0h;JLkmh;Lhmh;Ljava/lang/String;Lsth;Lvmh;)V

    sget-object v0, Lzef;->g:Lg8i;

    invoke-static {v11, v12, v0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v11

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lq0h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0h;

    iget v3, v2, Lp0h;->c:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lp0h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string v1, "_"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0
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

.method public final declared-synchronized i(Lhmh;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq0h;->a:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lq0h;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lq0h;->h:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Lq0h;->f:Loxg;

    invoke-virtual {v0, p1}, Loxg;->e(Lhmh;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lq0h;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq0h;->a:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lq0h;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lq0h;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized k(Ljava/util/List;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq0h;->a:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lq0h;->i:J

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmh;

    iget-object v2, v0, Lhmh;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v8, p0, Lq0h;->d:Ljava/util/LinkedHashMap;

    new-instance v9, Lp0h;

    iget-object v3, v0, Lhmh;->f0:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const v4, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lp0h;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v8, v0, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq0h;->a:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lq0h;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized m(Lhmh;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq0h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp0h;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lq0h;->g:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    iput v0, p1, Lp0h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized q(Lhmh;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq0h;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp0h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget p1, p1, Lp0h;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x8

    monitor-exit p0

    if-ne p1, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

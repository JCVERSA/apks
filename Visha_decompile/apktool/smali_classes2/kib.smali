.class public Lkib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb50;

.field public final c:Lge3;

.field public final d:Lfpc;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Le8a;

.field public final g:Lhy0;

.field public final h:Lhy0;

.field public final i:Lxx0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb50;Lge3;Lfpc;Ljava/util/concurrent/Executor;Le8a;Lhy0;Lhy0;Lxx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkib;->a:Landroid/content/Context;

    iput-object p2, p0, Lkib;->b:Lb50;

    iput-object p3, p0, Lkib;->c:Lge3;

    iput-object p4, p0, Lkib;->d:Lfpc;

    iput-object p5, p0, Lkib;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lkib;->f:Le8a;

    iput-object p7, p0, Lkib;->g:Lhy0;

    iput-object p8, p0, Lkib;->h:Lhy0;

    iput-object p9, p0, Lkib;->i:Lxx0;

    return-void
.end method

.method public static synthetic a(Lkib;La9b;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Lkib;->m(La9b;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkib;Ljava/lang/Iterable;La9b;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkib;->n(Ljava/lang/Iterable;La9b;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkib;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkib;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkib;La9b;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lkib;->l(La9b;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkib;Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkib;->o(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lkib;La9b;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkib;->s(La9b;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lkib;La9b;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkib;->r(La9b;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lkib;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkib;->q(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lkib;La9b;ILjava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkib;->t(La9b;ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public j(Lz8b;)Lxd3;
    .locals 4

    iget-object v0, p0, Lkib;->f:Le8a;

    iget-object v1, p0, Lkib;->i:Lxx0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laib;

    invoke-direct {v2, v1}, Laib;-><init>(Lxx0;)V

    invoke-interface {v0, v2}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzx0;

    invoke-static {}, Lxd3;->a()Lxd3$a;

    move-result-object v1

    iget-object v2, p0, Lkib;->g:Lhy0;

    invoke-interface {v2}, Lhy0;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lxd3$a;->i(J)Lxd3$a;

    move-result-object v1

    iget-object p0, p0, Lkib;->h:Lhy0;

    invoke-interface {p0}, Lhy0;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lxd3$a;->k(J)Lxd3$a;

    move-result-object p0

    const-string v1, "GDT_CLIENT_METRICS"

    invoke-virtual {p0, v1}, Lxd3$a;->j(Ljava/lang/String;)Lxd3$a;

    move-result-object p0

    new-instance v1, Lba3;

    const-string v2, "proto"

    invoke-static {v2}, Lka3;->b(Ljava/lang/String;)Lka3;

    move-result-object v2

    invoke-virtual {v0}, Lzx0;->f()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lba3;-><init>(Lka3;[B)V

    invoke-virtual {p0, v1}, Lxd3$a;->h(Lba3;)Lxd3$a;

    move-result-object p0

    invoke-virtual {p0}, Lxd3$a;->d()Lxd3;

    move-result-object p0

    invoke-interface {p1, p0}, Lz8b;->b(Lxd3;)Lxd3;

    move-result-object p0

    return-object p0
.end method

.method public k()Z
    .locals 1

    iget-object p0, p0, Lkib;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic l(La9b;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lkib;->c:Lge3;

    invoke-interface {p0, p1}, Lge3;->B(La9b;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic m(La9b;)Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Lkib;->c:Lge3;

    invoke-interface {p0, p1}, Lge3;->w(La9b;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic n(Ljava/lang/Iterable;La9b;J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkib;->c:Lge3;

    invoke-interface {v0, p1}, Lge3;->C(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lkib;->c:Lge3;

    iget-object p0, p0, Lkib;->g:Lhy0;

    invoke-interface {p0}, Lhy0;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, p2, v0, v1}, Lge3;->t(La9b;J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic o(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkib;->c:Lge3;

    invoke-interface {p0, p1}, Lge3;->v(Ljava/lang/Iterable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic p()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkib;->i:Lxx0;

    invoke-interface {p0}, Lxx0;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic q(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lkib;->i:Lxx0;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lxx0;->e(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic r(La9b;J)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkib;->c:Lge3;

    iget-object p0, p0, Lkib;->g:Lhy0;

    invoke-interface {p0}, Lhy0;->a()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-interface {v0, p1, v1, v2}, Lge3;->t(La9b;J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic s(La9b;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkib;->d:Lfpc;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Lfpc;->a(La9b;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic t(La9b;ILjava/lang/Runnable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lkib;->f:Le8a;

    iget-object v1, p0, Lkib;->c:Lge3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lbib;

    invoke-direct {v2, v1}, Lbib;-><init>(Lge3;)V

    invoke-interface {v0, v2}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    invoke-virtual {p0}, Lkib;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkib;->f:Le8a;

    new-instance v1, Lcib;

    invoke-direct {v1, p0, p1, p2}, Lcib;-><init>(Lkib;La9b;I)V

    invoke-interface {v0, v1}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkib;->u(La9b;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p0, p0, Lkib;->d:Lfpc;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Lfpc;->a(La9b;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    throw p0
.end method

.method public u(La9b;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 11

    iget-object v0, p0, Lkib;->b:Lb50;

    invoke-virtual {p1}, La9b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb50;->get(Ljava/lang/String;)Lz8b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->e(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v3

    :cond_0
    :goto_0
    move-wide v8, v1

    :cond_1
    :goto_1
    iget-object v1, p0, Lkib;->f:Le8a;

    new-instance v2, Ldib;

    invoke-direct {v2, p0, p1}, Ldib;-><init>(Lkib;La9b;)V

    invoke-interface {v1, v2}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lkib;->f:Le8a;

    new-instance v2, Leib;

    invoke-direct {v2, p0, p1}, Leib;-><init>(Lkib;La9b;)V

    invoke-interface {v1, v2}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v1, v2, p1}, Lvq5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->a()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v1

    :goto_2
    move-object v3, v1

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv08;

    invoke-virtual {v3}, Lv08;->b()Lxd3;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, La9b;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lkib;->j(Lz8b;)Lxd3;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lc50;->a()Lc50$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc50$a;->b(Ljava/lang/Iterable;)Lc50$a;

    move-result-object v1

    invoke-virtual {p1}, La9b;->c()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lc50$a;->c([B)Lc50$a;

    move-result-object v1

    invoke-virtual {v1}, Lc50$a;->a()Lc50;

    move-result-object v1

    invoke-interface {v0, v1}, Lz8b;->a(Lc50;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v1

    goto :goto_2

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v10, 0x1

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lkib;->f:Le8a;

    new-instance v1, Lfib;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lfib;-><init>(Lkib;Ljava/lang/Iterable;La9b;J)V

    invoke-interface {v0, v1}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    iget-object p0, p0, Lkib;->d:Lfpc;

    add-int/2addr p2, v10

    invoke-interface {p0, p1, p2, v10}, Lfpc;->b(La9b;IZ)V

    return-object v3

    :cond_6
    iget-object v1, p0, Lkib;->f:Le8a;

    new-instance v2, Lgib;

    invoke-direct {v2, p0, v6}, Lgib;-><init>(Lkib;Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v1, v2, :cond_7

    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->b()J

    move-result-wide v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1}, La9b;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lkib;->f:Le8a;

    new-instance v5, Lhib;

    invoke-direct {v5, p0}, Lhib;-><init>(Lkib;)V

    invoke-interface {v4, v5}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->INVALID_PAYLOAD:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv08;

    invoke-virtual {v4}, Lv08;->b()Lxd3;

    move-result-object v4

    invoke-virtual {v4}, Lxd3;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lkib;->f:Le8a;

    new-instance v4, Liib;

    invoke-direct {v4, p0, v1}, Liib;-><init>(Lkib;Ljava/util/Map;)V

    invoke-interface {v2, v4}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    iget-object p2, p0, Lkib;->f:Le8a;

    new-instance v0, Ljib;

    invoke-direct {v0, p0, p1, v8, v9}, Ljib;-><init>(Lkib;La9b;J)V

    invoke-interface {p2, v0}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    return-object v3
.end method

.method public v(La9b;ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lkib;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lzhb;

    invoke-direct {v1, p0, p1, p2, p3}, Lzhb;-><init>(Lkib;La9b;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

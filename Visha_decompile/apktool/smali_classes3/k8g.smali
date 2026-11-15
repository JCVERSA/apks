.class public final Lk8g;
.super La6g;
.source "SourceFile"

# interfaces
.implements Liue;


# instance fields
.field public final c:Ljava/util/Map;

.field public final d:Landroid/content/Context;

.field public final e:Lhmh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Lhmh;)V
    .locals 1

    invoke-direct {p0, p2}, La6g;-><init>(Ljava/util/Set;)V

    new-instance p2, Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object p2, p0, Lk8g;->c:Ljava/util/Map;

    iput-object p1, p0, Lk8g;->d:Landroid/content/Context;

    iput-object p3, p0, Lk8g;->e:Lhmh;

    return-void
.end method


# virtual methods
.method public final declared-synchronized F(Landroid/view/View;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk8g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljue;

    if-nez v1, :cond_0

    iget-object v1, p0, Lk8g;->d:Landroid/content/Context;

    new-instance v2, Ljue;

    invoke-direct {v2, v1, p1}, Ljue;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, p0}, Ljue;->d(Liue;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lk8g;->e:Lhmh;

    iget-boolean p1, p1, Lhmh;->X:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcye;->B1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcye;->A1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljue;->g(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljue;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized G(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk8g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljue;

    invoke-virtual {v1, p0}, Ljue;->e(Liue;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public final declared-synchronized zzdn(Lhue;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lj8g;

    invoke-direct {v0, p1}, Lj8g;-><init>(Lhue;)V

    invoke-virtual {p0, v0}, La6g;->E(Lz5g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

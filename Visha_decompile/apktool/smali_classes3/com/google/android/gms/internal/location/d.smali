.class public final Lcom/google/android/gms/internal/location/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld1f;

.field public final b:Landroid/content/Context;

.field public c:Z

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld1f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/location/d;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/location/d;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/location/d;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/location/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v0, Lgui;

    iget-object v0, v0, Lgui;->a:Ll1j;

    invoke-static {v0}, Ll1j;->L(Ll1j;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast p0, Lgui;

    invoke-virtual {p0}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/location/zzam;->zzn(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v0, Lgui;

    iget-object v0, v0, Lgui;->a:Ll1j;

    invoke-static {v0}, Ll1j;->L(Ll1j;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast p0, Lgui;

    invoke-virtual {p0}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/location/zzam;->zzm()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/internal/location/zzai;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v0, Lgui;

    iget-object v0, v0, Lgui;->a:Ll1j;

    invoke-static {v0}, Ll1j;->L(Ll1j;)V

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/d;->b()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v8, p2

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzar;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/location/zzar;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/location/zzar;-><init>(Lcom/google/android/gms/common/api/internal/d;)V

    :cond_1
    move-object p2, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    if-nez v8, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast p0, Lgui;

    invoke-virtual {p0}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/location/zzbc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v3, p2

    move-object v5, p1

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/location/zzam;->zzo(Lcom/google/android/gms/internal/location/zzbc;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/d$a;Lcom/google/android/gms/internal/location/zzai;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v0, Lgui;

    iget-object v0, v0, Lgui;->a:Ll1j;

    invoke-static {v0}, Ll1j;->L(Ll1j;)V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzar;->zzc()V

    iget-object p0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast p0, Lgui;

    invoke-virtual {p0}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/location/zzbc;->zzc(Lcom/google/android/gms/location/zzba;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/location/zzam;->zzo(Lcom/google/android/gms/internal/location/zzbc;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v0, Lgui;

    iget-object v0, v0, Lgui;->a:Ll1j;

    invoke-static {v0}, Ll1j;->L(Ll1j;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v0, Lgui;

    invoke-virtual {v0}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzam;->zzp(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/location/d;->c:Z

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzau;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v4, Lgui;

    invoke-virtual {v4}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/location/zzbc;->zza(Lcom/google/android/gms/location/zzbd;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/location/zzam;->zzo(Lcom/google/android/gms/internal/location/zzbc;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzar;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v4, Lgui;

    invoke-virtual {v4}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/location/zzbc;->zzc(Lcom/google/android/gms/location/zzba;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/location/zzam;->zzo(Lcom/google/android/gms/internal/location/zzbc;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/location/d;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzas;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/location/d;->a:Ld1f;

    check-cast v4, Lgui;

    invoke-virtual {v4}, Lgui;->a()Lcom/google/android/gms/internal/location/zzam;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/location/zzl;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3, v2, v3}, Lcom/google/android/gms/internal/location/zzl;-><init>(ILcom/google/android/gms/internal/location/zzj;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/location/zzam;->zzu(Lcom/google/android/gms/internal/location/zzl;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/location/d;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/d;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/d;->e(Z)V

    :cond_0
    return-void
.end method

.class public final Lmjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwjh;


# instance fields
.field public final a:Lwjh;

.field public b:Loyf;


# direct methods
.method public constructor <init>(Lwjh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmjh;->a:Lwjh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lxjh;Lvjh;Ljava/lang/Object;)Lim5;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lmjh;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized b()Loyf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmjh;->b:Loyf;
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

.method public final declared-synchronized c(Lxjh;Lvjh;Loyf;)Lim5;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lmjh;->b:Loyf;

    if-eqz p3, :cond_0

    iget-object v0, p1, Lxjh;->a:Lcom/google/android/gms/internal/ads/zzbuy;

    if-eqz v0, :cond_0

    invoke-interface {p3}, Loyf;->zzb()Lgvf;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgvf;->j(Lim5;)Lim5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgvf;->h(Lim5;)Lim5;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmjh;->a:Lwjh;

    check-cast v0, Lljh;

    invoke-virtual {v0, p1, p2, p3}, Lljh;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmjh;->b()Loyf;

    move-result-object p0

    return-object p0
.end method

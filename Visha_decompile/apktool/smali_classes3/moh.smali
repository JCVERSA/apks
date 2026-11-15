.class public final Lmoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnzf;


# instance fields
.field public final b:Ljava/util/HashSet;

.field public final c:Landroid/content/Context;

.field public final d:Ltef;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmoh;->b:Ljava/util/HashSet;

    iput-object p1, p0, Lmoh;->c:Landroid/content/Context;

    iput-object p2, p0, Lmoh;->d:Ltef;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lmoh;->d:Ltef;

    iget-object v0, p0, Lmoh;->b:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ltef;->k(Ljava/util/HashSet;)V
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

.method public final a()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lmoh;->d:Ltef;

    iget-object v1, p0, Lmoh;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Ltef;->m(Landroid/content/Context;Lmoh;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized b(Ljava/util/HashSet;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmoh;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
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

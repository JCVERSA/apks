.class public final Lh7i;
.super Lf7i;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Li7i;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf7i;-><init>(Li7i;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/g8;)I
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/g8;->i(Lcom/google/android/gms/internal/ads/g8;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/g8;->m(Lcom/google/android/gms/internal/ads/g8;I)V

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/g8;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/g8;->k(Lcom/google/android/gms/internal/ads/g8;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/g8;->n(Lcom/google/android/gms/internal/ads/g8;Ljava/util/Set;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

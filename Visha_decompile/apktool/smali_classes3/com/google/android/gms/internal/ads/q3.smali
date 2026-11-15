.class public final Lcom/google/android/gms/internal/ads/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/formats/zzg;

.field public final b:Lcom/google/android/gms/ads/formats/zzf;

.field public c:Lh1f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/zzg;Lcom/google/android/gms/ads/formats/zzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q3;->a:Lcom/google/android/gms/ads/formats/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q3;->b:Lcom/google/android/gms/ads/formats/zzf;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/internal/ads/q3;)Lcom/google/android/gms/ads/formats/zzf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q3;->b:Lcom/google/android/gms/ads/formats/zzf;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/q3;)Lcom/google/android/gms/ads/formats/zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q3;->a:Lcom/google/android/gms/ads/formats/zzg;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/q3;Lcom/google/android/gms/internal/ads/zzbgn;)Lh1f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/q3;->f(Lcom/google/android/gms/internal/ads/zzbgn;)Lh1f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/zzbgx;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q3;->b:Lcom/google/android/gms/ads/formats/zzf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhr;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbhr;-><init>(Lcom/google/android/gms/internal/ads/q3;Lp1f;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzbha;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>(Lcom/google/android/gms/internal/ads/q3;Lp1f;)V

    return-object v0
.end method

.method public final declared-synchronized f(Lcom/google/android/gms/internal/ads/zzbgn;)Lh1f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q3;->c:Lh1f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lh1f;

    invoke-direct {v0, p1}, Lh1f;-><init>(Lcom/google/android/gms/internal/ads/zzbgn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/q3;->c:Lh1f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

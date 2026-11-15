.class public final Lkef;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lqef;


# direct methods
.method public constructor <init>(Lqef;)V
    .locals 0

    iput-object p1, p0, Lkef;->c:Lqef;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    new-instance v0, Lfye;

    iget-object p0, p0, Lkef;->c:Lqef;

    invoke-static {p0}, Lqef;->d(Lqef;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lqef;->k(Lqef;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lfye;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lqef;->n(Lqef;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zze()Lhye;

    invoke-static {p0}, Lqef;->g(Lqef;)Lgye;

    move-result-object p0

    invoke-static {p0, v0}, Lhye;->a(Lgye;Lfye;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Cannot config CSI reporter."

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

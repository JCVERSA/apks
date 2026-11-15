.class public final Lr4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5h;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzejz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzejz;)V
    .locals 0

    iput-object p1, p0, Lr4h;->a:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object p0, p0, Lr4h;->a:Lcom/google/android/gms/internal/ads/zzejz;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzc(Lcom/google/android/gms/internal/ads/zzejz;Ls9g;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr4h;->a:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Ls9g;

    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zzc(Lcom/google/android/gms/internal/ads/zzejz;Ls9g;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Ls9g;

    move-result-object p1

    invoke-virtual {p1}, Lbuf;->b()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

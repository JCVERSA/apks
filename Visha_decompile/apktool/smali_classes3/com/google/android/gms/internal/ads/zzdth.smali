.class final Lcom/google/android/gms/internal/ads/zzdth;
.super Lcom/google/android/gms/internal/ads/zzblk;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:J

.field final synthetic zzd:Lwrh;

.field final synthetic zze:Leff;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/t4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/Object;Ljava/lang/String;JLwrh;Leff;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdth;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzd:Lwrh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdth;->zze:Leff;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzf:Lcom/google/android/gms/internal/ads/t4;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzblk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzf:Lcom/google/android/gms/internal/ads/t4;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzb:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzc:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, p1, v3}, Lcom/google/android/gms/internal/ads/t4;->p(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t4;->d(Lcom/google/android/gms/internal/ads/t4;)Lbng;

    move-result-object v3

    const-string v5, "error"

    invoke-virtual {v3, v2, v5}, Lbng;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t4;->c(Lcom/google/android/gms/internal/ads/t4;)Lp7g;

    move-result-object v3

    const-string v5, "error"

    invoke-virtual {v3, v2, v5}, Lp7g;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t4;->e(Lcom/google/android/gms/internal/ads/t4;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzd:Lwrh;

    invoke-interface {v2, p1}, Lwrh;->zzc(Ljava/lang/String;)Lwrh;

    invoke-interface {v2, v4}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {v2}, Lwrh;->zzm()Lash;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zze:Leff;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Leff;->c(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzf()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzf:Lcom/google/android/gms/internal/ads/t4;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzb:Ljava/lang/String;

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v4

    invoke-interface {v4}, Lfy0;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzc:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/t4;->p(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t4;->d(Lcom/google/android/gms/internal/ads/t4;)Lbng;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbng;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t4;->c(Lcom/google/android/gms/internal/ads/t4;)Lp7g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lp7g;->zzd(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t4;->e(Lcom/google/android/gms/internal/ads/t4;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzd:Lwrh;

    invoke-interface {v2, v5}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {v2}, Lwrh;->zzm()Lash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zze:Leff;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Leff;->c(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

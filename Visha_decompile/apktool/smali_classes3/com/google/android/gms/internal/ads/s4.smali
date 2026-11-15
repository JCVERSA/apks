.class public final Lcom/google/android/gms/internal/ads/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltng;


# instance fields
.field public final a:J

.field public final b:Lyng;

.field public final c:Lcom/google/android/gms/internal/ads/zzfal;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lyng;Llkf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s4;->a:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/s4;->b:Lyng;

    invoke-virtual {p5}, Llkf;->z()Lbmh;

    move-result-object p1

    invoke-interface {p1, p3}, Lbmh;->a(Landroid/content/Context;)Lbmh;

    invoke-interface {p1, p6}, Lbmh;->zza(Ljava/lang/String;)Lbmh;

    invoke-interface {p1}, Lbmh;->zzc()Lcmh;

    move-result-object p1

    invoke-interface {p1}, Lcmh;->zza()Lcom/google/android/gms/internal/ads/zzfal;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->c:Lcom/google/android/gms/internal/ads/zzfal;

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/s4;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/s4;->a:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/s4;)Lyng;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->b:Lyng;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s4;->c:Lcom/google/android/gms/internal/ads/zzfal;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdst;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdst;-><init>(Lcom/google/android/gms/internal/ads/s4;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfal;->zzf(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzbwk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s4;->c:Lcom/google/android/gms/internal/ads/zzfal;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdsu;-><init>(Lcom/google/android/gms/internal/ads/s4;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfal;->zzk(Lcom/google/android/gms/internal/ads/zzbwg;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfal;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzcnu;
.super Lcom/google/android/gms/internal/ads/zzazz;
.source "SourceFile"


# instance fields
.field private final zza:Lnrf;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

.field private final zzc:Lfih;

.field private zzd:Z

.field private final zze:Lsmg;


# direct methods
.method public constructor <init>(Lnrf;Lcom/google/android/gms/ads/internal/client/zzbx;Lfih;Lsmg;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazz;-><init>()V

    sget-object v0, Lcye;->V0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zza:Lnrf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzc:Lfih;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zze:Lsmg;

    return-void
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/ads/internal/client/zzdx;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcye;->J6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zza:Lnrf;

    invoke-virtual {p0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p0

    return-object p0
.end method

.method public final zzg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzd:Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 2

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzc:Lfih;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zze:Lsmg;

    invoke-virtual {v0}, Lsmg;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Error in making CSI ping for reporting paid event callback"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzc:Lfih;

    invoke-virtual {p0, p1}, Lfih;->p(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzc:Lfih;

    invoke-virtual {v0, p2}, Lfih;->s(Lcom/google/android/gms/internal/ads/zzbah;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zza:Lnrf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzd:Z

    invoke-virtual {v0, p1, p2, p0}, Lnrf;->k(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbah;Z)V
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

.class public final Lcom/google/android/gms/internal/ads/zzeix;
.super Lcom/google/android/gms/ads/internal/client/zzbw;
.source "SourceFile"

# interfaces
.implements Ld2g;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lpih;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lk4h;

.field private zze:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzf:Lcnh;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzh:Lsmg;

.field private zzi:Lsrf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lpih;Lk4h;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zza:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeix;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzd:Lk4h;

    invoke-virtual {p4}, Lpih;->e()Lcnh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzh:Lsmg;

    invoke-virtual {p4, p0}, Lpih;->n(Ld2g;)V

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeix;)Lsrf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzeix;Lsrf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    return-void
.end method

.method private final declared-synchronized zzf(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    invoke-virtual {v0, p1}, Lcnh;->O(Lcom/google/android/gms/ads/internal/client/zzr;)Lcnh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    invoke-virtual {v0, p1}, Lcnh;->U(Z)Lcnh;
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

.method private final declared-synchronized zzh(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v1, :cond_2

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzd:Lk4h;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-static {v0, v2, v2}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_2
    :try_start_1
    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, v1}, Ldoh;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzc:Ljava/lang/String;

    new-instance v3, Lm3h;

    invoke-direct {v3, p0}, Lm3h;-><init>(Lcom/google/android/gms/internal/ads/zzeix;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lpih;->a(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;La5h;Lb5h;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final zzm()Z
    .locals 5

    sget-object v0, Lxze;->f:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcye;->nb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget p0, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v3, Lcye;->ob:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p0, v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public final declared-synchronized zzA()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsrf;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzB()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lxze;->h:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcye;->jb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcye;->pb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbuf;->d()Lm0g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0g;->H(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzC(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {p0, p1}, Lpih;->m(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzd:Lk4h;

    invoke-virtual {p0, p1}, Lk4h;->o(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method

.method public final zzE(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0

    const-string p0, "setAdMetadataListener must be called on the main UI thread."

    invoke-static {p0}, Lwd8;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzF(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    invoke-virtual {v0, p1}, Lcnh;->O(Lcom/google/android/gms/ads/internal/client/zzr;)Lcnh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {v1}, Lpih;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lsrf;->p(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V
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

.method public final zzG(Lcom/google/android/gms/ads/internal/client/zzcl;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzd:Lk4h;

    invoke-virtual {p0, p1}, Lk4h;->s(Lcom/google/android/gms/ads/internal/client/zzcl;)V

    return-void
.end method

.method public final zzH(Lcom/google/android/gms/internal/ads/zzbad;)V
    .locals 0

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0

    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .locals 0

    return-void
.end method

.method public final zzK(Lcom/google/android/gms/ads/internal/client/zzee;)V
    .locals 0

    return-void
.end method

.method public final zzL(Z)V
    .locals 0

    return-void
.end method

.method public final zzM(Lcom/google/android/gms/internal/ads/zzbth;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzN(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    invoke-virtual {v0, p1}, Lcnh;->b(Z)Lcnh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzO(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {v0, p1}, Lpih;->o(Lcom/google/android/gms/internal/ads/zzbdd;)V
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

.method public final zzP(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzf()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzh:Lsmg;

    invoke-virtual {v0}, Lsmg;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Error in making CSI ping for reporting paid event callback"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzd:Lk4h;

    invoke-virtual {p0, p1}, Lk4h;->q(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/internal/ads/zzbtk;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzR(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzS(Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0

    return-void
.end method

.method public final zzT(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzU(Lcom/google/android/gms/ads/internal/client/zzfw;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setVideoOptions must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    invoke-virtual {v0, p1}, Lcnh;->i(Lcom/google/android/gms/ads/internal/client/zzfw;)Lcnh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzW(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzX()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzY()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzZ()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {v0}, Lpih;->zza()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zza()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {v0}, Lpih;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    invoke-virtual {v0}, Lcnh;->D()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcnh;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    invoke-virtual {v2}, Lsrf;->n()Limh;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lknh;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzeix;->zzf(Lcom/google/android/gms/ads/internal/client/zzr;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcnh;->T(Z)Lcnh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcnh;->B()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeix;->zzh(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to refresh the banner ad."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcnh;->T(Z)Lcnh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {v0}, Lpih;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final zzaa()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeix;->zzf(Lcom/google/android/gms/ads/internal/client/zzr;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeix;->zzh(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzac(Lcom/google/android/gms/ads/internal/client/zzcp;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    invoke-virtual {v0, p1}, Lcnh;->v(Lcom/google/android/gms/ads/internal/client/zzcp;)Lcnh;
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

.method public final declared-synchronized zzb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {v0}, Lpih;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lpih;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lpih;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzd()Landroid/os/Bundle;
    .locals 0

    const-string p0, "getAdMetadata must be called on the main UI thread."

    invoke-static {p0}, Lwd8;->e(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final declared-synchronized zzg()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Lsrf;->m()Limh;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lknh;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzf:Lcnh;

    invoke-virtual {v0}, Lcnh;->D()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzi()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzd:Lk4h;

    invoke-virtual {p0}, Lk4h;->k()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/ads/internal/client/zzcl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzd:Lk4h;

    invoke-virtual {p0}, Lk4h;->n()Lcom/google/android/gms/ads/internal/client/zzcl;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized zzk()Lcom/google/android/gms/ads/internal/client/zzdx;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->J6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzl()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsrf;->l()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeix;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzb:Lpih;

    invoke-virtual {p0}, Lpih;->b()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized zzr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzc:Ljava/lang/String;
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

.method public final declared-synchronized zzs()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzt()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzx()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lxze;->e:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcye;->kb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcye;->pb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbuf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzy(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/ads/internal/client/zzbn;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzz()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lxze;->g:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcye;->lb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcye;->pb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zzi:Lsrf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbuf;->d()Lm0g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0g;->G(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

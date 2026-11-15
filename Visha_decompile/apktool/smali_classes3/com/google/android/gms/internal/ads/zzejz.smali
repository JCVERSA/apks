.class public final Lcom/google/android/gms/internal/ads/zzejz;
.super Lcom/google/android/gms/ads/internal/client/zzbw;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ldkh;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Lk4h;

.field private final zzg:Lhlh;

.field private final zzh:Lfre;

.field private final zzi:Lsmg;

.field private zzj:Ls9g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Ldkh;Lk4h;Lhlh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lfre;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbw;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejz;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzb:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzc:Ldkh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzg:Lhlh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzejz;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    sget-object p1, Lcye;->S0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzk:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzh:Lfre;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzi:Lsmg;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzejz;)Ls9g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzejz;Ls9g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    return-void
.end method

.method private final declared-synchronized zze()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls9g;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

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


# virtual methods
.method public final zzA()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzB()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->d()Lm0g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0g;->H(Landroid/content/Context;)V
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

.method public final zzC(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 0

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    invoke-virtual {p0, p1}, Lk4h;->o(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method

.method public final zzE(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0

    const-string p0, "setAdMetadataListener must be called on the main UI thread."

    invoke-static {p0}, Lwd8;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zzF(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 0

    return-void
.end method

.method public final zzG(Lcom/google/android/gms/ads/internal/client/zzcl;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    invoke-virtual {p0, p1}, Lk4h;->t(Lcom/google/android/gms/ads/internal/client/zzcs;)V

    return-void
.end method

.method public final zzK(Lcom/google/android/gms/ads/internal/client/zzee;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzL(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzk:Z
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

.method public final zzM(Lcom/google/android/gms/internal/ads/zzbth;)V
    .locals 0

    return-void
.end method

.method public final zzN(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzO(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzc:Ldkh;

    invoke-virtual {v0, p1}, Ldkh;->h(Lcom/google/android/gms/internal/ads/zzbdd;)V
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

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzi:Lsmg;

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
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzg:Lhlh;

    invoke-virtual {p0, p1}, Lhlh;->p(Lcom/google/android/gms/internal/ads/zzbvq;)V

    return-void
.end method

.method public final zzT(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzU(Lcom/google/android/gms/ads/internal/client/zzfw;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzW(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Interstitial can not be shown before loaded."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk4h;->h(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcye;->a3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzh:Lfre;

    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lare;->zzn([Ljava/lang/StackTraceElement;)V

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzk:Z

    invoke-virtual {v0, v1, p1}, Ls9g;->j(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzX()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Interstitial can not be shown before loaded."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    const/16 v2, 0x9

    invoke-static {v2, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk4h;->h(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcye;->a3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzh:Lfre;

    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v0, v2}, Lare;->zzn([Ljava/lang/StackTraceElement;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzk:Z

    invoke-virtual {v0, v2, v1}, Ls9g;->j(ZLandroid/app/Activity;)Z
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

.method public final declared-synchronized zzY()Z
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized zzZ()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzc:Ldkh;

    invoke-virtual {v0}, Ldkh;->zza()Z

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

.method public final declared-synchronized zzaa()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zze()Z

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

.method public final declared-synchronized zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lxze;->i:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcye;->nb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejz;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v3, Lcye;->ob:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzb:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v2, :cond_4

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    invoke-static {v0, v3, v3}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zze()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, v1}, Ldoh;->a(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzc:Ldkh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejz;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v3, Lbkh;

    invoke-direct {v3, v2}, Lbkh;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;)V

    new-instance v2, Lr4h;

    invoke-direct {v2, p0}, Lr4h;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    invoke-virtual {v0, p1, v1, v3, v2}, Ldkh;->a(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;La5h;Lb5h;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzac(Lcom/google/android/gms/ads/internal/client/zzcp;)V
    .locals 0

    return-void
.end method

.method public final zzd()Landroid/os/Bundle;
    .locals 0

    const-string p0, "getAdMetadata must be called on the main UI thread."

    invoke-static {p0}, Lwd8;->e(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    invoke-virtual {p0}, Lk4h;->k()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/ads/internal/client/zzcl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

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

.method public final zzl()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized zzr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzd:Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

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
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->d()Lm0g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0g;->F(Landroid/content/Context;)V
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

.method public final zzy(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/ads/internal/client/zzbn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzf:Lk4h;

    invoke-virtual {v0, p2}, Lk4h;->p(Lcom/google/android/gms/ads/internal/client/zzbn;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    return-void
.end method

.method public final declared-synchronized zzz()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzj:Ls9g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->d()Lm0g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0g;->G(Landroid/content/Context;)V
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

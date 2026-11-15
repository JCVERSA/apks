.class public final Lwlg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4g;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Ld0g;
.implements Lozf;
.implements Lv7g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lynh;

.field public final d:Lsmg;

.field public final e:Lvmh;

.field public final f:Lhmh;

.field public final g:Ldwg;

.field public final h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/Boolean;

.field public final k:Z

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lynh;Lsmg;Lvmh;Lhmh;Ldwg;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lwlg;->i:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lwlg;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lwlg;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lwlg;->b:Landroid/content/Context;

    iput-object p2, p0, Lwlg;->c:Lynh;

    iput-object p3, p0, Lwlg;->d:Lsmg;

    iput-object p4, p0, Lwlg;->e:Lvmh;

    iput-object p5, p0, Lwlg;->f:Lhmh;

    iput-object p6, p0, Lwlg;->g:Ldwg;

    sget-object p1, Lcye;->M6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lwlg;->k:Z

    iput-object p7, p0, Lwlg;->h:Ljava/lang/String;

    return-void
.end method

.method private final h()Z
    .locals 4

    iget-object v0, p0, Lwlg;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lwlg;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Lcye;->F1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lwlg;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    const-string v3, "CsiActionsListener.isPatternMatched"

    invoke-virtual {v1, v0, v3}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lwlg;->j:Ljava/lang/Boolean;

    :cond_2
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :goto_3
    iget-object p0, p0, Lwlg;->j:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 5

    iget-boolean v0, p0, Lwlg;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v4, "com.google.android.gms.ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzb:Ljava/lang/String;

    :cond_1
    if-ltz v1, :cond_2

    const-string p1, "arec"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_2
    iget-object p0, p0, Lwlg;->c:Lynh;

    invoke-virtual {p0, v2}, Lynh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "areec"

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_3
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lrmg;
    .locals 4

    iget-object v0, p0, Lwlg;->e:Lvmh;

    iget-object v1, v0, Lvmh;->b:Lumh;

    iget-object v2, p0, Lwlg;->d:Lsmg;

    invoke-virtual {v2}, Lsmg;->a()Lrmg;

    move-result-object v2

    iget-object v1, v1, Lumh;->b:Lkmh;

    invoke-virtual {v2, v1}, Lrmg;->d(Lkmh;)Lrmg;

    iget-object v1, p0, Lwlg;->f:Lhmh;

    invoke-virtual {v2, v1}, Lrmg;->c(Lhmh;)Lrmg;

    const-string v3, "action"

    invoke-virtual {v2, v3, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget-object p1, p0, Lwlg;->h:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "ad_format"

    invoke-virtual {v2, v3, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget-object p1, v1, Lhmh;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v3, "ancn"

    invoke-virtual {v2, v3, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_0
    invoke-virtual {v1}, Lhmh;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lwlg;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p1

    invoke-virtual {p1, p0}, Lqef;->a(Landroid/content/Context;)Z

    move-result p0

    const/4 p1, 0x1

    if-eq p1, p0, :cond_1

    const-string p0, "offline"

    goto :goto_0

    :cond_1
    const-string p0, "online"

    :goto_0
    const-string p1, "device_connectivity"

    invoke-virtual {v2, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "event_timestamp"

    invoke-virtual {v2, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p0, "offline_ad"

    const-string p1, "1"

    invoke-virtual {v2, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_2
    sget-object p0, Lcye;->T6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p1

    invoke-virtual {p1, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzf(Lvmh;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "scar"

    invoke-virtual {v2, v1, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    if-eqz p0, :cond_3

    iget-object p0, v0, Lvmh;->a:Lsmh;

    iget-object p0, p0, Lsmh;->a:Lenh;

    iget-object p0, p0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    const-string v0, "ragent"

    invoke-virtual {v2, v0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "rtype"

    invoke-virtual {v2, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_3
    return-object v2
.end method

.method public final g(Lrmg;)V
    .locals 7

    iget-object v0, p0, Lwlg;->f:Lhmh;

    invoke-virtual {v0}, Lhmh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lrmg;->e()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lfwg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lwlg;->e:Lvmh;

    iget-object v0, v0, Lvmh;->b:Lumh;

    iget-object v0, v0, Lumh;->b:Lkmh;

    iget-object v4, v0, Lkmh;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lfwg;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lwlg;->g:Ldwg;

    invoke-virtual {p0, p1}, Ldwg;->e(Lfwg;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lrmg;->j()V

    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lwlg;->f:Lhmh;

    invoke-virtual {v0}, Lhmh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwlg;->g(Lrmg;)V

    return-void
.end method

.method public final y(Lcom/google/android/gms/internal/ads/zzdfl;)V
    .locals 2

    iget-boolean v0, p0, Lwlg;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object p0

    const-string v0, "reason"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    invoke-virtual {p0, v0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_1
    invoke-virtual {p0}, Lrmg;->j()V

    return-void
.end method

.method public final zzb()V
    .locals 2

    iget-boolean v0, p0, Lwlg;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object p0

    const-string v0, "reason"

    const-string v1, "blocked"

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0}, Lrmg;->j()V

    return-void
.end method

.method public final zzi()V
    .locals 1

    invoke-direct {p0}, Lwlg;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_shown"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object p0

    invoke-virtual {p0}, Lrmg;->j()V

    return-void
.end method

.method public final zzj()V
    .locals 7

    invoke-direct {p0}, Lwlg;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_impression"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object v0

    iget-object v1, p0, Lwlg;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "asc"

    const-string v3, "0"

    const-string v4, "1"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2, v4}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lwlg;->i:J

    sub-long/2addr v1, v5

    const-string v5, "sil"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v3}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :goto_0
    sget-object v1, Lcye;->rd:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lwlg;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    const-string v5, "foreground"

    invoke-virtual {v0, v5, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget-object p0, p0, Lwlg;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eq v2, p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    const-string p0, "fg_show"

    invoke-virtual {v0, p0, v3}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_4
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final zzs()V
    .locals 6

    invoke-direct {p0}, Lwlg;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwlg;->f:Lhmh;

    invoke-virtual {v0}, Lhmh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "impression"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object v0

    iget-wide v1, p0, Lwlg;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lwlg;->i:J

    sub-long/2addr v1, v3

    const-string v3, "s_imp_l"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_2
    sget-object v1, Lcye;->rd:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lwlg;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "0"

    const-string v3, "1"

    const/4 v4, 0x1

    if-eq v4, v1, :cond_3

    move-object v1, v3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const-string v5, "foreground"

    invoke-virtual {v0, v5, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget-object v1, p0, Lwlg;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eq v4, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    const-string v1, "fg_show"

    invoke-virtual {v0, v1, v2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_5
    invoke-virtual {p0, v0}, Lwlg;->g(Lrmg;)V

    return-void
.end method

.method public final zzu()V
    .locals 4

    invoke-direct {p0}, Lwlg;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwlg;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lwlg;->i:J

    const-string v0, "iscs"

    invoke-virtual {p0, v0}, Lwlg;->b(Ljava/lang/String;)Lrmg;

    move-result-object v0

    sget-object v2, Lcye;->rd:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lwlg;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p0, p0, Lwlg;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eq v1, p0, :cond_1

    const-string p0, "0"

    goto :goto_0

    :cond_1
    const-string p0, "1"

    :goto_0
    const-string v1, "foreground"

    invoke-virtual {v0, v1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_2
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method

.method public final zzv()V
    .locals 0

    return-void
.end method

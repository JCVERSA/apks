.class public abstract Lphh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Llkf;

.field public final d:Lfih;

.field public final e:Lwjh;

.field public final f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final i:Lcnh;

.field public j:Lim5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Llkf;Lwjh;Lfih;Lcnh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lphh;->a:Landroid/content/Context;

    iput-object p2, p0, Lphh;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lphh;->c:Llkf;

    iput-object p4, p0, Lphh;->e:Lwjh;

    iput-object p5, p0, Lphh;->d:Lfih;

    iput-object p6, p0, Lphh;->i:Lcnh;

    iput-object p7, p0, Lphh;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lphh;->g:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Llkf;->C()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iput-object p1, p0, Lphh;->h:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic b(Lphh;Lujh;)Lnyf;
    .locals 0

    invoke-virtual {p0, p1}, Lphh;->l(Lujh;)Lnyf;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lphh;Lujh;)Lnyf;
    .locals 0

    invoke-virtual {p0, p1}, Lphh;->l(Lujh;)Lnyf;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lphh;)Lfih;
    .locals 0

    iget-object p0, p0, Lphh;->d:Lfih;

    return-object p0
.end method

.method public static bridge synthetic f(Lphh;)Lwjh;
    .locals 0

    iget-object p0, p0, Lphh;->e:Lwjh;

    return-object p0
.end method

.method public static bridge synthetic g(Lphh;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lphh;->h:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method public static bridge synthetic h(Lphh;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lphh;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic i(Lphh;)V
    .locals 2

    iget-object p0, p0, Lphh;->d:Lfih;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfih;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public static bridge synthetic j(Lphh;Lim5;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lphh;->j:Lim5;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;La5h;Lb5h;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    sget-object p3, Lxze;->d:Leze;

    invoke-virtual {p3}, Leze;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcye;->nb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :goto_0
    iget-object v2, p0, Lphh;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

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

    if-nez p3, :cond_3

    :cond_2
    const-string p3, "loadAd must be called on the main UI thread."

    invoke-static {p3}, Lwd8;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for app open ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lphh;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzevw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzevw;-><init>(Lphh;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_1
    iget-object p3, p0, Lphh;->j:Lim5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_5

    monitor-exit p0

    return v1

    :cond_5
    :try_start_2
    sget-object p3, Lsze;->c:Leze;

    invoke-virtual {p3}, Leze;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    iget-object p3, p0, Lphh;->e:Lwjh;

    invoke-interface {p3}, Lwjh;->zzd()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lerf;

    if-eqz p3, :cond_6

    invoke-interface {p3}, Loyf;->zzg()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-object v4, p3

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    iget-object p3, p0, Lphh;->a:Landroid/content/Context;

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v3}, Ldoh;->a(Landroid/content/Context;Z)V

    sget-object v5, Lcye;->Z8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    iget-object v3, p0, Lphh;->c:Llkf;

    invoke-virtual {v3}, Llkf;->p()Lzog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lzog;->p(Z)V

    :cond_7
    new-instance v3, Landroid/util/Pair;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v7

    invoke-interface {v7}, Lfy0;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v5}, [Landroid/util/Pair;

    move-result-object v3

    invoke-static {v3}, Lbmg;->a([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v5, p0, Lphh;->i:Lcnh;

    invoke-virtual {v5, p2}, Lcnh;->P(Ljava/lang/String;)Lcnh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzb()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcnh;->O(Lcom/google/android/gms/ads/internal/client/zzr;)Lcnh;

    invoke-virtual {v5, p1}, Lcnh;->h(Lcom/google/android/gms/ads/internal/client/zzm;)Lcnh;

    invoke-virtual {v5, v3}, Lcnh;->a(Landroid/os/Bundle;)Lcnh;

    invoke-virtual {v5}, Lcnh;->j()Lenh;

    move-result-object p2

    invoke-static {p2}, Lgsh;->f(Lenh;)I

    move-result v3

    invoke-static {p3, v3, v1, p1}, Lvrh;->b(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lwrh;

    move-result-object v5

    new-instance v6, Lnhh;

    invoke-direct {v6, v2}, Lnhh;-><init>(Lohh;)V

    iput-object p2, v6, Lnhh;->a:Lenh;

    iget-object p1, p0, Lphh;->e:Lwjh;

    new-instance p2, Lxjh;

    invoke-direct {p2, v6, v2}, Lxjh;-><init>(Lujh;Lcom/google/android/gms/internal/ads/zzbuy;)V

    new-instance p3, Ljhh;

    invoke-direct {p3, p0}, Ljhh;-><init>(Lphh;)V

    invoke-interface {p1, p2, p3, v2}, Lwjh;->a(Lxjh;Lvjh;Ljava/lang/Object;)Lim5;

    move-result-object p1

    iput-object p1, p0, Lphh;->j:Lim5;

    new-instance p2, Lkhh;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lkhh;-><init>(Lphh;Lb5h;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Lnhh;)V

    iget-object p3, p0, Lphh;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public abstract d(Lprf;Lryf;Ld6g;)Lnyf;
.end method

.method public final k(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0

    iget-object p0, p0, Lphh;->i:Lcnh;

    invoke-virtual {p0, p1}, Lcnh;->Q(Lcom/google/android/gms/ads/internal/client/zzx;)Lcnh;

    return-void
.end method

.method public final declared-synchronized l(Lujh;)Lnyf;
    .locals 4

    monitor-enter p0

    :try_start_0
    check-cast p1, Lnhh;

    sget-object v0, Lcye;->m8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lphh;->g:Landroid/view/ViewGroup;

    new-instance v1, Lprf;

    invoke-direct {v1, v0}, Lprf;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lpyf;

    invoke-direct {v0}, Lpyf;-><init>()V

    iget-object v2, p0, Lphh;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    iget-object p1, p1, Lnhh;->a:Lenh;

    invoke-virtual {v0, p1}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v0}, Lpyf;->l()Lryf;

    move-result-object p1

    new-instance v0, Lb6g;

    invoke-direct {v0}, Lb6g;-><init>()V

    iget-object v2, p0, Lphh;->d:Lfih;

    iget-object v3, p0, Lphh;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lb6g;->f(Lzzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, v2, v3}, Lb6g;->o(Lt8g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0}, Lb6g;->q()Ld6g;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lphh;->d(Lprf;Lryf;Ld6g;)Lnyf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lphh;->d:Lfih;

    invoke-static {v0}, Lfih;->a(Lfih;)Lfih;

    move-result-object v0

    new-instance v1, Lb6g;

    invoke-direct {v1}, Lb6g;-><init>()V

    iget-object v2, p0, Lphh;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lb6g;->e(Lnzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v1, v0, v2}, Lb6g;->j(Lp1g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v1, v0, v2}, Lb6g;->k(Lcom/google/android/gms/ads/internal/overlay/zzr;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v1, v0, v2}, Lb6g;->l(Lc2g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v1, v0, v2}, Lb6g;->f(Lzzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v1, v0, v2}, Lb6g;->o(Lt8g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v1, v0}, Lb6g;->p(Ltjh;)Lb6g;

    iget-object v0, p0, Lphh;->g:Landroid/view/ViewGroup;

    new-instance v2, Lprf;

    invoke-direct {v2, v0}, Lprf;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lpyf;

    invoke-direct {v0}, Lpyf;-><init>()V

    iget-object v3, p0, Lphh;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    iget-object p1, p1, Lnhh;->a:Lenh;

    invoke-virtual {v0, p1}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v0}, Lpyf;->l()Lryf;

    move-result-object p1

    invoke-virtual {v1}, Lb6g;->q()Ld6g;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lphh;->d(Lprf;Lryf;Ld6g;)Lnyf;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zza()Z
    .locals 0

    iget-object p0, p0, Lphh;->j:Lim5;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

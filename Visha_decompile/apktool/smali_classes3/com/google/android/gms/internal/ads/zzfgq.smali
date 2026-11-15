.class public final Lcom/google/android/gms/internal/ads/zzfgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static zzb:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "enabledLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lksh;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "protoLock"
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lgkg;

.field private final zzk:Ljava/util/List;

.field private zzl:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "initLock"
    .end annotation
.end field

.field private final zzm:Lccf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lgkg;Lvtg;Lccf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/n5;->c0()Lksh;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lksh;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzh:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzj:Lgkg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzm:Lccf;

    sget-object p1, Lcye;->V8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzd()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzk:Ljava/util/List;

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzk:Ljava/util/List;

    return-void
.end method

.method public static zza()Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Lsze;->b:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    sget-object v1, Lsze;->a:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    cmpg-double v1, v3, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgq;Lash;)V
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzl:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzl:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    invoke-virtual {v2, v1, v3}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Laj4;->g()Laj4;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    invoke-virtual {v1, v2}, Laj4;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzi:I

    sget-object v1, Lcye;->Q8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcye;->Xb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v3, Lzef;->d:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_2
    sget-object v2, Lzef;->d:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v2

    move-object v2, p0

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lksh;

    invoke-virtual {v1}, Lksh;->v()I

    move-result v2

    sget-object v3, Lcye;->R8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_4

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/l5;->b0()Lish;

    move-result-object v2

    invoke-virtual {p1}, Lash;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Lish;->Q(I)Lish;

    invoke-virtual {p1}, Lash;->l()Z

    move-result v3

    invoke-virtual {v2, v3}, Lish;->M(Z)Lish;

    invoke-virtual {p1}, Lash;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lish;->B(J)Lish;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lish;->S(I)Lish;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lish;->J(Ljava/lang/String;)Lish;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lish;->w(Ljava/lang/String;)Lish;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lish;->G(Ljava/lang/String;)Lish;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Lish;->N(I)Lish;

    invoke-virtual {p1}, Lash;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Lish;->R(I)Lish;

    invoke-virtual {p1}, Lash;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lish;->F(I)Lish;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzi:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lish;->z(J)Lish;

    invoke-virtual {p1}, Lash;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Lish;->P(I)Lish;

    invoke-virtual {p1}, Lash;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->x(Ljava/lang/String;)Lish;

    invoke-virtual {p1}, Lash;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->A(Ljava/lang/String;)Lish;

    invoke-virtual {p1}, Lash;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->C(Ljava/lang/String;)Lish;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzj:Lgkg;

    invoke-virtual {p1}, Lash;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgkg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->E(Ljava/lang/String;)Lish;

    invoke-virtual {p1}, Lash;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->H(Ljava/lang/String;)Lish;

    invoke-virtual {p1}, Lash;->d()Lcom/google/android/gms/internal/ads/zzfgs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->I(Lcom/google/android/gms/internal/ads/zzfgs;)Lish;

    invoke-virtual {p1}, Lash;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->y(Ljava/lang/String;)Lish;

    invoke-virtual {p1}, Lash;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->O(Ljava/lang/String;)Lish;

    invoke-virtual {p1}, Lash;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lish;->K(Ljava/lang/String;)Lish;

    invoke-virtual {p1}, Lash;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lish;->L(J)Lish;

    sget-object p1, Lcye;->V8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzk:Ljava/util/List;

    invoke-virtual {v2, p0}, Lish;->v(Ljava/lang/Iterable;)Lish;

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/m5;->b0()Llsh;

    move-result-object p0

    invoke-virtual {p0, v2}, Llsh;->v(Lish;)Llsh;

    invoke-virtual {v1, p0}, Lksh;->w(Llsh;)Lksh;

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_6
    :goto_4
    return-void

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lksh;

    invoke-virtual {v1}, Lksh;->v()I

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lksh;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/n5;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object v7

    invoke-virtual {v1}, Lksh;->x()Lksh;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Lstg;

    sget-object v1, Lcye;->P8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "application/x-protobuf"

    const/4 v9, 0x0

    const v5, 0xea60

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lstg;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzm:Lccf;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-instance v4, Lutg;

    invoke-direct {v4, v1, v2, p0, v3}, Lutg;-><init>(Landroid/content/Context;Ljava/lang/String;Lccf;I)V

    invoke-virtual {v4, v0}, Lutg;->a(Lstg;)Lttg;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdvg;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvg;->zza()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string v0, "CuiMonitor.sendCuiPing"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final zzc(Lash;)V
    .locals 2
    .param p1    # Lash;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lzef;->a:Lg8i;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfgp;-><init>(Lcom/google/android/gms/internal/ads/zzfgq;Lash;)V

    invoke-interface {v0, v1}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    return-void
.end method

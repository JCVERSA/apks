.class public abstract Llkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llof;


# static fields
.field public static a:Llkf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;IZILvlf;)Llkf;
    .locals 4

    const-class p2, Llkf;

    monitor-enter p2

    :try_start_0
    sget-object p3, Llkf;->a:Llkf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p2

    return-object p3

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p3

    invoke-interface {p3}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcye;->a(Landroid/content/Context;)V

    sget-object p3, Lrze;->e:Leze;

    invoke-virtual {p3}, Leze;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p0}, Ljxe;->d(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcoh;->d(Landroid/content/Context;)Lcoh;

    move-result-object p3

    const v2, 0xefc3650

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, p4}, Lcoh;->c(IZI)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p4

    invoke-virtual {p3, p1}, Lcoh;->f(Lcom/google/android/gms/internal/ads/zzboy;)V

    new-instance p1, Lmmf;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lmmf;-><init>(Ldnf;)V

    new-instance v2, Lmkf;

    invoke-direct {v2}, Lmkf;-><init>()V

    invoke-virtual {v2, p4}, Lmkf;->f(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lmkf;

    invoke-virtual {v2, p0}, Lmkf;->e(Landroid/content/Context;)Lmkf;

    invoke-virtual {v2, v0, v1}, Lmkf;->d(J)Lmkf;

    new-instance v0, Lokf;

    invoke-direct {v0, v2, p3}, Lokf;-><init>(Lmkf;Lnkf;)V

    invoke-virtual {p1, v0}, Lmmf;->b(Lokf;)Lmmf;

    new-instance p3, Lgnf;

    invoke-direct {p3, p5}, Lgnf;-><init>(Lvlf;)V

    invoke-virtual {p1, p3}, Lmmf;->c(Lgnf;)Lmmf;

    invoke-virtual {p1}, Lmmf;->a()Llkf;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p3

    invoke-virtual {p3, p0, p4}, Lqef;->v(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/m0;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/m0;->i(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzm(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Landroid/content/Context;)Z

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzb()Lbve;

    move-result-object p3

    invoke-virtual {p3, p0}, Lbve;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzw()Lcom/google/android/gms/ads/internal/util/zzci;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzci;->zzb(Landroid/content/Context;)V

    move-object p3, p1

    check-cast p3, Lzlf;

    iget-object p3, p3, Lzlf;->l0:Lqyi;

    invoke-interface {p3}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/ads/internal/util/zzcb;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzcb;->zzc()V

    invoke-static {p0}, Lsdf;->b(Landroid/content/Context;)Lsdf;

    sget-object p3, Lcye;->i6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p5

    invoke-virtual {p5, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcye;->M0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p5

    invoke-virtual {p5, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p3, Lcom/google/android/gms/internal/ads/b5;

    new-instance p5, Lcom/google/android/gms/internal/ads/o0;

    new-instance v0, Lexe;

    invoke-direct {v0, p0}, Lexe;-><init>(Landroid/content/Context;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/ads/o0;-><init>(Lexe;)V

    new-instance v0, Llug;

    new-instance v1, Lhug;

    invoke-direct {v1, p0}, Lhug;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    check-cast v2, Lzlf;

    iget-object v2, v2, Lzlf;->g:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg8i;

    invoke-direct {v0, v1, v2}, Llug;-><init>(Lhug;Lg8i;)V

    invoke-direct {p3, p0, p4, p5, v0}, Lcom/google/android/gms/internal/ads/b5;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/o0;Llug;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p0

    invoke-virtual {p0}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/b5;->b(Z)V

    :cond_2
    sput-object p1, Llkf;->a:Llkf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static f(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;I)Llkf;
    .locals 6

    new-instance v5, Lvlf;

    invoke-direct {v5}, Lvlf;-><init>()V

    const v2, 0xefc3650

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Llkf;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;IZILvlf;)Llkf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract A()Lvnh;
.end method

.method public abstract B()Lfoh;
.end method

.method public abstract C()Lcom/google/android/gms/internal/ads/zzfgq;
.end method

.method public abstract D()Lcom/google/android/gms/internal/ads/zzfix;
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzbuy;I)Lhfh;
    .locals 1

    new-instance v0, Logh;

    invoke-direct {v0, p1, p2}, Logh;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;I)V

    invoke-virtual {p0, v0}, Llkf;->v(Logh;)Lhfh;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()Ljava/util/concurrent/Executor;
.end method

.method public abstract c()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract d()Lfef;
.end method

.method public abstract g()Lcom/google/android/gms/internal/ads/zzcjl;
.end method

.method public abstract h()Lhrf;
.end method

.method public abstract i()Lzsf;
.end method

.method public abstract j()Lcom/google/android/gms/internal/ads/i4;
.end method

.method public abstract k()Lxag;
.end method

.method public abstract l()Lpbg;
.end method

.method public abstract m()Lajg;
.end method

.method public abstract n()Lsmg;
.end method

.method public abstract o()Lbog;
.end method

.method public abstract p()Lzog;
.end method

.method public abstract q()Lcom/google/android/gms/internal/ads/zzdva;
.end method

.method public abstract r()Lcom/google/android/gms/internal/ads/zzebe;
.end method

.method public abstract s()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;
.end method

.method public abstract t()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
.end method

.method public abstract u()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;
.end method

.method public abstract v(Logh;)Lhfh;
.end method

.method public abstract w()Lhhh;
.end method

.method public abstract x()Lrih;
.end method

.method public abstract y()Lfkh;
.end method

.method public abstract z()Lbmh;
.end method

.method public final zzD()Lfef;
    .locals 0

    invoke-virtual {p0}, Llkf;->d()Lfef;

    move-result-object p0

    return-object p0
.end method

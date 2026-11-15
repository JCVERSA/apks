.class public final Lf5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5h;


# instance fields
.field public final a:Lcnh;

.field public final b:Llkf;

.field public final c:Landroid/content/Context;

.field public final d:Lz4h;

.field public final e:Lcom/google/android/gms/internal/ads/zzfgq;

.field public f:Louf;


# direct methods
.method public constructor <init>(Llkf;Landroid/content/Context;Lz4h;Lcnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5h;->b:Llkf;

    iput-object p2, p0, Lf5h;->c:Landroid/content/Context;

    iput-object p3, p0, Lf5h;->d:Lz4h;

    iput-object p4, p0, Lf5h;->a:Lcnh;

    invoke-virtual {p1}, Llkf;->C()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iput-object p1, p0, Lf5h;->e:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-virtual {p3}, Lz4h;->d()Lk4h;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcnh;->R(Lk4h;)Lcnh;

    return-void
.end method

.method public static bridge synthetic b(Lf5h;)Llkf;
    .locals 0

    iget-object p0, p0, Lf5h;->b:Llkf;

    return-object p0
.end method

.method public static bridge synthetic c(Lf5h;)Lz4h;
    .locals 0

    iget-object p0, p0, Lf5h;->d:Lz4h;

    return-object p0
.end method

.method public static bridge synthetic d(Lf5h;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lf5h;->e:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method public static synthetic e(Lf5h;)V
    .locals 2

    iget-object p0, p0, Lf5h;->d:Lz4h;

    invoke-virtual {p0}, Lz4h;->a()Lnzf;

    move-result-object p0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-interface {p0, v0}, Lnzf;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public static synthetic f(Lf5h;)V
    .locals 2

    iget-object p0, p0, Lf5h;->d:Lz4h;

    invoke-virtual {p0}, Lz4h;->a()Lnzf;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-interface {p0, v0}, Lnzf;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;La5h;Lb5h;)Z
    .locals 9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lf5h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lf5h;->b:Llkf;

    invoke-virtual {p1}, Llkf;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzekj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzekj;-><init>(Lf5h;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lf5h;->b:Llkf;

    invoke-virtual {p1}, Llkf;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzekk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzekk;-><init>(Lf5h;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, p2}, Ldoh;->a(Landroid/content/Context;Z)V

    sget-object v1, Lcye;->Z8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lf5h;->b:Llkf;

    invoke-virtual {p2}, Llkf;->p()Lzog;

    move-result-object p2

    invoke-virtual {p2, v2}, Lzog;->p(Z)V

    :cond_3
    check-cast p3, Ld5h;

    iget p2, p3, Ld5h;->a:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p3

    invoke-interface {p3}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    new-instance p3, Landroid/util/Pair;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p3, v1}, [Landroid/util/Pair;

    move-result-object p3

    invoke-static {p3}, Lbmg;->a([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v1, p0, Lf5h;->a:Lcnh;

    invoke-virtual {v1, p1}, Lcnh;->h(Lcom/google/android/gms/ads/internal/client/zzm;)Lcnh;

    invoke-virtual {v1, p3}, Lcnh;->a(Landroid/os/Bundle;)Lcnh;

    invoke-virtual {v1, p2}, Lcnh;->c(I)Lcnh;

    invoke-virtual {v1}, Lcnh;->j()Lenh;

    move-result-object p2

    invoke-static {p2}, Lgsh;->f(Lenh;)I

    move-result p3

    const/16 v1, 0x8

    invoke-static {v0, p3, v1, p1}, Lvrh;->b(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lwrh;

    move-result-object v7

    iget-object p3, p2, Lenh;->n:Lcom/google/android/gms/ads/internal/client/zzcl;

    if-eqz p3, :cond_4

    iget-object v3, p0, Lf5h;->d:Lz4h;

    invoke-virtual {v3}, Lz4h;->d()Lk4h;

    move-result-object v3

    invoke-virtual {v3, p3}, Lk4h;->s(Lcom/google/android/gms/ads/internal/client/zzcl;)V

    :cond_4
    iget-object p3, p0, Lf5h;->b:Llkf;

    invoke-virtual {p3}, Llkf;->l()Lpbg;

    move-result-object v3

    new-instance v4, Lpyf;

    invoke-direct {v4}, Lpyf;-><init>()V

    invoke-virtual {v4, v0}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    invoke-virtual {v4, p2}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v4}, Lpyf;->l()Lryf;

    move-result-object p2

    invoke-interface {v3, p2}, Lpbg;->n(Lryf;)Lpbg;

    new-instance p2, Lb6g;

    invoke-direct {p2}, Lb6g;-><init>()V

    iget-object v0, p0, Lf5h;->d:Lz4h;

    invoke-virtual {v0}, Lz4h;->d()Lk4h;

    move-result-object v4

    invoke-virtual {p3}, Llkf;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lb6g;->n(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2}, Lb6g;->q()Ld6g;

    move-result-object p2

    invoke-interface {v3, p2}, Lpbg;->g(Ld6g;)Lpbg;

    invoke-virtual {v0}, Lz4h;->c()Llbg;

    move-result-object p2

    invoke-interface {v3, p2}, Lpbg;->d(Llbg;)Lpbg;

    new-instance p2, Lprf;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lprf;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v3, p2}, Lpbg;->c(Lprf;)Lpbg;

    invoke-interface {v3}, Lpbg;->zzg()Lubg;

    move-result-object v8

    sget-object p2, Lsze;->c:Leze;

    invoke-virtual {p2}, Leze;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v8}, Lubg;->e()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-object v6, p2

    goto :goto_1

    :cond_5
    move-object v6, v0

    :goto_1
    invoke-virtual {p3}, Llkf;->B()Lfoh;

    move-result-object p1

    invoke-virtual {p1, v2}, Lfoh;->c(I)V

    new-instance p1, Louf;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object p2

    invoke-virtual {p3}, Llkf;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v8}, Lubg;->a()Lgvf;

    move-result-object v0

    invoke-virtual {v0}, Lgvf;->i()Lim5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvf;->h(Lim5;)Lim5;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Louf;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lim5;)V

    iput-object p1, p0, Lf5h;->f:Louf;

    new-instance p2, Le5h;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Le5h;-><init>(Lf5h;Lb5h;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Lubg;)V

    invoke-virtual {p1, p2}, Louf;->e(Lv7i;)V

    return v2
.end method

.method public final zza()Z
    .locals 0

    iget-object p0, p0, Lf5h;->f:Louf;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Louf;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

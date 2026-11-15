.class public final Lwlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Llkf;

.field public final d:Lhlh;

.field public final e:Lwjh;

.field public final f:Lwmh;

.field public final g:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final h:Lcnh;

.field public i:Lim5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Llkf;Lwjh;Lhlh;Lcnh;Lwmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwlh;->a:Landroid/content/Context;

    iput-object p2, p0, Lwlh;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lwlh;->c:Llkf;

    iput-object p4, p0, Lwlh;->e:Lwjh;

    iput-object p5, p0, Lwlh;->d:Lhlh;

    iput-object p6, p0, Lwlh;->h:Lcnh;

    iput-object p7, p0, Lwlh;->f:Lwmh;

    invoke-virtual {p3}, Llkf;->C()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iput-object p1, p0, Lwlh;->g:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic b(Lwlh;Lujh;)Lajg;
    .locals 0

    invoke-virtual {p0, p1}, Lwlh;->j(Lujh;)Lajg;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lwlh;Lujh;)Lajg;
    .locals 0

    invoke-virtual {p0, p1}, Lwlh;->j(Lujh;)Lajg;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lwlh;)Lwjh;
    .locals 0

    iget-object p0, p0, Lwlh;->e:Lwjh;

    return-object p0
.end method

.method public static bridge synthetic e(Lwlh;)Lhlh;
    .locals 0

    iget-object p0, p0, Lwlh;->d:Lhlh;

    return-object p0
.end method

.method public static bridge synthetic f(Lwlh;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lwlh;->g:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method public static bridge synthetic g(Lwlh;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lwlh;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic h(Lwlh;)V
    .locals 2

    iget-object p0, p0, Lwlh;->d:Lhlh;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhlh;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;La5h;Lb5h;)Z
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbvr;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V

    check-cast p3, Ljlh;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbvr;->zzb:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lwlh;->b:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfaa;-><init>(Lwlh;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    iget-object p3, p0, Lwlh;->i:Lim5;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p2, Lsze;->c:Leze;

    invoke-virtual {p2}, Leze;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x5

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lwlh;->e:Lwjh;

    invoke-interface {p2}, Lwjh;->zzd()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lwjh;->zzd()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbjg;

    invoke-interface {p2}, Loyf;->zzg()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbvr;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-object v6, p2

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    iget-object p2, p0, Lwlh;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvr;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p2, v2}, Ldoh;->a(Landroid/content/Context;Z)V

    sget-object v3, Lcye;->Z8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v9, 0x1

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lwlh;->c:Llkf;

    invoke-virtual {v2}, Llkf;->p()Lzog;

    move-result-object v2

    invoke-virtual {v2, v9}, Lzog;->p(Z)V

    :cond_3
    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v5

    invoke-interface {v5}, Lfy0;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2}, Lbmg;->a([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lwlh;->h:Lcnh;

    invoke-virtual {v3, p1}, Lcnh;->P(Ljava/lang/String;)Lcnh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzd()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcnh;->O(Lcom/google/android/gms/ads/internal/client/zzr;)Lcnh;

    invoke-virtual {v3, v0}, Lcnh;->h(Lcom/google/android/gms/ads/internal/client/zzm;)Lcnh;

    invoke-virtual {v3, v2}, Lcnh;->a(Landroid/os/Bundle;)Lcnh;

    invoke-virtual {v3}, Lcnh;->j()Lenh;

    move-result-object p1

    invoke-static {p1}, Lgsh;->f(Lenh;)I

    move-result v2

    invoke-static {p2, v2, p3, v0}, Lvrh;->b(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lwrh;

    move-result-object v7

    new-instance v8, Lulh;

    invoke-direct {v8, v1}, Lulh;-><init>(Lvlh;)V

    iput-object p1, v8, Lulh;->a:Lenh;

    iget-object p1, p0, Lwlh;->e:Lwjh;

    new-instance p2, Lxjh;

    invoke-direct {p2, v8, v1}, Lxjh;-><init>(Lujh;Lcom/google/android/gms/internal/ads/zzbuy;)V

    new-instance p3, Lslh;

    invoke-direct {p3, p0}, Lslh;-><init>(Lwlh;)V

    invoke-interface {p1, p2, p3, v1}, Lwjh;->a(Lxjh;Lvjh;Ljava/lang/Object;)Lim5;

    move-result-object p1

    iput-object p1, p0, Lwlh;->i:Lim5;

    new-instance p2, Ltlh;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Ltlh;-><init>(Lwlh;Lb5h;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Lulh;)V

    iget-object p0, p0, Lwlh;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    move p2, v9

    :goto_1
    return p2
.end method

.method public final i(I)V
    .locals 0

    iget-object p0, p0, Lwlh;->h:Lcnh;

    invoke-virtual {p0}, Lcnh;->L()Lpmh;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpmh;->a(I)Lpmh;

    return-void
.end method

.method public final j(Lujh;)Lajg;
    .locals 3

    check-cast p1, Lulh;

    iget-object v0, p0, Lwlh;->c:Llkf;

    invoke-virtual {v0}, Llkf;->m()Lajg;

    move-result-object v0

    new-instance v1, Lpyf;

    invoke-direct {v1}, Lpyf;-><init>()V

    iget-object v2, p0, Lwlh;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    iget-object p1, p1, Lulh;->a:Lenh;

    invoke-virtual {v1, p1}, Lpyf;->k(Lenh;)Lpyf;

    iget-object p0, p0, Lwlh;->f:Lwmh;

    invoke-virtual {v1, p0}, Lpyf;->j(Lwmh;)Lpyf;

    invoke-virtual {v1}, Lpyf;->l()Lryf;

    move-result-object p0

    invoke-interface {v0, p0}, Lajg;->b(Lryf;)Lajg;

    new-instance p0, Lb6g;

    invoke-direct {p0}, Lb6g;-><init>()V

    invoke-virtual {p0}, Lb6g;->q()Ld6g;

    move-result-object p0

    invoke-interface {v0, p0}, Lajg;->a(Ld6g;)Lajg;

    return-object v0
.end method

.method public final zza()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

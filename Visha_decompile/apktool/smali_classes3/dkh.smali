.class public final Ldkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Llkf;

.field public final d:Lk4h;

.field public final e:Lhlh;

.field public f:Lcom/google/android/gms/internal/ads/zzbdd;

.field public final g:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final h:Lcnh;

.field public i:Lim5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Llkf;Lk4h;Lhlh;Lcnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkh;->a:Landroid/content/Context;

    iput-object p2, p0, Ldkh;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ldkh;->c:Llkf;

    iput-object p4, p0, Ldkh;->d:Lk4h;

    iput-object p6, p0, Ldkh;->h:Lcnh;

    iput-object p5, p0, Ldkh;->e:Lhlh;

    invoke-virtual {p3}, Llkf;->C()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iput-object p1, p0, Ldkh;->g:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static bridge synthetic b(Ldkh;)Lk4h;
    .locals 0

    iget-object p0, p0, Ldkh;->d:Lk4h;

    return-object p0
.end method

.method public static bridge synthetic c(Ldkh;)Lhlh;
    .locals 0

    iget-object p0, p0, Ldkh;->e:Lhlh;

    return-object p0
.end method

.method public static bridge synthetic d(Ldkh;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Ldkh;->g:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method public static bridge synthetic e(Ldkh;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Ldkh;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic f(Ldkh;)V
    .locals 2

    iget-object p0, p0, Ldkh;->d:Lk4h;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public static bridge synthetic g(Ldkh;Lim5;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Ldkh;->i:Lim5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;La5h;Lb5h;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Ldkh;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeyr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzeyr;-><init>(Ldkh;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Ldkh;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lcye;->Z8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldkh;->c:Llkf;

    invoke-virtual {v0}, Llkf;->p()Lzog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzog;->p(Z)V

    :cond_2
    check-cast p3, Lbkh;

    iget-object p3, p3, Lbkh;->a:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v0, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v4

    invoke-interface {v4}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v2}, [Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lbmg;->a([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Ldkh;->h:Lcnh;

    invoke-virtual {v2, p2}, Lcnh;->P(Ljava/lang/String;)Lcnh;

    invoke-virtual {v2, p3}, Lcnh;->O(Lcom/google/android/gms/ads/internal/client/zzr;)Lcnh;

    invoke-virtual {v2, p1}, Lcnh;->h(Lcom/google/android/gms/ads/internal/client/zzm;)Lcnh;

    invoke-virtual {v2, v0}, Lcnh;->a(Landroid/os/Bundle;)Lcnh;

    iget-object p2, p0, Ldkh;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcnh;->j()Lenh;

    move-result-object p3

    invoke-static {p3}, Lgsh;->f(Lenh;)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {p2, v0, v2, p1}, Lvrh;->b(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lwrh;

    move-result-object v7

    sget-object v0, Lcye;->n8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldkh;->c:Llkf;

    invoke-virtual {v0}, Llkf;->k()Lxag;

    move-result-object v0

    new-instance v3, Lpyf;

    invoke-direct {v3}, Lpyf;-><init>()V

    invoke-virtual {v3, p2}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    invoke-virtual {v3, p3}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v3}, Lpyf;->l()Lryf;

    move-result-object p2

    invoke-interface {v0, p2}, Lxag;->o(Lryf;)Lxag;

    new-instance p2, Lb6g;

    invoke-direct {p2}, Lb6g;-><init>()V

    iget-object p3, p0, Ldkh;->d:Lk4h;

    iget-object v3, p0, Ldkh;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v3}, Lb6g;->m(Lp2g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, p3, v3}, Lb6g;->n(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2}, Lb6g;->q()Ld6g;

    move-result-object p2

    invoke-interface {v0, p2}, Lxag;->h(Ld6g;)Lxag;

    new-instance p2, Lw2h;

    iget-object p3, p0, Ldkh;->f:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {p2, p3}, Lw2h;-><init>(Lcom/google/android/gms/internal/ads/zzbdd;)V

    invoke-interface {v0, p2}, Lxag;->l(Lw2h;)Lxag;

    invoke-interface {v0}, Lxag;->zzf()Lyag;

    move-result-object p2

    :goto_0
    move-object v8, p2

    goto :goto_1

    :cond_3
    new-instance v0, Lb6g;

    invoke-direct {v0}, Lb6g;-><init>()V

    iget-object v3, p0, Ldkh;->e:Lhlh;

    if-eqz v3, :cond_4

    iget-object v4, p0, Ldkh;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v4}, Lb6g;->h(Lkzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, v3, v4}, Lb6g;->i(Lb1g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, v3, v4}, Lb6g;->e(Lnzf;Ljava/util/concurrent/Executor;)Lb6g;

    :cond_4
    iget-object v3, p0, Ldkh;->c:Llkf;

    invoke-virtual {v3}, Llkf;->k()Lxag;

    move-result-object v3

    new-instance v4, Lpyf;

    invoke-direct {v4}, Lpyf;-><init>()V

    invoke-virtual {v4, p2}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    invoke-virtual {v4, p3}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v4}, Lpyf;->l()Lryf;

    move-result-object p2

    invoke-interface {v3, p2}, Lxag;->o(Lryf;)Lxag;

    iget-object p2, p0, Ldkh;->d:Lk4h;

    iget-object p3, p0, Ldkh;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p2, p3}, Lb6g;->m(Lp2g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->h(Lkzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->i(Lb1g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->e(Lnzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->d(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->o(Lt8g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->n(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->l(Lc2g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0, p2, p3}, Lb6g;->f(Lzzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {v0}, Lb6g;->q()Ld6g;

    move-result-object p2

    invoke-interface {v3, p2}, Lxag;->h(Ld6g;)Lxag;

    new-instance p2, Lw2h;

    iget-object p3, p0, Ldkh;->f:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {p2, p3}, Lw2h;-><init>(Lcom/google/android/gms/internal/ads/zzbdd;)V

    invoke-interface {v3, p2}, Lxag;->l(Lw2h;)Lxag;

    invoke-interface {v3}, Lxag;->zzf()Lyag;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget-object p2, Lsze;->c:Leze;

    invoke-virtual {p2}, Leze;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v8}, Lyag;->d()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-object v6, p2

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    move-object v6, p1

    :goto_2
    invoke-virtual {v8}, Lyag;->a()Lgvf;

    move-result-object p1

    invoke-virtual {p1}, Lgvf;->i()Lim5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgvf;->h(Lim5;)Lim5;

    move-result-object p1

    iput-object p1, p0, Ldkh;->i:Lim5;

    new-instance p2, Lckh;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lckh;-><init>(Ldkh;Lb5h;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Lyag;)V

    iget-object p0, p0, Ldkh;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 0

    iput-object p1, p0, Ldkh;->f:Lcom/google/android/gms/internal/ads/zzbdd;

    return-void
.end method

.method public final zza()Z
    .locals 0

    iget-object p0, p0, Ldkh;->i:Lim5;

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

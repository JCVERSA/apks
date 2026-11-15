.class public final Lpih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Llkf;

.field public final d:Lk4h;

.field public final e:Lo4h;

.field public final f:Landroid/view/ViewGroup;

.field public g:Lcom/google/android/gms/internal/ads/zzbdd;

.field public final h:Lcom/google/android/gms/internal/ads/i4;

.field public final i:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final j:Lj5g;

.field public final k:Lcnh;

.field public l:Lim5;

.field public m:Z

.field public n:Lcom/google/android/gms/ads/internal/client/zze;

.field public o:Lb5h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzr;Llkf;Lk4h;Lo4h;Lcnh;Lj5g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpih;->a:Landroid/content/Context;

    iput-object p2, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lpih;->c:Llkf;

    iput-object p5, p0, Lpih;->d:Lk4h;

    iput-object p6, p0, Lpih;->e:Lo4h;

    iput-object p7, p0, Lpih;->k:Lcnh;

    invoke-virtual {p4}, Llkf;->j()Lcom/google/android/gms/internal/ads/i4;

    move-result-object p2

    iput-object p2, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {p4}, Llkf;->C()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p2

    iput-object p2, p0, Lpih;->i:Lcom/google/android/gms/internal/ads/zzfgq;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lpih;->f:Landroid/view/ViewGroup;

    iput-object p8, p0, Lpih;->j:Lj5g;

    invoke-virtual {p7, p3}, Lcnh;->O(Lcom/google/android/gms/ads/internal/client/zzr;)Lcnh;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpih;->m:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lpih;->n:Lcom/google/android/gms/ads/internal/client/zze;

    iput-object p1, p0, Lpih;->o:Lb5h;

    return-void
.end method

.method public static bridge synthetic c(Lpih;)Lcom/google/android/gms/internal/ads/i4;
    .locals 0

    iget-object p0, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    return-object p0
.end method

.method public static bridge synthetic d(Lpih;)Lj5g;
    .locals 0

    iget-object p0, p0, Lpih;->j:Lj5g;

    return-object p0
.end method

.method public static bridge synthetic f(Lpih;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lpih;->i:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method public static synthetic g(Lpih;)V
    .locals 2

    iget-object p0, p0, Lpih;->d:Lk4h;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public static synthetic h(Lpih;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    iget-object p0, p0, Lpih;->d:Lk4h;

    invoke-virtual {p0, p1}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public static bridge synthetic i(Lpih;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    iput-object p1, p0, Lpih;->n:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method

.method public static bridge synthetic j(Lpih;)V
    .locals 0

    invoke-virtual {p0}, Lpih;->s()V

    return-void
.end method

.method public static bridge synthetic q(Lpih;)Z
    .locals 0

    iget-boolean p0, p0, Lpih;->m:Z

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;La5h;Lb5h;)Z
    .locals 7

    const/4 p3, 0x0

    if-nez p2, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for banner ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzexe;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzexe;-><init>(Lpih;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p3

    :cond_0
    invoke-virtual {p0}, Lpih;->zza()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lpih;->k:Lcnh;

    invoke-virtual {p1}, Lcnh;->s()Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lpih;->m:Z

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcye;->Z8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpih;->c:Llkf;

    invoke-virtual {v0}, Llkf;->p()Lzog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzog;->p(Z)V

    :cond_2
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

    iget-object v2, p0, Lpih;->k:Lcnh;

    invoke-virtual {v2, p2}, Lcnh;->P(Ljava/lang/String;)Lcnh;

    invoke-virtual {v2, p1}, Lcnh;->h(Lcom/google/android/gms/ads/internal/client/zzm;)Lcnh;

    invoke-virtual {v2, v0}, Lcnh;->a(Landroid/os/Bundle;)Lcnh;

    iget-object p2, p0, Lpih;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcnh;->j()Lenh;

    move-result-object v0

    invoke-static {v0}, Lgsh;->f(Lenh;)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {p2, v3, v4, p1}, Lvrh;->b(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lwrh;

    move-result-object v3

    sget-object v5, Lf0f;->d:Leze;

    invoke-virtual {v5}, Leze;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcnh;->D()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzk:Z

    if-eqz v2, :cond_4

    iget-object p0, p0, Lpih;->d:Lk4h;

    if-eqz p0, :cond_3

    const/4 p1, 0x7

    invoke-static {p1, v6, v6}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_3
    :goto_0
    return p3

    :cond_4
    sget-object p3, Lcye;->l8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lpih;->c:Llkf;

    invoke-virtual {p3}, Llkf;->i()Lzsf;

    move-result-object p3

    new-instance v2, Lpyf;

    invoke-direct {v2}, Lpyf;-><init>()V

    invoke-virtual {v2, p2}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    invoke-virtual {v2, v0}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v2}, Lpyf;->l()Lryf;

    move-result-object p2

    invoke-interface {p3, p2}, Lzsf;->k(Lryf;)Lzsf;

    new-instance p2, Lb6g;

    invoke-direct {p2}, Lb6g;-><init>()V

    iget-object v0, p0, Lpih;->d:Lk4h;

    iget-object v2, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v2}, Lb6g;->m(Lp2g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->n(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2}, Lb6g;->q()Ld6g;

    move-result-object p2

    invoke-interface {p3, p2}, Lzsf;->f(Ld6g;)Lzsf;

    new-instance p2, Lw2h;

    iget-object v0, p0, Lpih;->g:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {p2, v0}, Lw2h;-><init>(Lcom/google/android/gms/internal/ads/zzbdd;)V

    invoke-interface {p3, p2}, Lzsf;->j(Lw2h;)Lzsf;

    new-instance p2, Llbg;

    sget-object v0, Lsdg;->h:Lsdg;

    invoke-direct {p2, v0, v6}, Llbg;-><init>(Lsdg;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    invoke-interface {p3, p2}, Lzsf;->d(Llbg;)Lzsf;

    iget-object p2, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    iget-object v0, p0, Lpih;->j:Lj5g;

    new-instance v2, Lqtf;

    invoke-direct {v2, p2, v0}, Lqtf;-><init>(Lcom/google/android/gms/internal/ads/i4;Lj5g;)V

    invoke-interface {p3, v2}, Lzsf;->p(Lqtf;)Lzsf;

    iget-object p2, p0, Lpih;->f:Landroid/view/ViewGroup;

    new-instance v0, Lprf;

    invoke-direct {v0, p2}, Lprf;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p3, v0}, Lzsf;->c(Lprf;)Lzsf;

    invoke-interface {p3}, Lzsf;->zzk()Latf;

    move-result-object p2

    goto :goto_1

    :cond_5
    iget-object p3, p0, Lpih;->c:Llkf;

    invoke-virtual {p3}, Llkf;->i()Lzsf;

    move-result-object p3

    new-instance v2, Lpyf;

    invoke-direct {v2}, Lpyf;-><init>()V

    invoke-virtual {v2, p2}, Lpyf;->f(Landroid/content/Context;)Lpyf;

    invoke-virtual {v2, v0}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v2}, Lpyf;->l()Lryf;

    move-result-object p2

    invoke-interface {p3, p2}, Lzsf;->k(Lryf;)Lzsf;

    new-instance p2, Lb6g;

    invoke-direct {p2}, Lb6g;-><init>()V

    iget-object v0, p0, Lpih;->d:Lk4h;

    iget-object v2, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v2}, Lb6g;->m(Lp2g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->d(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lb6g;

    iget-object v5, p0, Lpih;->e:Lo4h;

    invoke-virtual {p2, v5, v2}, Lb6g;->d(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->o(Lt8g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->g(Ld0g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->h(Lkzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->i(Lb1g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->e(Lnzf;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->n(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2, v0, v2}, Lb6g;->l(Lc2g;Ljava/util/concurrent/Executor;)Lb6g;

    invoke-virtual {p2}, Lb6g;->q()Ld6g;

    move-result-object p2

    invoke-interface {p3, p2}, Lzsf;->f(Ld6g;)Lzsf;

    new-instance p2, Lw2h;

    iget-object v0, p0, Lpih;->g:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {p2, v0}, Lw2h;-><init>(Lcom/google/android/gms/internal/ads/zzbdd;)V

    invoke-interface {p3, p2}, Lzsf;->j(Lw2h;)Lzsf;

    new-instance p2, Llbg;

    sget-object v0, Lsdg;->h:Lsdg;

    invoke-direct {p2, v0, v6}, Llbg;-><init>(Lsdg;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    invoke-interface {p3, p2}, Lzsf;->d(Llbg;)Lzsf;

    iget-object p2, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    iget-object v0, p0, Lpih;->j:Lj5g;

    new-instance v2, Lqtf;

    invoke-direct {v2, p2, v0}, Lqtf;-><init>(Lcom/google/android/gms/internal/ads/i4;Lj5g;)V

    invoke-interface {p3, v2}, Lzsf;->p(Lqtf;)Lzsf;

    iget-object p2, p0, Lpih;->f:Landroid/view/ViewGroup;

    new-instance v0, Lprf;

    invoke-direct {v0, p2}, Lprf;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p3, v0}, Lzsf;->c(Lprf;)Lzsf;

    invoke-interface {p3}, Lzsf;->zzk()Latf;

    move-result-object p2

    :goto_1
    sget-object p3, Lsze;->c:Leze;

    invoke-virtual {p3}, Leze;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Latf;->e()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {v6, p3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    :cond_6
    iput-object p4, p0, Lpih;->o:Lb5h;

    invoke-virtual {p2}, Latf;->c()Lgvf;

    move-result-object p1

    invoke-virtual {p1}, Lgvf;->i()Lim5;

    move-result-object p3

    invoke-virtual {p1, p3}, Lgvf;->h(Lim5;)Lim5;

    move-result-object p1

    iput-object p1, p0, Lpih;->l:Lim5;

    new-instance p3, Loih;

    invoke-direct {p3, p0, v6, v3, p2}, Loih;-><init>(Lpih;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Latf;)V

    iget-object p0, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final b()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lpih;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final e()Lcnh;
    .locals 0

    iget-object p0, p0, Lpih;->k:Lcnh;

    return-object p0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lpih;->j:Lj5g;

    iget-object p0, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {v0}, Lj5g;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/i4;->F(I)V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lpih;->j:Lj5g;

    iget-object p0, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {v0}, Lj5g;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/i4;->G(I)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 0

    iget-object p0, p0, Lpih;->e:Lo4h;

    invoke-virtual {p0, p1}, Lo4h;->a(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method public final n(Ld2g;)V
    .locals 1

    iget-object v0, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {p0, p1, v0}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 0

    iput-object p1, p0, Lpih;->g:Lcom/google/android/gms/internal/ads/zzbdd;

    return-void
.end method

.method public final p()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpih;->l:Lim5;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lpih;->l:Lim5;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsrf;

    const/4 v2, 0x0

    iput-object v2, p0, Lpih;->l:Lim5;

    iget-object v2, p0, Lpih;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Lsrf;->k()Landroid/view/View;

    invoke-virtual {v0}, Lsrf;->k()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Banner view provided from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already has a parent view. Removing its old parent."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lsrf;->k()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    sget-object v3, Lcye;->l8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lbuf;->e()Lb4g;

    move-result-object v4

    iget-object v5, p0, Lpih;->d:Lk4h;

    invoke-virtual {v4, v5}, Lb4g;->a(Lk4h;)Lb4g;

    iget-object v5, p0, Lpih;->e:Lo4h;

    invoke-virtual {v4, v5}, Lb4g;->c(Lo4h;)Lb4g;

    :cond_2
    invoke-virtual {v0}, Lsrf;->k()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lpih;->o:Lb5h;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lb5h;->zzb(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lpih;->d:Lk4h;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzexd;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzexd;-><init>(Lk4h;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {v0}, Lsrf;->i()I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lpih;->m:Z

    iget-object v2, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {v0}, Lsrf;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/i4;->F(I)V

    invoke-virtual {v0}, Lsrf;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/i4;->G(I)V

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lpih;->m:Z

    iget-object v2, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {v0}, Lsrf;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/i4;->F(I)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lpih;->s()V

    const-string v2, "Error occurred while refreshing the ad. Making a new ad request."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lpih;->m:Z

    iget-object v0, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i4;->zza()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lpih;->l:Lim5;

    if-eqz v0, :cond_7

    const-string v0, "Show timer went off but there is an ongoing ad request."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iput-boolean v1, p0, Lpih;->m:Z

    goto :goto_2

    :cond_7
    const-string v0, "No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iput-boolean v1, p0, Lpih;->m:Z

    iget-object v0, p0, Lpih;->h:Lcom/google/android/gms/internal/ads/i4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i4;->zza()V

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final r()Z
    .locals 1

    iget-object p0, p0, Lpih;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzX(Landroid/view/View;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final s()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lpih;->l:Lim5;

    iget-object v1, p0, Lpih;->n:Lcom/google/android/gms/ads/internal/client/zze;

    iput-object v0, p0, Lpih;->n:Lcom/google/android/gms/ads/internal/client/zze;

    sget-object v0, Lcye;->l8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lpih;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzexc;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzexc;-><init>(Lpih;Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lpih;->o:Lb5h;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lb5h;->zza()V

    :cond_1
    return-void
.end method

.method public final zza()Z
    .locals 0

    iget-object p0, p0, Lpih;->l:Lim5;

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

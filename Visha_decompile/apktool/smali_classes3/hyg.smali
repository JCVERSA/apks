.class public final Lhyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Latf;

.field public final b:Landroid/content/Context;

.field public final c:Lujg;

.field public final d:Lenh;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lm2i;

.field public final g:Llmg;


# direct methods
.method public constructor <init>(Latf;Landroid/content/Context;Ljava/util/concurrent/Executor;Lujg;Lenh;Lm2i;Llmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhyg;->b:Landroid/content/Context;

    iput-object p1, p0, Lhyg;->a:Latf;

    iput-object p3, p0, Lhyg;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lhyg;->c:Lujg;

    iput-object p5, p0, Lhyg;->d:Lenh;

    iput-object p6, p0, Lhyg;->f:Lm2i;

    iput-object p7, p0, Lhyg;->g:Llmg;

    return-void
.end method

.method public static synthetic c(Lhyg;Lvmh;Lhmh;Ljava/lang/Object;)Lim5;
    .locals 7

    sget-object p3, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyg;->g:Llmg;

    invoke-virtual {v0}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzu:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lhyg;->b:Landroid/content/Context;

    iget-object v1, p2, Lhmh;->u:Ljava/util/List;

    invoke-static {v0, v1}, Lknh;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    iget-object v2, p0, Lhyg;->c:Lujg;

    iget-object v3, p1, Lvmh;->b:Lumh;

    iget-object v3, v3, Lumh;->b:Lkmh;

    invoke-virtual {v2, v1, p2, v3}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v2

    iget-boolean v3, p2, Lhmh;->W:Z

    invoke-interface {v2, v3}, Lejf;->zzac(Z)V

    sget-object v3, Lcye;->U7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lhmh;->g0:Z

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lejf;->zzF()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzcps;->zza(Landroid/content/Context;Landroid/view/View;Lhmh;)Lcom/google/android/gms/internal/ads/zzcps;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lejf;->zzF()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lhyg;->f:Lm2i;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-interface {v4, p2}, Lm2i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/internal/util/zzau;

    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdoh;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/util/zzau;)V

    move-object v0, v5

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lhyg;->g:Llmg;

    invoke-virtual {v3}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v5

    invoke-interface {v5}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v3, p0, Lhyg;->a:Latf;

    new-instance v4, Lpuf;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lasf;

    new-instance v6, Ldyg;

    invoke-direct {v6, v2}, Ldyg;-><init>(Lejf;)V

    invoke-static {v1}, Lknh;->b(Lcom/google/android/gms/ads/internal/client/zzr;)Limh;

    move-result-object v1

    invoke-direct {p1, v0, v2, v6, v1}, Lasf;-><init>(Landroid/view/View;Lejf;Lztf;Limh;)V

    invoke-virtual {v3, v4, p1}, Latf;->a(Lpuf;Lasf;)Lvrf;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lhyg;->g:Llmg;

    invoke-virtual {p3}, Llmg;->a()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzw:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    invoke-virtual {p1}, Lvrf;->j()Ltjg;

    move-result-object p3

    iget-object v0, p0, Lhyg;->g:Llmg;

    invoke-virtual {v0}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v5, v1}, Ltjg;->i(Lejf;ZLq3f;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcuf;->b()Lb0g;

    move-result-object p3

    new-instance v1, Leyg;

    invoke-direct {v1, v2}, Leyg;-><init>(Lejf;)V

    sget-object v3, Lzef;->g:Lg8i;

    invoke-virtual {p3, v1, v3}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p3, p2, Lhmh;->s:Llmh;

    iget-object v1, p3, Llmh;->a:Ljava/lang/String;

    sget-object v4, Lcye;->p5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lvrf;->k()Laxg;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Laxg;->e(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p2}, Lyjf;->a(Lhmh;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lyjf;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p1}, Lvrf;->j()Ltjg;

    iget-object p3, p3, Llmh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v2, p3, v1, v0}, Ltjg;->j(Lejf;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lim5;

    move-result-object p3

    iget-boolean p2, p2, Lhmh;->M:Z

    if-eqz p2, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/ads/zzedc;

    invoke-direct {p2, v2}, Lcom/google/android/gms/internal/ads/zzedc;-><init>(Lejf;)V

    iget-object v0, p0, Lhyg;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, v0}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzedd;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/ads/zzedd;-><init>(Lhyg;Lejf;)V

    iget-object p0, p0, Lhyg;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, p0}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lfyg;

    invoke-direct {p0, p1}, Lfyg;-><init>(Lvrf;)V

    invoke-static {p3, p0, v3}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lhyg;Lejf;)V
    .locals 1

    invoke-interface {p1}, Lejf;->zzab()V

    iget-object p0, p0, Lhyg;->d:Lenh;

    invoke-interface {p1}, Lejf;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object v0

    iget-object p0, p0, Lenh;->a:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfn;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    :cond_0
    sget-object p0, Lcye;->v1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lejf;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lejf;->onPause()V

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lejf;->zzav(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v1, Lgyg;

    invoke-direct {v1, p0, p1, p2}, Lgyg;-><init>(Lhyg;Lvmh;Lhmh;)V

    iget-object p0, p0, Lhyg;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p2, Lhmh;->s:Llmh;

    if-eqz p0, :cond_0

    iget-object p0, p0, Llmh;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

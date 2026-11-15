.class public final Ls9g;
.super Lbuf;
.source "SourceFile"


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Ljava/lang/ref/WeakReference;

.field public final l:Lu7g;

.field public final m:Lebg;

.field public final n:Lxuf;

.field public final o:Ldxh;

.field public final p:Lwzf;

.field public final q:Ltef;

.field public r:Z


# direct methods
.method public constructor <init>(Lauf;Landroid/content/Context;Lejf;Lu7g;Lebg;Lxuf;Ldxh;Lwzf;Ltef;)V
    .locals 0

    invoke-direct {p0, p1}, Lbuf;-><init>(Lauf;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ls9g;->r:Z

    iput-object p2, p0, Ls9g;->j:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ls9g;->k:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Ls9g;->l:Lu7g;

    iput-object p5, p0, Ls9g;->m:Lebg;

    iput-object p6, p0, Ls9g;->n:Lxuf;

    iput-object p7, p0, Ls9g;->o:Ldxh;

    iput-object p8, p0, Ls9g;->p:Lwzf;

    iput-object p9, p0, Ls9g;->q:Ltef;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ls9g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejf;

    sget-object v1, Lcye;->H6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ls9g;->r:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lzef;->f:Lg8i;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzddz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzddz;-><init>(Lejf;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lejf;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Ls9g;->n:Lxuf;

    invoke-virtual {p0}, Lxuf;->a()Z

    move-result p0

    return p0
.end method

.method public final j(ZLandroid/app/Activity;)Z
    .locals 6

    iget-object v0, p0, Ls9g;->l:Lu7g;

    invoke-virtual {v0}, Lu7g;->zzb()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Ls9g;->m:Lebg;

    invoke-interface {v1}, Lebg;->zza()Lhmh;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lhmh;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lcye;->Q0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v2, p0, Ls9g;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Ls9g;->p:Lwzf;

    invoke-virtual {p1}, Lwzf;->zzb()V

    sget-object p1, Lcye;->R0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ls9g;->o:Ldxh;

    iget-object p0, p0, Lbuf;->a:Lvmh;

    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    iget-object p0, p0, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ldxh;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Ls9g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lejf;

    sget-object v4, Lcye;->Yb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lejf;->zzD()Lhmh;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v4, v2, Lhmh;->r0:Z

    if-eqz v4, :cond_1

    iget v2, v2, Lhmh;->s0:I

    iget-object v4, p0, Ls9g;->q:Ltef;

    invoke-virtual {v4}, Ltef;->a()I

    move-result v4

    if-eq v2, v4, :cond_1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The interstitial consent form has been shown."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p0, p0, Ls9g;->p:Lwzf;

    const/16 p1, 0xc

    const-string p2, "The consent form has already been shown."

    invoke-static {p1, p2, v5}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwzf;->a(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Ls9g;->r:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "The interstitial ad has been shown."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v2, p0, Ls9g;->p:Lwzf;

    const/16 v4, 0xa

    invoke-static {v4, v5, v5}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v4

    invoke-virtual {v2, v4}, Lwzf;->a(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_2
    iget-boolean v2, p0, Ls9g;->r:Z

    if-nez v2, :cond_4

    if-nez p2, :cond_3

    iget-object p2, p0, Ls9g;->j:Landroid/content/Context;

    :cond_3
    :try_start_0
    iget-object v2, p0, Ls9g;->p:Lwzf;

    invoke-interface {v1, p1, p2, v2}, Lebg;->a(ZLandroid/content/Context;Lwzf;)V

    invoke-virtual {v0}, Lu7g;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdfl; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls9g;->r:Z

    return p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Ls9g;->p:Lwzf;

    invoke-virtual {p0, p1}, Lwzf;->y(Lcom/google/android/gms/internal/ads/zzdfl;)V

    :cond_4
    :goto_0
    return v3
.end method

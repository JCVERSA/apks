.class public final Lwig;
.super Lbuf;
.source "SourceFile"


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Ljava/lang/ref/WeakReference;

.field public final l:Lebg;

.field public final m:Lu7g;

.field public final n:Lwzf;

.field public final o:Lh1g;

.field public final p:Lxuf;

.field public final q:Lcom/google/android/gms/internal/ads/zzbwa;

.field public final r:Ldxh;

.field public final s:Lxmh;

.field public t:Z


# direct methods
.method public constructor <init>(Lauf;Landroid/content/Context;Lejf;Lebg;Lu7g;Lwzf;Lh1g;Lxuf;Lhmh;Ldxh;Lxmh;)V
    .locals 0

    invoke-direct {p0, p1}, Lbuf;-><init>(Lauf;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lwig;->t:Z

    iput-object p2, p0, Lwig;->j:Landroid/content/Context;

    iput-object p4, p0, Lwig;->l:Lebg;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lwig;->k:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lwig;->m:Lu7g;

    iput-object p6, p0, Lwig;->n:Lwzf;

    iput-object p7, p0, Lwig;->o:Lh1g;

    iput-object p8, p0, Lwig;->p:Lxuf;

    iput-object p10, p0, Lwig;->r:Ldxh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbwu;

    iget-object p2, p9, Lhmh;->l:Lcom/google/android/gms/internal/ads/zzbvw;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lwig;->q:Lcom/google/android/gms/internal/ads/zzbwa;

    iput-object p11, p0, Lwig;->s:Lxmh;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lwig;->k:Ljava/lang/ref/WeakReference;

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

    iget-boolean v1, p0, Lwig;->t:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lzef;->f:Lg8i;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdnh;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdnh;-><init>(Lejf;)V

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

.method public final i()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lwig;->o:Lh1g;

    invoke-virtual {p0}, Lh1g;->F()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/zzbwa;
    .locals 0

    iget-object p0, p0, Lwig;->q:Lcom/google/android/gms/internal/ads/zzbwa;

    return-object p0
.end method

.method public final k()Lxmh;
    .locals 0

    iget-object p0, p0, Lwig;->s:Lxmh;

    return-object p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lwig;->p:Lxuf;

    invoke-virtual {p0}, Lxuf;->a()Z

    move-result p0

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lwig;->t:Z

    return p0
.end method

.method public final n()Z
    .locals 0

    iget-object p0, p0, Lwig;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lejf;->zzaG()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o(ZLandroid/app/Activity;)Z
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lwig;->l:Lebg;

    invoke-interface {v0}, Lebg;->zza()Lhmh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lhmh;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcye;->Q0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lwig;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lwig;->n:Lwzf;

    invoke-virtual {p1}, Lwzf;->zzb()V

    sget-object p1, Lcye;->R0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lwig;->r:Ldxh;

    iget-object p0, p0, Lbuf;->a:Lvmh;

    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    iget-object p0, p0, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ldxh;->a(Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    iget-boolean v1, p0, Lwig;->t:Z

    if-eqz v1, :cond_2

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The rewarded ad have been showed."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p0, p0, Lwig;->n:Lwzf;

    const/16 p1, 0xa

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwzf;->a(Lcom/google/android/gms/ads/internal/client/zze;)V

    return v2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lwig;->t:Z

    iget-object v3, p0, Lwig;->m:Lu7g;

    invoke-virtual {v3}, Lu7g;->zzb()V

    if-nez p2, :cond_3

    iget-object p2, p0, Lwig;->j:Landroid/content/Context;

    :cond_3
    :try_start_0
    iget-object v4, p0, Lwig;->n:Lwzf;

    invoke-interface {v0, p1, p2, v4}, Lebg;->a(ZLandroid/content/Context;Lwzf;)V

    invoke-virtual {v3}, Lu7g;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdfl; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lwig;->n:Lwzf;

    invoke-virtual {p0, p1}, Lwzf;->y(Lcom/google/android/gms/internal/ads/zzdfl;)V

    return v2
.end method

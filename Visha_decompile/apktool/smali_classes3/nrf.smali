.class public final Lnrf;
.super Lbuf;
.source "SourceFile"


# instance fields
.field public final j:Lejf;

.field public final k:I

.field public final l:Landroid/content/Context;

.field public final m:Lcrf;

.field public final n:Lebg;

.field public final o:Lu7g;

.field public final p:Lwzf;

.field public final q:Z

.field public final r:Ltef;

.field public s:Z


# direct methods
.method public constructor <init>(Lauf;Landroid/content/Context;Lejf;ILcrf;Lebg;Lu7g;Lwzf;Ltef;)V
    .locals 0

    invoke-direct {p0, p1}, Lbuf;-><init>(Lauf;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnrf;->s:Z

    iput-object p3, p0, Lnrf;->j:Lejf;

    iput-object p2, p0, Lnrf;->l:Landroid/content/Context;

    iput p4, p0, Lnrf;->k:I

    iput-object p5, p0, Lnrf;->m:Lcrf;

    iput-object p6, p0, Lnrf;->n:Lebg;

    iput-object p7, p0, Lnrf;->o:Lu7g;

    iput-object p8, p0, Lnrf;->p:Lwzf;

    sget-object p1, Lcye;->x5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnrf;->q:Z

    iput-object p9, p0, Lnrf;->r:Ltef;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lbuf;->a()V

    iget-object p0, p0, Lnrf;->j:Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lejf;->destroy()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lnrf;->k:I

    return p0
.end method

.method public final j(Lmve;)V
    .locals 0

    iget-object p0, p0, Lnrf;->j:Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lejf;->zzak(Lmve;)V

    :cond_0
    return-void
.end method

.method public final k(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbah;Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lnrf;->l:Landroid/content/Context;

    :cond_0
    iget-boolean p2, p0, Lnrf;->q:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lnrf;->o:Lu7g;

    invoke-virtual {v0}, Lu7g;->zzb()V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lnrf;->n:Lebg;

    invoke-interface {v0}, Lebg;->zza()Lhmh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lhmh;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcye;->Q0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p2, p0, Lnrf;->p:Lwzf;

    invoke-virtual {p2}, Lwzf;->zzb()V

    sget-object p2, Lcye;->R0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Ldxh;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ldxh;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p0, p0, Lbuf;->a:Lvmh;

    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    iget-object p0, p0, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ldxh;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcye;->Yb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnrf;->j:Lejf;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lejf;->zzD()Lhmh;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lhmh;->r0:Z

    if-eqz v3, :cond_4

    iget v1, v1, Lhmh;->s0:I

    iget-object v3, p0, Lnrf;->r:Ltef;

    invoke-virtual {v3}, Ltef;->a()I

    move-result v3

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The app open consent form has been shown."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p0, p0, Lnrf;->p:Lwzf;

    const/16 p1, 0xc

    const-string p2, "The consent form has already been shown."

    invoke-static {p1, p2, v2}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwzf;->a(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lnrf;->s:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "App open interstitial ad is already visible."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v1, p0, Lnrf;->p:Lwzf;

    const/16 v3, 0xa

    invoke-static {v3, v2, v2}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwzf;->a(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_5
    iget-boolean v1, p0, Lnrf;->s:Z

    if-nez v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lnrf;->p:Lwzf;

    invoke-interface {v0, p3, p1, v1}, Lebg;->a(ZLandroid/content/Context;Lwzf;)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lnrf;->o:Lu7g;

    invoke-virtual {p1}, Lu7g;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdfl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnrf;->s:Z

    return-void

    :goto_2
    iget-object p0, p0, Lnrf;->p:Lwzf;

    invoke-virtual {p0, p1}, Lwzf;->y(Lcom/google/android/gms/internal/ads/zzdfl;)V

    :cond_7
    return-void
.end method

.method public final l(JI)V
    .locals 0

    iget-object p0, p0, Lnrf;->m:Lcrf;

    invoke-virtual {p0, p1, p2, p3}, Lcrf;->a(JI)V

    return-void
.end method

.class public final Lwrf;
.super Lsrf;
.source "SourceFile"


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Landroid/view/View;

.field public final l:Lejf;

.field public final m:Limh;

.field public final n:Lztf;

.field public final o:Lsdg;

.field public final p:Lv8g;

.field public final q:Lzxi;

.field public final r:Ljava/util/concurrent/Executor;

.field public s:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method public constructor <init>(Lauf;Landroid/content/Context;Limh;Landroid/view/View;Lejf;Lztf;Lsdg;Lv8g;Lzxi;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Lsrf;-><init>(Lauf;)V

    iput-object p2, p0, Lwrf;->j:Landroid/content/Context;

    iput-object p4, p0, Lwrf;->k:Landroid/view/View;

    iput-object p5, p0, Lwrf;->l:Lejf;

    iput-object p3, p0, Lwrf;->m:Limh;

    iput-object p6, p0, Lwrf;->n:Lztf;

    iput-object p7, p0, Lwrf;->o:Lsdg;

    iput-object p8, p0, Lwrf;->p:Lv8g;

    iput-object p9, p0, Lwrf;->q:Lzxi;

    iput-object p10, p0, Lwrf;->r:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic q(Lwrf;)V
    .locals 2

    iget-object v0, p0, Lwrf;->o:Lsdg;

    invoke-virtual {v0}, Lsdg;->e()Lcom/google/android/gms/internal/ads/zzbhe;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lwrf;->q:Lzxi;

    invoke-interface {v1}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzbx;

    iget-object p0, p0, Lwrf;->j:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzbhe;->zze(Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "RemoteException when notifyAdLoad is called"

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcob;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcob;-><init>(Lwrf;)V

    iget-object v1, p0, Lwrf;->r:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lbuf;->b()V

    return-void
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Lbuf;->a:Lvmh;

    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    iget p0, p0, Lkmh;->d:I

    return p0
.end method

.method public final j()I
    .locals 2

    sget-object v0, Lcye;->U7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuf;->b:Lhmh;

    iget-boolean v0, v0, Lhmh;->g0:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcye;->V7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lbuf;->a:Lvmh;

    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    iget p0, p0, Lkmh;->c:I

    return p0
.end method

.method public final k()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lwrf;->k:Landroid/view/View;

    return-object p0
.end method

.method public final l()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lwrf;->n:Lztf;

    invoke-interface {p0}, Lztf;->zza()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m()Limh;
    .locals 5

    iget-object v0, p0, Lwrf;->s:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lknh;->b(Lcom/google/android/gms/ads/internal/client/zzr;)Limh;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lbuf;->b:Lhmh;

    iget-boolean v1, v0, Lhmh;->c0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lhmh;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "FirstParty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lwrf;->k:Landroid/view/View;

    new-instance v0, Limh;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0, v2}, Limh;-><init>(IIZ)V

    return-object v0

    :cond_3
    :goto_0
    iget-object p0, v0, Lhmh;->r:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Limh;

    return-object p0
.end method

.method public final n()Limh;
    .locals 0

    iget-object p0, p0, Lwrf;->m:Limh;

    return-object p0
.end method

.method public final o()V
    .locals 0

    iget-object p0, p0, Lwrf;->p:Lv8g;

    invoke-virtual {p0}, Lv8g;->zza()V

    return-void
.end method

.method public final p(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lwrf;->l:Lejf;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lkkf;->c(Lcom/google/android/gms/ads/internal/client/zzr;)Lkkf;

    move-result-object v1

    invoke-interface {v0, v1}, Lejf;->zzaj(Lkkf;)V

    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iput-object p2, p0, Lwrf;->s:Lcom/google/android/gms/ads/internal/client/zzr;

    :cond_0
    return-void
.end method

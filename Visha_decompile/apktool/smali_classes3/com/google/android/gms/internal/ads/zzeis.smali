.class public final Lcom/google/android/gms/internal/ads/zzeis;
.super Lcom/google/android/gms/ads/internal/client/zzbw;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzbk;

.field private final zzc:Lenh;

.field private final zzd:Lsrf;

.field private final zze:Landroid/view/ViewGroup;

.field private final zzf:Lsmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzbk;Lenh;Lsrf;Lsmg;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/ads/internal/client/zzbk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Lcom/google/android/gms/ads/internal/client/zzbk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lenh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzf:Lsmg;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p4}, Lsrf;->k()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeis;->zzg()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeis;->zzg()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeis;->zze:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final zzA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lsrf;->o()V

    return-void
.end method

.method public final zzB()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lbuf;->d()Lm0g;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm0g;->H(Landroid/content/Context;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setAdClickListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setAdListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzE(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzF(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zze:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Lsrf;->p(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V

    :cond_0
    return-void
.end method

.method public final zzG(Lcom/google/android/gms/ads/internal/client/zzcl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lenh;

    iget-object p0, p0, Lenh;->c:Lk4h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk4h;->s(Lcom/google/android/gms/ads/internal/client/zzcl;)V

    :cond_0
    return-void
.end method

.method public final zzH(Lcom/google/android/gms/internal/ads/zzbad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .locals 0

    return-void
.end method

.method public final zzK(Lcom/google/android/gms/ads/internal/client/zzee;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzL(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzM(Lcom/google/android/gms/internal/ads/zzbth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzN(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 2

    sget-object v0, Lcye;->Gb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lenh;

    iget-object v0, v0, Lenh;->c:Lk4h;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzf:Lsmg;

    invoke-virtual {p0}, Lsmg;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Error in making CSI ping for reporting paid event callback"

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lk4h;->q(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    :cond_1
    return-void

    :cond_2
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/internal/ads/zzbtk;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzR(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzS(Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzT(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzU(Lcom/google/android/gms/ads/internal/client/zzfw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setVideoOptions is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzW(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzX()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzY()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbuf;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzZ()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final zzaa()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "loadAd is not supported for an Ad Manager AdView returned from AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final zzac(Lcom/google/android/gms/ads/internal/client/zzcp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "getAdMetadata is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {v0}, Lsrf;->m()Limh;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Landroid/content/Context;

    invoke-static {p0, v0}, Lknh;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Lcom/google/android/gms/ads/internal/client/zzbk;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/ads/internal/client/zzcl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lenh;

    iget-object p0, p0, Lenh;->n:Lcom/google/android/gms/ads/internal/client/zzcl;

    return-object p0
.end method

.method public final zzk()Lcom/google/android/gms/ads/internal/client/zzdx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p0

    return-object p0
.end method

.method public final zzl()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lsrf;->l()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0

    return-object p0
.end method

.method public final zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zze:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lenh;

    iget-object p0, p0, Lenh;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzt()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lbuf;->a()V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/ads/internal/client/zzbn;)V
    .locals 0

    return-void
.end method

.method public final zzz()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lsrf;

    invoke-virtual {p0}, Lbuf;->d()Lm0g;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm0g;->G(Landroid/content/Context;)V

    return-void
.end method

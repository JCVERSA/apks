.class public final Lcom/google/android/gms/internal/ads/zzdlw;
.super Lcom/google/android/gms/internal/ads/zzbgh;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lzcg;

.field private final zzc:Lddg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lzcg;Lddg;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lzcg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    return-void
.end method


# virtual methods
.method public final zzb()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->A()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->Q()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->W()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbfm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->Y()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbft;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->a0()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->i0()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lzcg;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->l0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->m0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zzp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lzcg;

    invoke-virtual {p0}, Lbuf;->a()V

    return-void
.end method

.method public final zzq(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lzcg;

    invoke-virtual {p0, p1}, Lzcg;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzr(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lzcg;

    invoke-virtual {p0, p1}, Lzcg;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzs(Landroid/os/Bundle;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lzcg;

    invoke-virtual {p0, p1}, Lzcg;->H(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

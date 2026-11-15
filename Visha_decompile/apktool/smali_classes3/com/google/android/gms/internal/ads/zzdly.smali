.class public final Lcom/google/android/gms/internal/ads/zzdly;
.super Lcom/google/android/gms/internal/ads/zzbgj;
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

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdly;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzb:Lzcg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    return-void
.end method


# virtual methods
.method public final zzb()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->Q()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->W()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbfm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->Y()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbft;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->b0()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->i0()Lcom/google/android/gms/dynamic/IObjectWrapper;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzb:Lzcg;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->k0()Ljava/lang/String;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzm()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzc:Lddg;

    invoke-virtual {p0}, Lddg;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zzn()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzb:Lzcg;

    invoke-virtual {p0}, Lbuf;->a()V

    return-void
.end method

.method public final zzo(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzb:Lzcg;

    invoke-virtual {p0, p1}, Lzcg;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzp(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzb:Lzcg;

    invoke-virtual {p0, p1}, Lzcg;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzq(Landroid/os/Bundle;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdly;->zzb:Lzcg;

    invoke-virtual {p0, p1}, Lzcg;->H(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

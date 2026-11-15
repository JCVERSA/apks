.class public final Lcom/google/android/gms/internal/ads/zzdxa;
.super Lcom/google/android/gms/internal/ads/zzbup;
.source "SourceFile"


# instance fields
.field private final zza:Leff;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public constructor <init>(Leff;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbup;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zza:Leff;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/util/zzbb;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zza:Leff;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/zzba;

    move-result-object p1

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzf(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    new-instance v0, Lmsg;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-direct {v0, v1, p1}, Lmsg;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbuy;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zza:Leff;

    invoke-virtual {p0, v0}, Leff;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzg(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 2

    new-instance v0, Lmsg;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1, p2}, Lmsg;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbuy;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zza:Leff;

    invoke-virtual {p0, v0}, Leff;->c(Ljava/lang/Object;)Z

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbym;

.field public final synthetic zzc:I

.field public final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzbym;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzbym;

    iput p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzbym;

    iget v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zzc:I

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->zzd:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzr(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzbym;ILandroid/os/Bundle;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    move-result-object p0

    return-object p0
.end method

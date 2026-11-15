.class public final synthetic Lcom/google/android/gms/internal/ads/zzgaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/f8;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lim5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/f8;ILim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgaq;->zza:Lcom/google/android/gms/internal/ads/f8;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgaq;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgaq;->zzc:Lim5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgaq;->zza:Lcom/google/android/gms/internal/ads/f8;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgaq;->zzb:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgaq;->zzc:Lim5;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/f8;->A(Lcom/google/android/gms/internal/ads/f8;ILim5;)V

    return-void
.end method

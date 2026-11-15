.class final Lcom/google/android/gms/internal/ads/zzgwh;
.super Lcom/google/android/gms/internal/ads/zzgwk;
.source "SourceFile"


# instance fields
.field private final zzc:I

.field private final zzd:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwk;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzq(III)I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzd:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzy(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:[B

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzc:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public final zzb(I)B
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzc:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:[B

    add-int/2addr v0, p1

    aget-byte p0, p0, v0

    return p0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzc:I

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzd:I

    return p0
.end method

.method public final zze([BIII)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->zzc:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:[B

    add-int/2addr v0, p2

    invoke-static {p0, v0, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/zzfwv;
.super Lcom/google/android/gms/internal/ads/zzfww;
.source "SourceFile"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfww;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfww;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfww;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lv2i;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzh(II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzc()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzg()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzg()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    invoke-static {p1, p2, v0}, Lv2i;->k(III)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzh(II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

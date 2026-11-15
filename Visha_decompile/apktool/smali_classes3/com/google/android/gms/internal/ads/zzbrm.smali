.class public final Lcom/google/android/gms/internal/ads/zzbrm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbrm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk9f;

    invoke-direct {v0}, Lk9f;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbrm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzc:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/ads/VersionInfo;)Lcom/google/android/gms/internal/ads/zzbrm;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrm;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/VersionInfo;->getMajorVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/VersionInfo;->getMinorVersion()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/VersionInfo;->getMicroVersion()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzbrm;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbrm;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrm;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbrm;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzc:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbrm;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzb:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbrm;->zza:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zza:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzc:I

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zza:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzc:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zza:I

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 p2, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzb:I

    invoke-static {p1, p2, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 p2, 0x3

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zzc:I

    invoke-static {p1, p2, p0}, Lz09;->s(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

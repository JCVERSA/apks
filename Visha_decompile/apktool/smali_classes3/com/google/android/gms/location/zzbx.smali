.class public final Lcom/google/android/gms/location/zzbx;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/zzbx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxdf;

    invoke-direct {v0}, Lxdf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/zzbx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Start hour must be in range [0, 23]."

    invoke-static {v3, v4}, Lwd8;->p(ZLjava/lang/Object;)V

    const/16 v3, 0x3b

    if-ltz p2, :cond_1

    if-gt p2, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v5, "Start minute must be in range [0, 59]."

    invoke-static {v4, v5}, Lwd8;->p(ZLjava/lang/Object;)V

    if-ltz p3, :cond_2

    if-gt p3, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v4, "End hour must be in range [0, 23]."

    invoke-static {v0, v4}, Lwd8;->p(ZLjava/lang/Object;)V

    if-ltz p4, :cond_3

    if-gt p4, v3, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    const-string v3, "End minute must be in range [0, 59]."

    invoke-static {v0, v3}, Lwd8;->p(ZLjava/lang/Object;)V

    add-int v0, p1, p2

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    const-string v0, "Parameters can\'t be all 0."

    invoke-static {v1, v0}, Lwd8;->p(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/zzbx;->zza:I

    iput p2, p0, Lcom/google/android/gms/location/zzbx;->zzb:I

    iput p3, p0, Lcom/google/android/gms/location/zzbx;->zzc:I

    iput p4, p0, Lcom/google/android/gms/location/zzbx;->zzd:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/zzbx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/zzbx;

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zza:I

    iget v3, p1, Lcom/google/android/gms/location/zzbx;->zza:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zzb:I

    iget v3, p1, Lcom/google/android/gms/location/zzbx;->zzb:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zzc:I

    iget v3, p1, Lcom/google/android/gms/location/zzbx;->zzc:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/gms/location/zzbx;->zzd:I

    iget p1, p1, Lcom/google/android/gms/location/zzbx;->zzd:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/location/zzbx;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/zzbx;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/google/android/gms/location/zzbx;->zzd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljc7;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/location/zzbx;->zza:I

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zzb:I

    iget v2, p0, Lcom/google/android/gms/location/zzbx;->zzc:I

    iget p0, p0, Lcom/google/android/gms/location/zzbx;->zzd:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x75

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "UserPreferredSleepWindow [startHour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startMinute="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endHour="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endMinute="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zza:I

    invoke-static {p1, v0, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zzb:I

    invoke-static {p1, v0, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/location/zzbx;->zzc:I

    invoke-static {p1, v0, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget p0, p0, Lcom/google/android/gms/location/zzbx;->zzd:I

    invoke-static {p1, v0, p0}, Lz09;->s(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

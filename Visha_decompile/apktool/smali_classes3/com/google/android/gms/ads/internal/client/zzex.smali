.class public final Lcom/google/android/gms/ads/internal/client/zzex;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/client/zzex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzey;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzey;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzex;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0xefc3650

    .line 1
    const-string v1, "24.2.0"

    const v2, 0xefaafb0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzex;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zza:I

    iput p2, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zza:I

    invoke-static {p1, v0, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzb:I

    invoke-static {p1, v0, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzc:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v1, p0, v0}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzb:I

    return p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzc:Ljava/lang/String;

    return-object p0
.end method

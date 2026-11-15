.class public final Lcom/google/android/gms/internal/ads/zzfnu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzfnu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsxh;

    invoke-direct {v0}, Lsxh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzb:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfnu;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zza:I

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, Lz09;->s(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzb:[B

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v1, p0, p2}, Lz09;->k(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

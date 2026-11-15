.class public final Lcom/google/android/gms/internal/ads/zzblh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzblh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Z

.field public final zzc:I

.field public final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le5f;

    invoke-direct {v0}, Le5f;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblh;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzblh;->zzb:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzblh;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzblh;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblh;->zza:Ljava/lang/String;

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblh;->zzb:Z

    invoke-static {p1, p2, v1}, Lz09;->g(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblh;->zzc:I

    invoke-static {p1, p2, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 p2, 0x4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzblh;->zzd:Ljava/lang/String;

    invoke-static {p1, p2, p0, v2}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

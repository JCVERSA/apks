.class public final Lcom/google/android/gms/internal/ads/zzbym;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbym;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Lcom/google/android/gms/ads/internal/client/zzr;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzd:Lcom/google/android/gms/ads/internal/client/zzm;

.field public final zze:I

.field public final zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldef;

    invoke-direct {v0}, Ldef;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbym;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;ILjava/lang/String;)V
    .locals 0
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbym;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzc:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbym;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbym;->zza:Ljava/lang/String;

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzc:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-static {p1, v0, v2, p2, v3}, Lz09;->B(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-static {p1, v0, v2, p2, v3}, Lz09;->B(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbym;->zze:I

    invoke-static {p1, p2, v0}, Lz09;->s(Landroid/os/Parcel;II)V

    const/4 p2, 0x6

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbym;->zzf:Ljava/lang/String;

    invoke-static {p1, p2, p0, v3}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v1}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/appset/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/appset/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw4g;

    invoke-direct {v0}, Lw4g;-><init>()V

    sput-object v0, Lcom/google/android/gms/appset/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appset/zzc;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/appset/zzc;->zzb:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/appset/zzc;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget p0, p0, Lcom/google/android/gms/appset/zzc;->zzb:I

    invoke-static {p1, v0, p0}, Lz09;->s(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/appset/zzc;->zzb:I

    return p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/appset/zzc;->zza:Ljava/lang/String;

    return-object p0
.end method

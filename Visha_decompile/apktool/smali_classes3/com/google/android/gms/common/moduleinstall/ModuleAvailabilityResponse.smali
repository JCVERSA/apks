.class public Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zaa:Z

.field private final zab:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lezd;

    invoke-direct {v0}, Lezd;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zaa:Z

    iput p2, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zab:I

    return-void
.end method


# virtual methods
.method public areModulesAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zaa:Z

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zab:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->areModulesAvailable()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lz09;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->getAvailabilityStatus()I

    move-result p0

    invoke-static {p1, v0, p0}, Lz09;->s(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

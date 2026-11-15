.class public Lcom/google/android/gms/common/internal/TelemetryData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/TelemetryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zaa:I

.field private zab:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljzd;

    invoke-direct {v0}, Ljzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/TelemetryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zaa:I

    invoke-static {p1, v0, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v1, p0, v0}, Lz09;->H(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zaa()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zaa:I

    return p0
.end method

.method public final zab()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    return-object p0
.end method

.method public final zac(Lcom/google/android/gms/common/internal/MethodInvocation;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/internal/MethodInvocation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/TelemetryData;->zab:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

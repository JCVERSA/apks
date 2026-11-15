.class public final Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zba:I

.field private final zbb:Z

.field private final zbc:Z

.field private final zbd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld3e;

    invoke-direct {v0}, Ld3e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zba:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbc:Z

    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbd:I

    return-void

    :cond_1
    iput p5, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbd:I

    return-void
.end method


# virtual methods
.method public isForNewAccount()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbd:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowAddAccountButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbb:Z

    return p0
.end method

.method public shouldShowCancelButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbc:Z

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->shouldShowAddAccountButton()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lz09;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->shouldShowCancelButton()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lz09;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->isForNewAccount()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lz09;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zbd:I

    invoke-static {p1, v0, v1}, Lz09;->s(Landroid/os/Parcel;II)V

    const/16 v0, 0x3e8

    iget p0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zba:I

    invoke-static {p1, v0, p0}, Lz09;->s(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

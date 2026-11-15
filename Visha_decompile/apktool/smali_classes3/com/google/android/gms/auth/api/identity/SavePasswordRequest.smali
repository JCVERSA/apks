.class public Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zba:Lcom/google/android/gms/auth/api/identity/SignInPassword;

.field private final zbb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3e;

    invoke-direct {v0}, Lx3e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/identity/SignInPassword;Ljava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zba:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbc:I

    return-void
.end method

.method public static builder()Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;-><init>()V

    return-object v0
.end method

.method public static zba(Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    .locals 2
    .param p0    # Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->builder()Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->getSignInPassword()Lcom/google/android/gms/auth/api/identity/SignInPassword;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->a(Lcom/google/android/gms/auth/api/identity/SignInPassword;)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;

    iget v1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbc:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->c(I)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbb:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zba:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zba:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    invoke-static {v0, v2}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbb:Ljava/lang/String;

    invoke-static {v0, v2}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbc:I

    iget p1, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbc:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getSignInPassword()Lcom/google/android/gms/auth/api/identity/SignInPassword;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zba:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zba:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbb:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljc7;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lz09;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->getSignInPassword()Lcom/google/android/gms/auth/api/identity/SignInPassword;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lz09;->B(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbb:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lz09;->D(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x3

    iget p0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zbc:I

    invoke-static {p1, p2, p0}, Lz09;->s(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lz09;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.class Landroidx/biometric/BiometricErrorData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mErrorCode:I

.field private final mErrorMessage:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/biometric/BiometricErrorData;->mErrorCode:I

    iput-object p2, p0, Landroidx/biometric/BiometricErrorData;->mErrorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method private static convertToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isErrorMessageEqualTo(Ljava/lang/CharSequence;)Z
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/biometric/BiometricErrorData;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroidx/biometric/BiometricErrorData;->convertToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroidx/biometric/BiometricErrorData;->convertToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/biometric/BiometricErrorData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/biometric/BiometricErrorData;

    iget v0, p0, Landroidx/biometric/BiometricErrorData;->mErrorCode:I

    iget v2, p1, Landroidx/biometric/BiometricErrorData;->mErrorCode:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Landroidx/biometric/BiometricErrorData;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricErrorData;->isErrorMessageEqualTo(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Landroidx/biometric/BiometricErrorData;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricErrorData;->mErrorMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/biometric/BiometricErrorData;->mErrorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroidx/biometric/BiometricErrorData;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroidx/biometric/BiometricErrorData;->convertToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

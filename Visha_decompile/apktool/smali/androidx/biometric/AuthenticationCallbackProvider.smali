.class Landroidx/biometric/AuthenticationCallbackProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;,
        Landroidx/biometric/AuthenticationCallbackProvider$Api30Impl;,
        Landroidx/biometric/AuthenticationCallbackProvider$Listener;
    }
.end annotation


# instance fields
.field private mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)V
    .locals 0
    .param p1    # Landroidx/biometric/AuthenticationCallbackProvider$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    return-void
.end method


# virtual methods
.method public getBiometricCallback()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-static {v0}, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;->createCallback(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method public getFingerprintCallback()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/AuthenticationCallbackProvider$1;

    invoke-direct {v0, p0}, Landroidx/biometric/AuthenticationCallbackProvider$1;-><init>(Landroidx/biometric/AuthenticationCallbackProvider;)V

    iput-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    return-object p0
.end method

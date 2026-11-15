.class interface abstract Landroidx/biometric/BiometricManager$Injector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract getBiometricManager()Landroid/hardware/biometrics/BiometricManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end method

.method public abstract getFingerprintManager()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isDeviceSecurable()Z
.end method

.method public abstract isDeviceSecuredWithCredential()Z
.end method

.method public abstract isFingerprintHardwarePresent()Z
.end method

.method public abstract isStrongBiometricGuaranteed()Z
.end method

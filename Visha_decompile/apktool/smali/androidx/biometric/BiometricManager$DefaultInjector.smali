.class Landroidx/biometric/BiometricManager$DefaultInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/biometric/BiometricManager$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/BiometricManager$DefaultInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBiometricManager()Landroid/hardware/biometrics/BiometricManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricManager$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/biometric/BiometricManager$Api29Impl;->create(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintManager()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricManager$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p0

    return-object p0
.end method

.method public isDeviceSecurable()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/biometric/KeyguardUtils;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeviceSecuredWithCredential()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/biometric/KeyguardUtils;->isDeviceSecuredWithCredential(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isFingerprintHardwarePresent()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/biometric/PackageUtils;->hasSystemFeatureFingerprint(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isStrongBiometricGuaranteed()Z
    .locals 1

    iget-object p0, p0, Landroidx/biometric/BiometricManager$DefaultInjector;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/biometric/DeviceUtils;->canAssumeStrongBiometrics(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.class Landroidx/biometric/AuthenticationCallbackProvider$1;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/AuthenticationCallbackProvider;->getFingerprintCallback()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/biometric/AuthenticationCallbackProvider;


# direct methods
.method public constructor <init>(Landroidx/biometric/AuthenticationCallbackProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->this$0:Landroidx/biometric/AuthenticationCallbackProvider;

    invoke-direct {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->this$0:Landroidx/biometric/AuthenticationCallbackProvider;

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/AuthenticationCallbackProvider$Listener;->onError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->this$0:Landroidx/biometric/AuthenticationCallbackProvider;

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-virtual {p0}, Landroidx/biometric/AuthenticationCallbackProvider$Listener;->onFailure()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->this$0:Landroidx/biometric/AuthenticationCallbackProvider;

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-virtual {p0, p2}, Landroidx/biometric/AuthenticationCallbackProvider$Listener;->onHelp(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->getCryptoObject()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Landroidx/biometric/CryptoObjectUtils;->unwrapFromFingerprintManager(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->this$0:Landroidx/biometric/AuthenticationCallbackProvider;

    iget-object p0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-virtual {p0, v0}, Landroidx/biometric/AuthenticationCallbackProvider$Listener;->onSuccess(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

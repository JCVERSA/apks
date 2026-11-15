.class Landroidx/biometric/CancellationSignalProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/CancellationSignalProvider$Api16Impl;,
        Landroidx/biometric/CancellationSignalProvider$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CancelSignalProvider"


# instance fields
.field private mBiometricCancellationSignal:Landroid/os/CancellationSignal;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFingerprintCancellationSignal:Landroidx/core/os/CancellationSignal;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mInjector:Landroidx/biometric/CancellationSignalProvider$Injector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/biometric/CancellationSignalProvider$1;

    invoke-direct {v0, p0}, Landroidx/biometric/CancellationSignalProvider$1;-><init>(Landroidx/biometric/CancellationSignalProvider;)V

    iput-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mInjector:Landroidx/biometric/CancellationSignalProvider$Injector;

    return-void
.end method

.method public constructor <init>(Landroidx/biometric/CancellationSignalProvider$Injector;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/biometric/CancellationSignalProvider;->mInjector:Landroidx/biometric/CancellationSignalProvider$Injector;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mBiometricCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    const-string v2, "CancelSignalProvider"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Landroidx/biometric/CancellationSignalProvider$Api16Impl;->cancel(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Got NPE while canceling biometric authentication."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v1, p0, Landroidx/biometric/CancellationSignalProvider;->mBiometricCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mFingerprintCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Got NPE while canceling fingerprint authentication."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iput-object v1, p0, Landroidx/biometric/CancellationSignalProvider;->mFingerprintCancellationSignal:Landroidx/core/os/CancellationSignal;

    :cond_1
    return-void
.end method

.method public getBiometricCancellationSignal()Landroid/os/CancellationSignal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mBiometricCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mInjector:Landroidx/biometric/CancellationSignalProvider$Injector;

    invoke-interface {v0}, Landroidx/biometric/CancellationSignalProvider$Injector;->getBiometricCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mBiometricCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/CancellationSignalProvider;->mBiometricCancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public getFingerprintCancellationSignal()Landroidx/core/os/CancellationSignal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mFingerprintCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mInjector:Landroidx/biometric/CancellationSignalProvider$Injector;

    invoke-interface {v0}, Landroidx/biometric/CancellationSignalProvider$Injector;->getFingerprintCancellationSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/CancellationSignalProvider;->mFingerprintCancellationSignal:Landroidx/core/os/CancellationSignal;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/CancellationSignalProvider;->mFingerprintCancellationSignal:Landroidx/core/os/CancellationSignal;

    return-object p0
.end method

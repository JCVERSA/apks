.class Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/AuthenticationCallbackProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 1
    .param p0    # Landroidx/biometric/AuthenticationCallbackProvider$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;

    invoke-direct {v0, p0}, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;-><init>(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)V

    return-object v0
.end method

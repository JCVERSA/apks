.class public Lcom/mgtv/drm/jni/LightPlayNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native closeSession(J)V
.end method

.method public static native getLicenseRequest(J)[B
.end method

.method public static native getProvisionRequest()[B
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native getVersionTime()Ljava/lang/String;
.end method

.method public static native initialize()I
.end method

.method public static native isProvisioned()Z
.end method

.method public static native openSession()J
.end method

.method public static native provideLicenseResponse(J[B)I
.end method

.method public static native provideProvisionResponse([B)I
.end method

.method public static native terminate()V
.end method

.method public static native testJNI()Ljava/lang/String;
.end method

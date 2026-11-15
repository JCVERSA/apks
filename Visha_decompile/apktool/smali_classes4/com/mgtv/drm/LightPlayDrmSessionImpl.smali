.class Lcom/mgtv/drm/LightPlayDrmSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/drm/ILightPlayDrmSession;


# instance fields
.field private sessionHandler:J


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->openSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/drm/LightPlayDrmSessionImpl;->sessionHandler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "open session failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/mgtv/drm/LightPlayDrmSessionImpl;->sessionHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/mgtv/drm/jni/LightPlayNative;->closeSession(J)V

    iput-wide v2, p0, Lcom/mgtv/drm/LightPlayDrmSessionImpl;->sessionHandler:J

    :cond_0
    return-void
.end method

.method public getLicenseRequest()[B
    .locals 4

    iget-wide v0, p0, Lcom/mgtv/drm/LightPlayDrmSessionImpl;->sessionHandler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lcom/mgtv/drm/jni/LightPlayNative;->getLicenseRequest(J)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public provideLicenseResponse([B)I
    .locals 4

    iget-wide v0, p0, Lcom/mgtv/drm/LightPlayDrmSessionImpl;->sessionHandler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/mgtv/drm/jni/LightPlayNative;->provideLicenseResponse(J[B)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    }
.end annotation


# direct methods
.method public static b(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->c(Lcom/google/android/exoplayer2/drm/b$a;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->a(Lcom/google/android/exoplayer2/drm/b$a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/drm/b$a;)V
.end method

.method public abstract c(Lcom/google/android/exoplayer2/drm/b$a;)V
.end method

.method public abstract getCryptoConfig()Lul1;
.end method

.method public abstract getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
.end method

.method public abstract getSchemeUuid()Ljava/util/UUID;
.end method

.method public abstract getState()I
.end method

.method public abstract playClearSamplesWithoutKeys()Z
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
.end method

.method public abstract requiresSecureDecoder(Ljava/lang/String;)Z
.end method

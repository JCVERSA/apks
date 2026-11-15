.class public interface abstract Lcom/google/android/exoplayer2/drm/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/g$g;,
        Lcom/google/android/exoplayer2/drm/g$a;,
        Lcom/google/android/exoplayer2/drm/g$b;,
        Lcom/google/android/exoplayer2/drm/g$d;,
        Lcom/google/android/exoplayer2/drm/g$e;,
        Lcom/google/android/exoplayer2/drm/g$c;,
        Lcom/google/android/exoplayer2/drm/g$f;
    }
.end annotation


# virtual methods
.method public a([BLta8;)V
    .locals 0

    return-void
.end method

.method public abstract closeSession([B)V
.end method

.method public abstract createCryptoConfig([B)Lul1;
.end method

.method public abstract getCryptoType()I
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/g$a;
.end method

.method public abstract getProvisionRequest()Lcom/google/android/exoplayer2/drm/g$g;
.end method

.method public abstract openSession()[B
.end method

.method public abstract provideKeyResponse([B[B)[B
.end method

.method public abstract provideProvisionResponse([B)V
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
.end method

.method public abstract release()V
.end method

.method public abstract requiresSecureDecoder([BLjava/lang/String;)Z
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lcom/google/android/exoplayer2/drm/g$c;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/g$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/g$d;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/g$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/g$e;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/g$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.class public Lcom/google/android/exoplayer2/drm/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lta8;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 1

    iget-object p0, p2, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/drm/f;

    new-instance p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    new-instance p2, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v0, 0x1771

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/f;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object p0
.end method

.method public d(Lcom/google/android/exoplayer2/k;)I
    .locals 0

    iget-object p0, p1, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

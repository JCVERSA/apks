.class public final Lcom/google/android/exoplayer2/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llrb;
.implements Lxq0;
.implements Lcom/google/android/exoplayer2/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public b:Llrb;

.field public c:Lxq0;

.field public d:Llrb;

.field public e:Lxq0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLcom/google/android/exoplayer2/k;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$d;->d:Llrb;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Llrb;->a(JJLcom/google/android/exoplayer2/k;Landroid/media/MediaFormat;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/i$d;->b:Llrb;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Llrb;->a(JJLcom/google/android/exoplayer2/k;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i$d;->d:Llrb;

    iput-object p1, p0, Lcom/google/android/exoplayer2/i$d;->e:Lxq0;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Llrb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i$d;->d:Llrb;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lxq0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i$d;->e:Lxq0;

    goto :goto_0

    :cond_2
    check-cast p2, Lxq0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/i$d;->c:Lxq0;

    goto :goto_0

    :cond_3
    check-cast p2, Llrb;

    iput-object p2, p0, Lcom/google/android/exoplayer2/i$d;->b:Llrb;

    :goto_0
    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$d;->e:Lxq0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lxq0;->onCameraMotion(J[F)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/i$d;->c:Lxq0;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lxq0;->onCameraMotion(J[F)V

    :cond_1
    return-void
.end method

.method public onCameraMotionReset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$d;->e:Lxq0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lxq0;->onCameraMotionReset()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/i$d;->c:Lxq0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lxq0;->onCameraMotionReset()V

    :cond_1
    return-void
.end method

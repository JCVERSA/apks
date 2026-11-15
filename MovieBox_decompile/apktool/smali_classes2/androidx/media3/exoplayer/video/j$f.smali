.class final Landroidx/media3/exoplayer/video/j$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t$d;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Landroidx/media3/exoplayer/video/j;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j$f;->b:Landroidx/media3/exoplayer/video/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/media3/common/util/a1;->B(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j$f;->a:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/mediacodec/t;->n(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/os/Handler;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j$f;->b:Landroidx/media3/exoplayer/video/j;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/j;->E1:Landroidx/media3/exoplayer/video/j$f;

    .line 4
    .line 5
    if-ne p0, v1, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/exoplayer/video/j;->A1(Landroidx/media3/exoplayer/video/j;)Landroidx/media3/exoplayer/mediacodec/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v0, p1, v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j$f;->b:Landroidx/media3/exoplayer/video/j;

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j;->B1(Landroidx/media3/exoplayer/video/j;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j$f;->b:Landroidx/media3/exoplayer/video/j;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/j;->g2(J)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j$f;->b:Landroidx/media3/exoplayer/video/j;

    .line 37
    .line 38
    invoke-static {p2, p1}, Landroidx/media3/exoplayer/video/j;->C1(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/mediacodec/t;JJ)V
    .locals 0

    .line 1
    sget p1, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 p4, 0x1e

    .line 4
    .line 5
    if-ge p1, p4, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j$f;->a:Landroid/os/Handler;

    .line 8
    .line 9
    const/16 p4, 0x20

    .line 10
    .line 11
    shr-long p4, p2, p4

    .line 12
    .line 13
    long-to-int p4, p4

    .line 14
    long-to-int p2, p2

    .line 15
    const/4 p3, 0x0

    .line 16
    invoke-static {p1, p3, p4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j$f;->a:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/video/j$f;->b(J)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroidx/media3/common/util/a1;->v1(II)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/video/j$f;->b(J)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

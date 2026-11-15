.class public final synthetic Landroidx/media3/exoplayer/mediacodec/q0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/mediacodec/r0;

.field public final synthetic b:Landroidx/media3/exoplayer/mediacodec/t$d;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/mediacodec/r0;Landroidx/media3/exoplayer/mediacodec/t$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/q0;->a:Landroidx/media3/exoplayer/mediacodec/r0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/q0;->b:Landroidx/media3/exoplayer/mediacodec/t$d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/q0;->a:Landroidx/media3/exoplayer/mediacodec/r0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/q0;->b:Landroidx/media3/exoplayer/mediacodec/t$d;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move-wide v5, p4

    .line 8
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/r0;->p(Landroidx/media3/exoplayer/mediacodec/r0;Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

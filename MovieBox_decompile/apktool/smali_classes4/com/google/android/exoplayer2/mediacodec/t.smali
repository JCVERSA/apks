.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/mediacodec/u;

.field public final synthetic b:Lcom/google/android/exoplayer2/mediacodec/l$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/u;Lcom/google/android/exoplayer2/mediacodec/l$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/t;->a:Lcom/google/android/exoplayer2/mediacodec/u;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/t;->b:Lcom/google/android/exoplayer2/mediacodec/l$c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/t;->a:Lcom/google/android/exoplayer2/mediacodec/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/t;->b:Lcom/google/android/exoplayer2/mediacodec/l$c;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move-wide v5, p4

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/u;->n(Lcom/google/android/exoplayer2/mediacodec/u;Lcom/google/android/exoplayer2/mediacodec/l$c;Landroid/media/MediaCodec;JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

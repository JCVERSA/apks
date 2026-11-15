.class final Landroidx/media3/exoplayer/source/a0$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Landroidx/media3/exoplayer/source/a0;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/a0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/source/a0$d;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media3/exoplayer/source/a0;->V(ILandroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a0;->G(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a0;->O(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/a0;->Z(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

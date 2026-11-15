.class public final Lf2/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf2/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/a;->setFlags(I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, -0x4

    .line 6
    return p1
.end method

.method public isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    .line 1
    return-void
.end method

.method public skipData(J)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

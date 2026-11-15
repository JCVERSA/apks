.class Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public evaluate(IIIII)Z
    .locals 1

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    if-ne p2, v0, :cond_1

    .line 4
    .line 5
    const/16 p2, 0x4f

    .line 6
    .line 7
    if-ne p3, p2, :cond_1

    .line 8
    .line 9
    const/16 p2, 0x4d

    .line 10
    .line 11
    if-ne p4, p2, :cond_1

    .line 12
    .line 13
    if-eq p5, p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

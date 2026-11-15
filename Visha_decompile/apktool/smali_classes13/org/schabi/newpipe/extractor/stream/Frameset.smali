.class public final Lorg/schabi/newpipe/extractor/stream/Frameset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final durationPerFrame:I

.field private final frameHeight:I

.field private final frameWidth:I

.field private final framesPerPageX:I

.field private final framesPerPageY:I

.field private final totalCount:I

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    iput p4, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    iput p5, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    iput p3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    iput p6, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    iput p7, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    return-void
.end method


# virtual methods
.method public getDurationPerFrame()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    return p0
.end method

.method public getFrameBoundsAt(J)[I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    iget v3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    int-to-long v4, v3

    mul-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    mul-int/2addr v1, v2

    int-to-long v2, v3

    div-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    rem-int p2, p1, v1

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    invoke-static {p2, v0}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    rem-int/2addr p2, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->floorDiv(II)I

    move-result p1

    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    mul-int v2, p2, v1

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    mul-int v3, v0, p0

    mul-int/2addr p2, v1

    add-int/2addr p2, v1

    mul-int/2addr v0, p0

    add-int/2addr v0, p0

    filled-new-array {p1, v2, v3, p2, v0}, [I

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    const/4 p2, 0x0

    filled-new-array {p2, p2, p2, p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getFrameHeight()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    return p0
.end method

.method public getFrameWidth()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    return p0
.end method

.method public getFramesPerPageX()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    return p0
.end method

.method public getFramesPerPageY()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    return p0
.end method

.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    return p0
.end method

.method public getUrls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    return-object p0
.end method

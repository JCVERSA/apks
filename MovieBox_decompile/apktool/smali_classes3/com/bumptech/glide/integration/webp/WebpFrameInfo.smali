.class public Lcom/bumptech/glide/integration/webp/WebpFrameInfo;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final blendPreviousFrame:Z

.field public final disposeBackgroundColor:Z

.field public final duration:I

.field public final frameNumber:I

.field public final height:I

.field public final width:I

.field public final xOffset:I

.field public final yOffset:I


# direct methods
.method constructor <init>(ILcom/bumptech/glide/integration/webp/WebpFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->frameNumber:I

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getXOffest()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getYOffest()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getDurationMs()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->duration:I

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->isBlendWithPreviousFrame()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->shouldDisposeToBackgroundColor()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "frameNumber="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->frameNumber:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", xOffset="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", yOffset="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", width="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", height="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", duration="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->duration:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", blendPreviousFrame="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", disposeBackgroundColor="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

.class public Lcom/hunantv/media/player/subtitle/SubtitleConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public paddingBottomRatio:F

.field public textColor:I

.field public textSizeRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textColor:I

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->backgroundColor:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textSizeRatio:F

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->paddingBottomRatio:F

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->backgroundColor:I

    return p0
.end method

.method public getPaddingBottomRatio()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->paddingBottomRatio:F

    return p0
.end method

.method public getTextColor()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textColor:I

    return p0
.end method

.method public getTextSizeRatio()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textSizeRatio:F

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textColor:I

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->backgroundColor:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textSizeRatio:F

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->paddingBottomRatio:F

    return-void
.end method

.method public setBackgroundColor(I)Lcom/hunantv/media/player/subtitle/SubtitleConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->backgroundColor:I

    return-object p0
.end method

.method public setPaddingBottomRatio(F)Lcom/hunantv/media/player/subtitle/SubtitleConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->paddingBottomRatio:F

    return-object p0
.end method

.method public setTextColor(I)Lcom/hunantv/media/player/subtitle/SubtitleConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textColor:I

    return-object p0
.end method

.method public setTextSizeRatio(F)Lcom/hunantv/media/player/subtitle/SubtitleConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textSizeRatio:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtitleConfig{textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textSizeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textSizeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", paddingBottomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->paddingBottomRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

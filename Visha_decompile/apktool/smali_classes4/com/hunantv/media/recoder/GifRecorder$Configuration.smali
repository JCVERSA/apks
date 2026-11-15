.class public Lcom/hunantv/media/recoder/GifRecorder$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/recoder/GifRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field public autoResult:Z

.field public fps:I

.field public framesHeight:I

.field public framesWidth:I

.field public height:I

.field public loopCount:I

.field public maxDuration:I

.field public maxFramesError:I

.field public saveDir:Ljava/lang/String;

.field public saveFramsDir:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->width:I

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->height:I

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesWidth:I

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesHeight:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->fps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->loopCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->maxDuration:I

    return-void
.end method


# virtual methods
.method public setAutoResult(Z)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->autoResult:Z

    return-object p0
.end method

.method public setFps(I)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->fps:I

    return-object p0
.end method

.method public setHeight(I)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->height:I

    return-object p0
.end method

.method public setLoopCount(I)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->loopCount:I

    return-object p0
.end method

.method public setMaxDuration(I)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->maxDuration:I

    return-object p0
.end method

.method public setMaxFramesError(I)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->maxFramesError:I

    return-object p0
.end method

.method public setSaveDir(Ljava/lang/String;)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveDir:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->width:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[width-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fps-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",autoResult-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->autoResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",saveDir-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",maxFramesError-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->maxFramesError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxDuration-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->maxDuration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

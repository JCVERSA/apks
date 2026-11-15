.class public Lcom/hunantv/media/gif/GifFramesProducer$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/gif/GifFramesProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public endMs:I

.field public fileStartTimeFloatS:F

.field public imageDir:Ljava/lang/String;

.field public imgH:I

.field public imgW:I

.field public num:I

.field public startMs:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->fileStartTimeFloatS:F

    iput-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->url:Ljava/lang/String;

    iput p2, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->startMs:I

    iput p3, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->endMs:I

    iput p4, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->num:I

    iput p5, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgW:I

    iput p6, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgH:I

    iput-object p7, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imageDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgW:I

    iput v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgH:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->fileStartTimeFloatS:F

    iput-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->url:Ljava/lang/String;

    iput p2, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->startMs:I

    iput p3, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->endMs:I

    iput p4, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->num:I

    iput-object p5, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imageDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileStartTimeFloatS()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->fileStartTimeFloatS:F

    return p0
.end method

.method public setFileStartTimeFloatS(F)Lcom/hunantv/media/gif/GifFramesProducer$Config;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->fileStartTimeFloatS:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->startMs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->endMs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", num="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imgW="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgW:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imgH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgH:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imageDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imageDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

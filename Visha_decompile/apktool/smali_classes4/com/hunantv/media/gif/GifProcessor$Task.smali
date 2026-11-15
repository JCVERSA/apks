.class public Lcom/hunantv/media/gif/GifProcessor$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/gif/GifProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/gif/GifProcessor$Task$Size;
    }
.end annotation


# instance fields
.field public durationS:I

.field public fps:I

.field public h:I

.field public startS:I

.field public targetDir:Ljava/lang/String;

.field private targetFile:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->url:Ljava/lang/String;

    iput p2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->startS:I

    iput p3, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->durationS:I

    iput p4, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->w:I

    iput p5, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->h:I

    iput p6, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->fps:I

    iput-object p7, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->targetDir:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/hunantv/media/gif/GifProcessor$Task;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->targetFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/hunantv/media/gif/GifProcessor$Task;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->targetFile:Ljava/lang/String;

    return-object p1
.end method

.method public static getAutoSize(II)Lcom/hunantv/media/gif/GifProcessor$Task$Size;
    .locals 4

    if-lez p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/hunantv/media/gif/GifProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoSize in."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e0

    if-ge p0, p1, :cond_1

    if-lt p1, v0, :cond_2

    mul-int/lit16 p0, p0, 0x1e0

    div-int/2addr p0, p1

    move p1, v0

    goto :goto_0

    :cond_1
    if-lt p0, v0, :cond_2

    mul-int/lit16 p1, p1, 0x1e0

    div-int/2addr p1, p0

    move p0, v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/hunantv/media/gif/GifProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoSize out."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/media/gif/GifProcessor$Task$Size;

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/gif/GifProcessor$Task$Size;-><init>(II)V

    return-object v0

    :cond_3
    :goto_1
    new-instance p0, Lcom/hunantv/media/gif/GifProcessor$Task$Size;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/hunantv/media/gif/GifProcessor$Task$Size;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public autoSize(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/hunantv/media/gif/GifProcessor$Task;->getAutoSize(II)Lcom/hunantv/media/gif/GifProcessor$Task$Size;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p2, p1, Lcom/hunantv/media/gif/GifProcessor$Task$Size;->width:I

    iput p2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->w:I

    iget p1, p1, Lcom/hunantv/media/gif/GifProcessor$Task$Size;->height:I

    iput p1, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->h:I

    :cond_0
    return-void
.end method

.method public getTargetFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->targetFile:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startS="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->startS:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", durationS="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->durationS:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->fps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->targetDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", targetFile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$Task;->targetFile:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class Lcom/hunantv/media/player/subtitle/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:F

.field c:I

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/d;->a:Ljava/lang/String;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/hunantv/media/player/subtitle/a/d;->b:F

    const/4 v1, 0x3

    iput v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->f:F

    iput v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->d:F

    iput v0, p0, Lcom/hunantv/media/player/subtitle/a/d;->g:F

    iput v0, p0, Lcom/hunantv/media/player/subtitle/a/d;->e:F

    const/16 v0, 0x12c

    iput v0, p0, Lcom/hunantv/media/player/subtitle/a/d;->h:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorPoint:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/subtitle/a/d;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "), viewportAnchorPoints:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/subtitle/a/d;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/d;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), scrollValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/player/subtitle/a/d;->h:I

    const/16 v1, 0x12c

    if-ne p0, v1, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const/16 v1, 0x12d

    if-ne p0, v1, :cond_1

    const-string p0, "scroll_up"

    goto :goto_0

    :cond_1
    const-string p0, "INVALID"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

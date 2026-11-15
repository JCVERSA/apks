.class public Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImgoAIQE"
.end annotation


# instance fields
.field public ImgoAIQE_def:I

.field public ImgoAIQE_h:I

.field public ImgoAIQE_w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgoAIQEDef()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_def:I

    return p0
.end method

.method public getImgoAIQEH()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_h:I

    return p0
.end method

.method public getImgoAIQEW()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_w:I

    return p0
.end method

.method public setImgoAIQEDef(I)Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_def:I

    return-object p0
.end method

.method public setImgoAIQEH(I)Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_h:I

    return-object p0
.end method

.method public setImgoAIQEW(I)Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_w:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImgoAIQE{ImgoAIQE_w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ImgoAIQE_h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ImgoAIQE_def="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_def:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

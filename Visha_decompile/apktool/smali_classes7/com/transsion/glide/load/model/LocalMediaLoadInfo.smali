.class public final Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dateModified:J

.field private displayName:Ljava/lang/String;

.field private height:I

.field private isVideoFile:Z

.field private mediaId:I

.field private mineType:Ljava/lang/String;

.field private orientation:I

.field private uri:Landroid/net/Uri;

.field private width:I


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;IJLjava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mediaId:I

    .line 9
    iput-object p2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    .line 10
    iput-object p3, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    .line 12
    iput-wide p5, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    .line 13
    iput-object p7, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->displayName:Ljava/lang/String;

    .line 14
    iput-boolean p8, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->isVideoFile:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;IIIJ)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->isVideoFile:Z

    .line 17
    iput-object p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    .line 18
    iput-object p2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->width:I

    .line 20
    iput p4, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->height:I

    .line 21
    iput p5, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    .line 22
    iput-wide p6, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->isVideoFile:Z

    .line 3
    iput-object p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    .line 6
    iput-wide p4, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    iget v2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->width:I

    iget v3, p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->height:I

    iget v3, p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->height:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    iget v3, p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    iget-wide v4, p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDateModified()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->height:I

    return p0
.end method

.method public getMediaId()I
    .locals 0

    iget p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mediaId:I

    return p0
.end method

.method public getMineType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isVideoFile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->isVideoFile:Z

    return p0
.end method

.method public setDateModified(J)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 0

    iput p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->height:I

    return-object p0
.end method

.method public setMediaId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mediaId:I

    return-void
.end method

.method public setMineType(Ljava/lang/String;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 0

    iput-object p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    return-object p0
.end method

.method public setOrientation(I)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 0

    iput p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 0

    iput-object p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setVideoFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->isVideoFile:Z

    return-void
.end method

.method public setWidth(I)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 0

    iput p1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->width:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalVideoLoadInfo{uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mineType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->mineType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->dateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

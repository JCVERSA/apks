.class public Lcom/transsion/videodownloader/model/VideoRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEnd:J

.field private mStart:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/videodownloader/model/VideoRange;->mStart:J

    iput-wide p3, p0, Lcom/transsion/videodownloader/model/VideoRange;->mEnd:J

    return-void
.end method


# virtual methods
.method public contains(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoRange;->mStart:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoRange;->mEnd:J

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/videodownloader/model/VideoRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/videodownloader/model/VideoRange;

    iget-wide v3, p0, Lcom/transsion/videodownloader/model/VideoRange;->mStart:J

    iget-wide v5, p1, Lcom/transsion/videodownloader/model/VideoRange;->mStart:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/transsion/videodownloader/model/VideoRange;->mEnd:J

    iget-wide p0, p1, Lcom/transsion/videodownloader/model/VideoRange;->mEnd:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoRange;->mEnd:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoRange;->mStart:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoRange;->mStart:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/videodownloader/model/VideoRange;->mEnd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoRange[start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/videodownloader/model/VideoRange;->mStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/videodownloader/model/VideoRange;->mEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/transsion/dbdata/beans/media/TotalVideosBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public totalCount:I

.field public totalCountStr:Ljava/lang/String;

.field public totalSize:J

.field public totalSizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCount:I

    return p0
.end method

.method public getTotalCountStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCountStr:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalSize:J

    return-wide v0
.end method

.method public getTotalSizeStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalSizeStr:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCount:I

    return-void
.end method

.method public setTotalCountStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCountStr:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalSize:J

    return-void
.end method

.method public setTotalSizeStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalSizeStr:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TotalVideosBean{totalCount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalSize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

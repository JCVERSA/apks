.class public Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "online_user_history"
.end annotation


# static fields
.field public static final DELETE_NOT_UPLOADED:I = 0x11

.field public static final DELETE_UPLOADED:I = 0x10

.field public static final NOT_DELETE_NOT_UPLOADED:I = 0x1

.field public static final NOT_DELETE_UPLOADED:I


# instance fields
.field public isUploaded:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_uploaded"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>()V

    return-void
.end method

.method public static valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    iget v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    iget v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    iput p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    const/4 p0, 0x1

    iput p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public isDeleted()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    and-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeletedNotUploaded()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUploaded()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIsDeleted()V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    return-void
.end method

.method public setIsUploaded()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryUserBean{serialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", seriesId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastWatchTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", watchProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", updateProgress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recordId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoSerialName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isTimeItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

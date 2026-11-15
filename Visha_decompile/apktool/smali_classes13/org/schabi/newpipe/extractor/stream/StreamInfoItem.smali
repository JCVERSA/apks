.class public Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "SourceFile"


# instance fields
.field private duration:J

.field private shortDescription:Ljava/lang/String;

.field private shortFormContent:Z

.field private final streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    return-wide v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object p0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    return-object p0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getViewCount()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    return-wide v0
.end method

.method public isShortFormContent()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    return p0
.end method

.method public isUploaderVerified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    return p0
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    return-void
.end method

.method public setShortFormContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    return-void
.end method

.method public setViewCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    iget-wide v3, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    iget-wide v5, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    iget-object v7, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object v8

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v9

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->isUploaderVerified()Z

    move-result p0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "StreamInfoItem{streamType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uploaderName=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', textualUploadDate=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', viewCount="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", uploaderUrl=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', infoType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', name=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', thumbnails=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\', uploaderVerified=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channelCover:Ljava/lang/String;

.field private channelName:Ljava/lang/String;

.field private collectStamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collect_stamp"
    .end annotation
.end field

.field private coverX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_x"
    .end annotation
.end field

.field private coverY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_y"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field isLogin:Z

.field private isVk:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_vk"
    .end annotation
.end field

.field private isYoutube:I

.field private payType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;

.field private sourceType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field

.field private topicId:J

.field private userId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field private videoId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field

.field private videoLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_link"
    .end annotation
.end field

.field private videoName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_name"
    .end annotation
.end field

.field private vkBean:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vk_bean"
    .end annotation
.end field

.field private vkId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vk_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoId:J

    .line 4
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceType:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoLink:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverX:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverY:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->payType:Ljava/lang/Integer;

    .line 10
    iput-wide p11, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->topicId:J

    .line 11
    iput-wide p9, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->collectStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverX:Ljava/lang/String;

    .line 16
    iput-wide p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->collectStamp:J

    .line 17
    iput p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isYoutube:I

    .line 18
    iput-object p7, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelName:Ljava/lang/String;

    .line 19
    iput-object p8, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelCover:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverX:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->collectStamp:J

    .line 25
    iput p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isYoutube:I

    .line 26
    iput-object p7, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelName:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelCover:Ljava/lang/String;

    .line 28
    iput p9, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isVk:I

    .line 29
    iput-object p10, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->vkId:Ljava/lang/String;

    .line 30
    iput-object p11, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->vkBean:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannelCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelCover:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelName:Ljava/lang/String;

    return-object p0
.end method

.method public getCollectStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->collectStamp:J

    return-wide v0
.end method

.method public getCoverX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverX:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverY:Ljava/lang/String;

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->id:J

    return-wide v0
.end method

.method public getIsYoutube()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isYoutube:I

    return p0
.end method

.method public getPayType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->payType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTopicId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->topicId:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->userId:J

    return-wide v0
.end method

.method public getVideoId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoId:J

    return-wide v0
.end method

.method public getVideoLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoLink:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoName:Ljava/lang/String;

    return-object p0
.end method

.method public getVkBean()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->vkBean:Ljava/lang/String;

    return-object p0
.end method

.method public getVkId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->vkId:Ljava/lang/String;

    return-object p0
.end method

.method public isLogin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isLogin:Z

    return p0
.end method

.method public isVk()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isVk:I

    return p0
.end method

.method public setCollectStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->collectStamp:J

    return-void
.end method

.method public setCollectStamp(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->collectStamp:J

    return-void
.end method

.method public setCoverX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverX:Ljava/lang/String;

    return-void
.end method

.method public setCoverY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverY:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->id:J

    return-void
.end method

.method public setIsYoutube(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isYoutube:I

    return-void
.end method

.method public setLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isLogin:Z

    return-void
.end method

.method public setPayType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->payType:Ljava/lang/Integer;

    return-void
.end method

.method public setSourceType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceType:Ljava/lang/Integer;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->userId:J

    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoId:J

    return-void
.end method

.method public setVideoLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoLink:Ljava/lang/String;

    return-void
.end method

.method public setVideoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoName:Ljava/lang/String;

    return-void
.end method

.method public setVk(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isVk:I

    return-void
.end method

.method public setVkBean(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->vkBean:Ljava/lang/String;

    return-void
.end method

.method public setVkId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->vkId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", videoLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->videoLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coverX=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coverY=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->coverY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", payType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->payType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", collectStamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->collectStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isYoutube="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isYoutube:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channelName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channelCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->channelCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", topicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->topicId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isLogin:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

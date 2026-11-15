.class public Lcom/transsion/dbdata/beans/appconfig/BannerBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
.field private bannerId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_id"
    .end annotation
.end field

.field private cover:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private onlineEndTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_end_time"
    .end annotation
.end field

.field private onlineEndWeek:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_end_week"
    .end annotation
.end field

.field private onlineStartTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_start_time"
    .end annotation
.end field

.field private onlineStartWeek:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_start_week"
    .end annotation
.end field

.field private onlineWeek:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_week"
    .end annotation
.end field

.field private param:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "param"
    .end annotation
.end field

.field private shortDescribe:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_describe"
    .end annotation
.end field

.field private sort:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field

.field private source:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field private target:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private topicId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topic_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->bannerId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getOnlineEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineEndTime:J

    return-wide v0
.end method

.method public getOnlineEndWeek()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineEndWeek:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOnlineStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineStartTime:J

    return-wide v0
.end method

.method public getOnlineStartWeek()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineStartWeek:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOnlineWeek()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineWeek:Ljava/lang/String;

    return-object p0
.end method

.method public getShortDescribe()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->shortDescribe:Ljava/lang/String;

    return-object p0
.end method

.method public getSort()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->sort:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSource()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->source:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->target:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTopicId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->topicId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBannerId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->bannerId:Ljava/lang/Integer;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setOnlineEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineEndTime:J

    return-void
.end method

.method public setOnlineEndWeek(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineEndWeek:Ljava/lang/Integer;

    return-void
.end method

.method public setOnlineStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineStartTime:J

    return-void
.end method

.method public setOnlineStartWeek(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineStartWeek:Ljava/lang/Integer;

    return-void
.end method

.method public setOnlineWeek(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->onlineWeek:Ljava/lang/String;

    return-void
.end method

.method public setShortDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->shortDescribe:Ljava/lang/String;

    return-void
.end method

.method public setSort(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->sort:Ljava/lang/Integer;

    return-void
.end method

.method public setSource(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->source:Ljava/lang/Integer;

    return-void
.end method

.method public setTarget(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->target:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->topicId:Ljava/lang/Integer;

    return-void
.end method

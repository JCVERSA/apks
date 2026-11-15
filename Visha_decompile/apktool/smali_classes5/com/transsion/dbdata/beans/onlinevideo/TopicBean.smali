.class public Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HORIZONTAL:I = 0x1

.field public static final SHOW_HISTORY_IN_THIS_PAGE:Z = false

.field public static final TYPE_BANNER:I = 0x1

.field public static final TYPE_FEED:I = 0x7

.field public static final TYPE_HISTORY:I = 0x4

.field public static final TYPE_LABEL:I = 0x2

.field public static final TYPE_RECOMMEND:I = 0x6

.field public static final TYPE_VIDEO:I = 0x3

.field public static final TYPE_WEBCAST:I = 0x5

.field public static final VERTICAL:I


# instance fields
.field private bannerBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private biz_group_id:Ljava/lang/Integer;

.field private channel_id:Ljava/lang/Long;

.field private content_source:Ljava/lang/String;

.field private data_list:Lcom/google/gson/JsonArray;

.field private data_type:Ljava/lang/Integer;

.field private description:Ljava/lang/String;

.field private element_x:Ljava/lang/Integer;

.field private element_y:Ljava/lang/Integer;

.field private feedStreamBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private historyBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalFlag:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "horizontal_flag"
    .end annotation
.end field

.field private icon:Ljava/lang/String;

.field private labelBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;"
        }
    .end annotation
.end field

.field private mediaBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;",
            ">;"
        }
    .end annotation
.end field

.field private n_biz_group_id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private page_size:Ljava/lang/Integer;

.field private recommendPart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend_part"
    .end annotation
.end field

.field private region_id:Ljava/lang/Long;

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Request-ID"
    .end annotation
.end field

.field private short_describe_switch:Ljava/lang/String;

.field private sort:Ljava/lang/Integer;

.field private topic_id:Ljava/lang/Long;

.field private webcastBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner(I)Lcom/transsion/dbdata/beans/appconfig/BannerBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->bannerBeanList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->bannerBeanList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBannerBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/BannerBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->bannerBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getBiz_group_id()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->biz_group_id:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getChannel_id()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->channel_id:Ljava/lang/Long;

    return-object p0
.end method

.method public getContent_source()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->content_source:Ljava/lang/String;

    return-object p0
.end method

.method public getData_type()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDatas()Lcom/google/gson/JsonArray;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getElement_x()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->element_x:Ljava/lang/Integer;

    return-object p0
.end method

.method public getElement_y()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->element_y:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFeedStreamBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->feedStreamBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getFirstFeedStreamBean()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->feedStreamBeanList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->feedStreamBeanList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstWebcastBean()Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->webcastBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->webcastBeanList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHistoryBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->historyBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getHorizontalFlag()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->horizontalFlag:I

    return p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->labelBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getMediaBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->mediaBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getN_biz_group_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->n_biz_group_id:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPage_size()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->page_size:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRecommendPart()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->recommendPart:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->recommendPart:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->recommendPart:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRegion_id()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->region_id:Ljava/lang/Long;

    return-object p0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public getShort_describe_switch()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->short_describe_switch:Ljava/lang/String;

    return-object p0
.end method

.method public getSort()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->sort:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTopic_id()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->topic_id:Ljava/lang/Long;

    return-object p0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->bannerBeanList:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->labelBeanList:Ljava/util/List;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->historyBeanList:Ljava/util/List;

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->webcastBeanList:Ljava/util/List;

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->feedStreamBeanList:Ljava/util/List;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->mediaBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getWebcastBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->webcastBeanList:Ljava/util/List;

    return-object p0
.end method

.method public isHorizontal()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->horizontalFlag:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jsonToTypeList()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setBannerBeanList(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setLabelBeanList(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setMediaBeanList(Ljava/util/List;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setWebcastBeanList(Ljava/util/List;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setFeedStreamBeanList(Ljava/util/List;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public setBannerBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/BannerBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->bannerBeanList:Ljava/util/List;

    return-void
.end method

.method public setChannel_id(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->channel_id:Ljava/lang/Long;

    return-void
.end method

.method public setData_type(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    return-void
.end method

.method public setDatas(Lcom/google/gson/JsonArray;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_list:Lcom/google/gson/JsonArray;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setElement_x(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->element_x:Ljava/lang/Integer;

    return-void
.end method

.method public setElement_y(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->element_y:Ljava/lang/Integer;

    return-void
.end method

.method public setFeedStreamBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->feedStreamBeanList:Ljava/util/List;

    return-void
.end method

.method public setHistoryBeanList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->data_type:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->historyBeanList:Ljava/util/List;

    return-void
.end method

.method public setHorizontalFlag(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->horizontalFlag:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setLabelBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->labelBeanList:Ljava/util/List;

    return-void
.end method

.method public setMediaBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->mediaBeanList:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPage_size(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->page_size:Ljava/lang/Integer;

    return-void
.end method

.method public setRecommendPart(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->recommendPart:Ljava/lang/Integer;

    return-void
.end method

.method public setRegion_id(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->region_id:Ljava/lang/Long;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSort(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->sort:Ljava/lang/Integer;

    return-void
.end method

.method public setTopic_id(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->topic_id:Ljava/lang/Long;

    return-void
.end method

.method public setWebcastBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->webcastBeanList:Ljava/util/List;

    return-void
.end method

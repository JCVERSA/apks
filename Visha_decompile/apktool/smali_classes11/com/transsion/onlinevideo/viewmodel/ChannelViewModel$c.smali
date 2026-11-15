.class public Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->v(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public final synthetic c:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    iput-object p2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->c:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setMediaBeanList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->c:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getGroupId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getGroupId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lea;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getGroupId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getNewBizGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lea;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getNewBizGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p1, Lea;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p0, "request AlgorithmRecommend data size 0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_ChannelViewModel"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->q()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, v0}, Ld06;->b(ZJI)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request AlgorithmRecommend data failed:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_ChannelViewModel"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->q()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0}, Ld06;->b(ZJI)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

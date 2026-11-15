.class public Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->u(IIILjava/util/List;Ljava/util/List;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:I

.field public final synthetic i:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Ljava/util/List;IIILjava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->i:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object p2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    iput-object p3, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->c:Ljava/util/List;

    iput p4, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->d:I

    iput p5, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->e:I

    iput p6, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->f:I

    iput-object p7, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->g:Ljava/util/List;

    iput p8, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 8

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

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setMediaBeanList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getRecommendPart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setRecommendPart(Ljava/lang/Integer;)V

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

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

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

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getNewBizGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lea;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;->getGroupId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/transsion/utils/BaseConstant;->o:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p1, "request AlgorithmRecommend data size 0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_ChannelViewModel"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->i:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget v2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->d:I

    iget v3, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->e:I

    iget v4, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->f:I

    iget-object v5, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->g:Ljava/util/List;

    iget v7, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->h:I

    invoke-static/range {v1 .. v7}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->n(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIILjava/util/List;Ljava/util/List;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->p()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, p1, v0}, Ld06;->b(ZJI)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request AlgorithmRecommend data failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_ChannelViewModel"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->b:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->i:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget v2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->d:I

    iget v3, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->e:I

    iget v4, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->f:I

    iget-object v5, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->g:Ljava/util/List;

    iget v7, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->h:I

    invoke-static/range {v1 .. v7}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->n(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIILjava/util/List;Ljava/util/List;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->p()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, v0}, Ld06;->b(ZJI)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

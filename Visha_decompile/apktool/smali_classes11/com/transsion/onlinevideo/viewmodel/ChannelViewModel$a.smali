.class public Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;III)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput p2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    iput p3, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->c:I

    iput p4, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    iget v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    iget v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    iget v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lea;->a:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getDatas()Lcom/google/gson/JsonArray;

    move-result-object v8

    const/4 v9, 0x6

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getDatas()Lcom/google/gson/JsonArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v9, :cond_3

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->jsonToTypeList()V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_1

    sget-object v5, Lea;->d:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    :cond_4
    iget v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->c:I

    if-ne v2, v7, :cond_7

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    iget-object v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget v3, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->c:I

    iget v4, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    iget v5, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->d:I

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getTotal()I

    move-result v8

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x6

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getContent_source()Ljava/lang/String;

    move-result-object v17

    move-object v6, v15

    move-object v7, v1

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-static/range {v2 .. v15}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->o(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIILjava/util/List;Ljava/util/List;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V

    move-object/from16 v15, v18

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    move-object/from16 v18, v15

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget v3, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    move-object/from16 v5, v18

    invoke-virtual {v2, v3, v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->Z(ILjava/util/List;)V

    goto :goto_2

    :cond_7
    move-object v5, v15

    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getTotal()I

    move-result v2

    int-to-float v3, v2

    iget v5, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->d:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    iget v5, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->c:I

    if-lt v5, v3, :cond_9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getContent_source()Ljava/lang/String;

    move-result-object v5

    const-string v6, "5"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget v4, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->c:I

    if-ne v4, v3, :cond_8

    iget v3, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->d:I

    rem-int/2addr v2, v3

    if-lez v2, :cond_8

    iget-object v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v2, v2, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    iget v3, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_8
    iget-object v1, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    iget v0, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    iget-object v2, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v2, v2, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    iget v3, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    iget v0, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    iget v0, v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_ChannelViewModel"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object p1, p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    iget v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->e:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object p1, p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    iget p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

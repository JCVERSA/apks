.class public final Lxed;
.super Lcom/cloud/hisavana/net/impl/StringCallback;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/hisavana/net/RequestParams;

.field public final synthetic e:J

.field public final synthetic f:Lsad$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;JLsad$a;)V
    .locals 0

    iput-object p1, p0, Lxed;->c:Ljava/lang/String;

    iput-object p2, p0, Lxed;->d:Lcom/cloud/hisavana/net/RequestParams;

    iput-wide p3, p0, Lxed;->e:J

    iput-object p5, p0, Lxed;->f:Lsad$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/StringCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final x(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string p3, "ADSDK"

    const/4 v0, 0x3

    invoke-static {p3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "----- onFailure full url = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lxed;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n----- postBodyString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lxed;->d:Lcom/cloud/hisavana/net/RequestParams;

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/RequestParams;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " \n ----- status code =  "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n ----- response = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ABTEST"

    invoke-virtual {v0, p3, p2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lhgd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-wide v0, p0, Lxed;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lxed;->f:Lsad$a;

    iget-wide v0, p0, Lxed;->e:J

    invoke-virtual {p2, v0, v1, p1}, Lsad$a;->a(JI)V

    return-void
.end method

.method public final y(ILjava/lang/String;)V
    .locals 8

    const-string v0, "ADSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "ABTEST"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "----- onSuccess full url = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lxed;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n----- postBodyString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lxed;->d:Lcom/cloud/hisavana/net/RequestParams;

    invoke-virtual {v2}, Lcom/cloud/hisavana/net/RequestParams;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n ----- status code =  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n ----- response = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lhgd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-wide v2, p0, Lxed;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lxed;->e:J

    iget-object p0, p0, Lxed;->f:Lsad$a;

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "response fail, statusCode = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p1}, Lsad$a;->a(JI)V

    goto/16 :goto_3

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_0
    const-class v4, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    invoke-static {p2, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response fail, error = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2711

    invoke-virtual {p0, v2, v3, v4}, Lsad$a;->a(JI)V

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-eqz v5, :cond_4

    :goto_1
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "response fail, layerId is diff, layerId = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2712

    invoke-virtual {p0, v2, v3, p1}, Lsad$a;->a(JI)V

    goto :goto_3

    :cond_4
    sget-object p0, Lhgd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-direct {p0, v0, p1, v0}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1, v2}, Lnvd;->setLayerId(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnvd;->setRequestTime(J)V

    invoke-virtual {p0, p2}, Lnvd;->setInfo(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    invoke-static {p0}, Ll3d;->d(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p0

    const-string p2, "response success, response is null"

    invoke-virtual {p0, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-direct {p0, v0, p1, v0}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v2, v3}, Lnvd;->setLayerId(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnvd;->setRequestTime(J)V

    const-string/jumbo p1, "{}"

    invoke-virtual {p0, p1}, Lnvd;->setInfo(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    invoke-static {p0}, Ll3d;->d(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    :cond_6
    :goto_3
    return-void
.end method

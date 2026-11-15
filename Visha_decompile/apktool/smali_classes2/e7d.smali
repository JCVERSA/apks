.class public abstract Le7d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leo4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/hash/a;->b(I)Leo4;

    move-result-object v0

    const-string v1, "murmur3_128(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Le7d;->a:Leo4;

    return-void
.end method

.method public static final a(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;
    .locals 8

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABTEST"

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x3

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getSubExps()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getWhiteList()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v3, "ADSDK"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ABChecker check, whiteResult = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getWhiteList()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ABChecker check, whiteValue = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getSubExps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getVarId()Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getVarId()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->Companion:Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, v5}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;->initFromSubExpInfo(Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABVariant;)V

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getProjectId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_9

    goto/16 :goto_4

    :cond_9
    :try_start_0
    sget-object v2, Lhz9;->a:Lhz9;

    const-string v2, "%s_%s_%s"

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getProjectId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format(...)"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Le7d;->a:Leo4;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v4, v2, v5}, Leo4;->hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide v4

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "ABChecker check, hashStr = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and hashVal = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getSubExps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getBuckets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getBuckets()Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->Companion:Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;->initFromSubExpInfo(Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABVariant;)V

    return-object v0

    :cond_d
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ABChecker check fail, hashStr =  and reason = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :cond_e
    :goto_4
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p0

    const-string v0, "ABChecker check fail, projectId is null or layerId is null"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :cond_f
    :goto_5
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p0

    const-string v2, "ABChecker check fail, abLayerInfo is null or subExps is empty"

    invoke-virtual {p0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :cond_10
    :goto_6
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p0

    const-string v0, "ABChecker check fail, gaid is empty"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0
.end method

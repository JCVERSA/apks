.class public final Ly55;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly55;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly55;

    invoke-direct {v0}, Ly55;-><init>()V

    sput-object v0, Ly55;->a:Ly55;

    const/4 v0, -0x1

    sput v0, Ly55;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget p0, Ly55;->b:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "client_ab_network"

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getLayerId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getSwitch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getReqInterval()Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isOpen()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "bucketV2"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    :try_start_2
    instance-of v1, p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;->getVariant()Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "netGroupBucketId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_4
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sput v3, Ly55;->b:I

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getSubExpId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x0

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetGroup gets the groupBucketId in the api = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ly55;->b:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", save it in the cache"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lja1;->netLog(Ljava/lang/String;)V

    invoke-static {}, Lcgc;->n()Lcgc;

    move-result-object p0

    invoke-virtual {p0}, Lcgc;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/hisavana/net/NetGroup;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    sget v3, Ly55;->b:I

    invoke-virtual {p0, v2, v3}, Lo9;->p(Ljava/lang/String;I)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v2, "bucketVarId"

    invoke-virtual {p0, v2, v0, v1}, Lo9;->q(Ljava/lang/String;J)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "url is not in the white list, so it will not save groupBucketId in the cache. url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lja1;->netLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    sput v3, Ly55;->b:I

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lo9;->p(Ljava/lang/String;I)V

    const-string p0, "network abtest is closed"

    invoke-static {p0}, Lja1;->netLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isPushAll()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x7e0

    sput p0, Ly55;->b:I

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lo9;->p(Ljava/lang/String;I)V

    const-string p0, "network abtest is push all"

    invoke-static {p0}, Lja1;->netLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_9
    :goto_3
    :try_start_3
    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_a
    :goto_4
    if-nez v0, :cond_b

    const-string p0, "network abtest config data is null"

    invoke-static {p0}, Lja1;->netLog(Ljava/lang/String;)V

    :cond_b
    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :goto_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7dd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

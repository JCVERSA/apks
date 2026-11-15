.class public final Lq1d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq1d;

.field public static volatile b:I

.field public static volatile c:J

.field public static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq1d;

    invoke-direct {v0}, Lq1d;-><init>()V

    sput-object v0, Lq1d;->a:Lq1d;

    const/4 v0, -0x1

    sput v0, Lq1d;->b:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lq1d;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lq1d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    sget-wide v0, Lq1d;->c:J

    return-wide v0
.end method

.method public final b()I
    .locals 0

    sget p0, Lq1d;->b:I

    return p0
.end method

.method public final c()V
    .locals 8

    sget-object p0, Lq1d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_a

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const-string p0, "dcdn_net"

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    const-string v4, "DCDNManager"

    const/4 v5, 0x0

    if-eqz p0, :cond_8

    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getLayerId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getSwitch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getReqInterval()Ljava/lang/Long;

    move-result-object p0

    invoke-static {v6, p0, v7}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    instance-of v1, p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    move-object p0, v5

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;->getVariant()Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v5

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "isSupportDcdn"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    :cond_2
    if-eqz v5, :cond_3

    invoke-static {v5}, Lj1a;->h1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getSubExpId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_4
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dcdn abtest is open, isSupportDcdn is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", varid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v1, "dcdn abtest is closed"

    invoke-virtual {p0, v4, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isPushAll()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v5, "dcdn abtest is push all"

    invoke-virtual {p0, v4, v5}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v5, Lzfb;->a:Lzfb;

    goto :goto_4

    :cond_8
    move v1, v0

    :goto_4
    if-nez v5, :cond_9

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v1, "dcdn abtest config data is null"

    invoke-virtual {p0, v4, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move v0, v1

    :goto_5
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string/jumbo v1, "support_dcdn_status"

    invoke-virtual {p0, v1, v0}, Lo9;->p(Ljava/lang/String;I)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v0, "dcdn_var_id"

    invoke-virtual {p0, v0, v2, v3}, Lo9;->q(Ljava/lang/String;J)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_7
    return-void
.end method

.method public final d()V
    .locals 4

    sget p0, Lq1d;->b:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string/jumbo v0, "support_dcdn_status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo9;->g(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lq1d;->b:I

    :cond_0
    sget-wide v0, Lq1d;->c:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v0, "dcdn_var_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lo9;->i(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lq1d;->c:J

    :cond_1
    return-void
.end method

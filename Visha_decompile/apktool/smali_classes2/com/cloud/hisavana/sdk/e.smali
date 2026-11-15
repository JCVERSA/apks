.class public Lcom/cloud/hisavana/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lied;

.field public c:Ljava/util/List;

.field public d:Lau4;

.field public e:Z

.field public final f:Ljava/util/List;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/util/List;

.field public final m:Lcom/cloud/hisavana/sdk/z$a;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lied;Lau4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->e:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    new-instance v0, Lcom/cloud/hisavana/sdk/e$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/e$a;-><init>(Lcom/cloud/hisavana/sdk/e;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->m:Lcom/cloud/hisavana/sdk/z$a;

    new-instance v0, Lcom/cloud/hisavana/sdk/e$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/e$b;-><init>(Lcom/cloud/hisavana/sdk/e;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p1}, Lied;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/e;->d:Lau4;

    return-void
.end method

.method public static synthetic A(Lcom/cloud/hisavana/sdk/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic B(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic G(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e;->K()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e;->C()V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/e;->v(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/e;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/e;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/e;->p(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->J(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->h(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static j(Lied;Lau4;)Lcom/cloud/hisavana/sdk/e;
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/e;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/e;-><init>(Lied;Lau4;)V

    return-object v0
.end method

.method public static synthetic l(Lcom/cloud/hisavana/sdk/e;)Lied;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    return-object p0
.end method

.method public static synthetic r(Lcom/cloud/hisavana/sdk/e;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->F(I)V

    return-void
.end method

.method public static synthetic s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic x(Lcom/cloud/hisavana/sdk/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    return p1
.end method


# virtual methods
.method public final C()V
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "start to load ad"

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v1

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lspc;->b(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v3

    xor-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_3

    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v1

    invoke-virtual {v1}, Lspc;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u672c\u5730\u6709\u4e91\u63a7\u6570\u636e\uff0c\u4f46\u5f53\u524d\u4ee3\u7801\u4f4d\u914d\u7f6e\u4e0d\u5b58\u5728, return"

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lied;->t()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    const/16 v2, 0x1004

    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Lied;I)V

    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NEW_UNIT_CONFIG_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1, v5}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    return-void

    :cond_1
    const-string/jumbo v1, "\u672c\u5730\u6ca1\u6709\u4e91\u63a7\u6570\u636e\uff0c\u6784\u5efa\u9ed8\u8ba4\u4e91\u63a7"

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;-><init>()V

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCodeSeatId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v6}, Lied;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCodeSeatType(Ljava/lang/Integer;)V

    invoke-virtual {v1, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdEnable(Z)V

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v6}, Lied;->i()I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v6}, Lied;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setFillTimeoutDuration(Ljava/lang/Integer;)V

    :cond_2
    sget-object v6, Lo02;->a:Lo02;

    invoke-virtual {v6, v1}, Lo02;->a(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    invoke-static {}, Lcgc;->n()Lcgc;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcgc;->p(I)V

    :cond_3
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v6, v3}, Lied;->b(I)V

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v6, v1}, Lied;->c(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCrosslevelComparison()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v0, Lcom/cloud/hisavana/sdk/e;->e:Z

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lied;->t()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-static {v6, v4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Lied;I)V

    :cond_4
    invoke-static {}, Lr6;->p()Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "config info:\nfetchAdCount=%d\nfillTimeoutDuration=%s\nofflineAdEnable=%b\nadInternalRequestEnable=%b\nadShowCountLimit=%d\uff0ccurrentShowTimes=%d\ncarouselTime=%d\uff0ccarouselCount=%d\ncrosslevelComparison=%b"

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v7}, Lied;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v9}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getFillTimeoutDuration()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v7}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sget-object v7, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/g0;->B()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v7}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v12

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v7}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v7}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v7}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselCount()Ljava/lang/Integer;

    move-result-object v15

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v7}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCrosslevelComparison()Ljava/lang/Boolean;

    move-result-object v16

    filled-new-array/range {v8 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/cloud/sdk/commonutil/util/b;->b(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_6

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result v4

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v4, v6, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u4ee3\u7801\u4f4d\u5c55\u793a\u6b21\u6570\u8fbe\u5230\u4e0a\u9650 ----- \u5df2\u5c55\u793a\u6b21\u6570="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  \u5c55\u793a\u4e0a\u9650="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NEW_IMPRESSION_LIMIT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1, v5}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    return-void

    :cond_6
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e;->w(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1, v5}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    return-void

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current cloud is default cloud ---> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isDefaultConfig()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/cloud/hisavana/sdk/e;->m(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCrosslevelComparison()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getFillTimeoutDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    if-eqz v3, :cond_a

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/z;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/z;->b()I

    move-result v4

    if-ne v4, v2, :cond_8

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v4}, Lied;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/z;->c(I)V

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-interface {v3, v4}, Lrqd;->a(Lied;)V

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    goto :goto_1

    :cond_a
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v1}, Lied;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e;->F(I)V

    :goto_1
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v0}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_req_type"

    invoke-static {v0, v1, v2}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    goto :goto_2

    :cond_b
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_CHAIN_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1, v5}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lnad;

    invoke-direct {v1, p0, p1}, Lnad;-><init>(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lau4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final F(I)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/z;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/z;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/z;->c(I)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-interface {v1, p0}, Lrqd;->a(Lied;)V

    :cond_1
    return-void
.end method

.method public final H(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-class v0, Lcom/cloud/hisavana/sdk/j0;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/e;->k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/hisavana/sdk/j0;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/j0;->l(Ljava/util/List;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p1}, Lied;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->F(I)V

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 4

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p0}, Lied;->o()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->k(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final synthetic J(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->H(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e;->I()V

    return-void
.end method

.method public final K()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/e;->h(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final h(Ljava/util/List;)I
    .locals 8

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lau4;

    const/4 v2, 0x2

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lhad;

    invoke-direct {v0}, Lhad;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->y(Z)Z

    move-result p1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v0}, Lied;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/e;->z(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "s_req_timeout"

    const/4 v6, 0x0

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_5

    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v0}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lf09;->c(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p1, v0, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->x(Ljava/util/List;Lied;)V

    invoke-virtual {p0, v6, v3}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    sub-int v1, p0, v0

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v0}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-boolean v7, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    invoke-static {v0, v5, v7}, Lf09;->c(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Z)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/e;->k:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0, v4}, Lcom/cloud/hisavana/sdk/e;->y(Z)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "AdFetch"

    const-string v2, "adsList is empty,webPageRecommendInfo is not empty return success"

    invoke-virtual {p1, v0, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v3}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_TAKE_AD_RESULT_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1, v6}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p1, v0, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->x(Ljava/util/List;Lied;)V

    invoke-virtual {p0, v6, v3}, Lcom/cloud/hisavana/sdk/e;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V

    :goto_1
    return v1
.end method

.method public final i(Lied;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 2

    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lied;->e()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-virtual {p1}, Lied;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->a()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    invoke-virtual {p1}, Lied;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->l()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    invoke-virtual {p1}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    invoke-virtual {v0}, Ld29;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    invoke-virtual {v0}, Ld29;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    invoke-virtual {v0}, Ld29;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lied;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    invoke-virtual {p1}, Lied;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    invoke-virtual {p1}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    invoke-virtual {p1}, Lied;->a()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    invoke-virtual {p1}, Lied;->q()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mTriggerNetState:I

    invoke-virtual {p1}, Lied;->r()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->webPageReqInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public final k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/o;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/cloud/hisavana/sdk/o;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/o;-><init>()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getFillTimeoutDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/z;->f(I)V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/cloud/hisavana/sdk/k;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/cloud/hisavana/sdk/k;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/k;-><init>()V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/cloud/hisavana/sdk/x;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/cloud/hisavana/sdk/x;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/x;-><init>()V

    goto :goto_0

    :cond_2
    const-class v0, Lcom/cloud/hisavana/sdk/j0;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/cloud/hisavana/sdk/j0;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/j0;-><init>()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->m:Lcom/cloud/hisavana/sdk/z$a;

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/z;->d(Lcom/cloud/hisavana/sdk/z$a;)V

    :cond_4
    return-object p1
.end method

.method public final m(I)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v1}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v3}, Lied;->z()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOnlyLoadDefaultAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    sget-object v3, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v5}, Lied;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    const-string/jumbo v5, "temp_online_without_req"

    const-class v6, Lcom/cloud/hisavana/sdk/x;

    if-eqz v1, :cond_2

    const/16 p1, 0x13a3

    invoke-static {v3, v5, p1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/cloud/hisavana/sdk/e;->k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-class v1, Lcom/cloud/hisavana/sdk/k;

    if-ne p1, v4, :cond_4

    const/16 p1, 0x13a4

    invoke-static {v3, v5, p1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/e;->k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p1, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/g0;->B()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v6}, Lcom/cloud/hisavana/sdk/e;->k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-class p1, Lcom/cloud/hisavana/sdk/o;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/e;->k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object p1, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/g0;->B()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v6}, Lcom/cloud/hisavana/sdk/e;->k(Ljava/lang/Class;)Lcom/cloud/hisavana/sdk/z;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-object v0
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Load;

    invoke-direct {v1, p0}, Load;-><init>(Lcom/cloud/hisavana/sdk/e;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e;->I()V

    return-void
.end method

.method public final o(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "default_ad_status"

    const-string v1, "offline_ad_status"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic p(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lau4;

    invoke-interface {p0, p1, p2}, Lau4;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public final q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/util/List;)V
    .locals 10

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->h:Z

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/e;->g:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lau4;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/e;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLocalOfflineAdCacheCount()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p0}, Lied;->h()J

    move-result-wide v7

    sub-long v7, p1, v7

    const/4 v3, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILied;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v2}, Lied;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "time_consuming"

    invoke-static {v2, v3, v0, v1}, Lf09;->f(Landroid/os/Bundle;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v3}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLocalOfflineAdCacheCount()I

    move-result v3

    const-string v4, "cache_offline_ad_count"

    invoke-static {v2, v4, v3}, Lf09;->d(Landroid/os/Bundle;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->i:Ljava/lang/String;

    const-string v4, "offline_ad_status"

    invoke-static {v2, v4, v3}, Lf09;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->j:Ljava/lang/String;

    const-string v4, "default_ad_status"

    invoke-static {v2, v4, v3}, Lf09;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {}, Lr6;->p()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fill_fail\uff0cerror code is "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ad_trigger_status\uff0c"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v3}, Lied;->q()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-static {p2, v3}, Lcom/cloud/sdk/commonutil/util/b;->b(Ljava/lang/String;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fill failed, filltime="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "error="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V

    :cond_4
    sget-object p2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lpad;

    invoke-direct {v0, p0, p1, v2}, Lpad;-><init>(Lcom/cloud/hisavana/sdk/e;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-virtual {p0, p2, v0, v1}, Lcom/cloud/hisavana/sdk/e;->u(Ljava/util/List;J)V

    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lqad;

    invoke-direct {v0, p0, p2, v2}, Lqad;-><init>(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lr6;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", codeSeatId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdFetch"

    invoke-virtual {v0, p1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u(Ljava/util/List;J)V
    .locals 3

    const-string v0, "\n"

    invoke-static {}, Lr6;->p()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fill time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "ad_trigger_status: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p3}, Lied;->q()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\uff0cis_offline_ad: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\uff0cadCreativeId: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", source:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/cloud/sdk/commonutil/util/b;->b(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e;->t(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public final synthetic v(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lau4;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {p0, v2}, Lcom/cloud/hisavana/sdk/e;->i(Lied;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object p0

    invoke-interface {v0, p1, v1, p2, p0}, Lau4;->c(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->d:Lau4;

    invoke-interface {p0, p1, p2}, Lau4;->d(Ljava/util/List;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final w(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getShowInterval()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastShowAdTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateDownloadCount, current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",lastShowAdTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",showInterval "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdFetch"

    invoke-virtual {p1, v5, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p0, :cond_1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    int-to-long p0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final y(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/e;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/z;

    if-eqz p1, :cond_1

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/o;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/z;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final z(I)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/e;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/e;->b:Lied;

    invoke-virtual {v5}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getShowSourceSize()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowSourceSize(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, p1, :cond_1

    goto :goto_3

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildDeduplicatedAdResult error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdFetch"

    invoke-virtual {p1, v0, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v2
.end method

.class public Lcom/transsion/onlinevideo/promotion/PromotionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/transsion/onlinevideo/promotion/PromotionManager;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/promotion/PromotionManager;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/promotion/PromotionManager;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/promotion/PromotionManager;->a:Lcom/transsion/onlinevideo/promotion/PromotionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->d(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/promotion/PromotionManager;IILandroid/content/Context;Lli9;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->e(IILandroid/content/Context;Lli9;)V

    return-void
.end method

.method public static c()Lcom/transsion/onlinevideo/promotion/PromotionManager;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/promotion/PromotionManager;->a:Lcom/transsion/onlinevideo/promotion/PromotionManager;

    return-object v0
.end method

.method public static synthetic d(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->H(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)Lcom/transsion/onlinevideo/promotion/PromotionDialog;

    move-result-object p0

    const-string p1, "promotionDialog"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)V
    .locals 3

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "visha_cache_promotion"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/onlinevideo/promotion/PromotionManager$2;

    invoke-direct {v2}, Lcom/transsion/onlinevideo/promotion/PromotionManager$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p0

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic e(IILandroid/content/Context;Lli9;)V
    .locals 9

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "visha_cache_promotion"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/transsion/onlinevideo/promotion/PromotionManager$1;

    invoke-direct {v2, p0}, Lcom/transsion/onlinevideo/promotion/PromotionManager$1;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionManager;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getDisplayPage()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    if-eq p1, v5, :cond_1

    if-ne p1, v6, :cond_0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getCpId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->isHaveDone()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lit1;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getCount()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getFrequency()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getLastShowTime()J

    move-result-wide v7

    sub-long/2addr v4, v7

    const-wide/32 v7, 0x6ddd00

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getCount()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v3, v2}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setCount(I)V

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getCount()I

    move-result v2

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getFrequency()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v2, v4, :cond_2

    invoke-virtual {v3, v6}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setHaveDone(Z)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setLastShowTime(J)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lpi8;

    invoke-direct {v4, p1, v3, p3}, Lpi8;-><init>(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v2, v6

    goto/16 :goto_0

    :cond_3
    if-ne p1, v6, :cond_0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getCpId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4, v3}, Lli9;->a(Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public f(Landroid/content/Context;IILli9;)V
    .locals 7

    sget-boolean v0, Lcom/transsion/onlinevideo/promotion/PromotionManager;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Loi8;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Loi8;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionManager;IILandroid/content/Context;Lli9;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

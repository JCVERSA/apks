.class public Lcom/transsion/onlinevideo/promotion/PromotionModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/promotion/PromotionModel;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/promotion/PromotionModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/promotion/PromotionModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionModel$1;->b:Lcom/transsion/onlinevideo/promotion/PromotionModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "visha_cache_promotion"

    if-nez p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, v1, p1}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-static {}, Lit1;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setDate(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    new-instance v3, Lcom/transsion/onlinevideo/promotion/PromotionModel$1$1;

    invoke-direct {v3, p0}, Lcom/transsion/onlinevideo/promotion/PromotionModel$1$1;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionModel$1;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lit1;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lit1;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setDate(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setCount(I)V

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->isHaveDone()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setHaveDone(Z)V

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getLastShowTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setLastShowTime(J)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lit1;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setDate(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object p0, p0, Lcom/transsion/onlinevideo/promotion/PromotionModel$1;->b:Lcom/transsion/onlinevideo/promotion/PromotionModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/promotion/PromotionModel;->a:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_6
    :goto_5
    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/transsion/onlinevideo/promotion/PromotionManager;->b:Z

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/transsion/onlinevideo/promotion/PromotionManager;->b:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/transsion/onlinevideo/promotion/PromotionManager;->b:Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/promotion/PromotionModel$1;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

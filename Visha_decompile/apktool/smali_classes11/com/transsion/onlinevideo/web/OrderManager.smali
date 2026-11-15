.class public abstract Lcom/transsion/onlinevideo/web/OrderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/web/OrderManager$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;

.field public static b:Ljava/util/Map;

.field public static c:Ljava/util/List;

.field public static d:I

.field public static e:Lcom/transsion/onlinevideo/web/VipViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->b:Ljava/util/Map;

    const/4 v0, -0x3

    sput v0, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/web/OrderManager;->d(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Integer;)V

    return-void
.end method

.method public static b(Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 7

    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/onlinevideo/web/OrderManager;->c()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget v0, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    :cond_1
    sget v0, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    if-gez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->e:Lcom/transsion/onlinevideo/web/VipViewModel;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/web/VipViewModel;

    sput-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->e:Lcom/transsion/onlinevideo/web/VipViewModel;

    :cond_3
    new-instance v0, Lcom/transsion/playercommon/data/OrderCallbackRequest;

    sget-object v1, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v2, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getProductId()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v3, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v5, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v6, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getIsSubscribe()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/data/OrderCallbackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/transsion/onlinevideo/web/OrderManager;->e:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/web/VipViewModel;->c(Lcom/transsion/playercommon/data/OrderCallbackRequest;)V

    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->e:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/web/VipViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->e:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/web/VipViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lus7;

    invoke-direct {v2, p0}, Lus7;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_4
    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "vip_order"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/onlinevideo/web/OrderManager$3;

    invoke-direct {v1}, Lcom/transsion/onlinevideo/web/OrderManager$3;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic d(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Integer;)V
    .locals 6

    sget v0, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "vd_ott_vip_buy_c_order_confirm"

    const-string v1, "[VishaUserDebug]"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    sget-object p1, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v3, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/onlinevideo/web/OrderManager;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lkfc;->k(ZLkfc$d;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pay Consume Server check success"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v5, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v1, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3, v2}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v3, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Pay Consume Server check fail"

    const/4 v4, 0x0

    invoke-static {v0, p1, v3, v4}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pay Consume Server check error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->c:Ljava/util/List;

    sget v3, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget p1, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    sub-int/2addr p1, v2

    sput p1, Lcom/transsion/onlinevideo/web/OrderManager;->d:I

    invoke-static {p0}, Lcom/transsion/onlinevideo/web/OrderManager;->b(Landroidx/lifecycle/ViewModelStoreOwner;)V

    return-void
.end method

.method public static e(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;
    .locals 2

    const-string v0, "subs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setIsSubscribe(I)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setAcknowledged(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setAutoRenewing(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setOrderId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setPurchaseToken(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setPurchaseState(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setPurchaseTime(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getQuantity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setQuantity(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setProductId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-static {p0, p1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    :goto_0
    return-object p1
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, ""

    const-string v2, "vip_order"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/onlinevideo/web/OrderManager$2;

    invoke-direct {v1}, Lcom/transsion/onlinevideo/web/OrderManager$2;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static g(Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, ""

    const-string v2, "vip_order"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/onlinevideo/web/OrderManager$1;

    invoke-direct {v1}, Lcom/transsion/onlinevideo/web/OrderManager$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static h(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/web/OrderManager$a;

    sget-object v1, Lcom/transsion/onlinevideo/web/OrderManager;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/transsion/onlinevideo/web/OrderManager$a;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/web/OrderManager$a;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/web/OrderManager$a;->a(Z)V

    sget-object p1, Lcom/transsion/onlinevideo/web/OrderManager;->b:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static i(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/transsion/onlinevideo/web/OrderManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/web/OrderManager$a;

    sget-object v1, Lcom/transsion/onlinevideo/web/OrderManager;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/transsion/onlinevideo/web/OrderManager$a;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/web/OrderManager$a;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/web/OrderManager$a;->b(Z)V

    sget-object p1, Lcom/transsion/onlinevideo/web/OrderManager;->b:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

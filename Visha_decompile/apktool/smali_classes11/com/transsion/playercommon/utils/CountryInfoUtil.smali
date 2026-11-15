.class public abstract Lcom/transsion/playercommon/utils/CountryInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/CountryInfoUtil$c;
    }
.end annotation


# static fields
.field public static a:Lcom/transsion/dbdata/beans/CountryInfoBean;

.field public static final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static c:J

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->c:J

    const/4 v0, 0x0

    sput v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->d:I

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/dbdata/beans/CountryInfoBean;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    return-object v0
.end method

.method public static bridge synthetic b()I
    .locals 1

    sget v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->d:I

    return v0
.end method

.method public static bridge synthetic c(Lcom/transsion/dbdata/beans/CountryInfoBean;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    return-void
.end method

.method public static bridge synthetic d(I)V
    .locals 0

    sput p0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->d:I

    return-void
.end method

.method public static bridge synthetic e()V
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->q()V

    return-void
.end method

.method public static bridge synthetic f(Z)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->r(Z)V

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 4

    sget-wide v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/playercommon/utils/CountryInfoUtil;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->c:J

    invoke-static {}, Lge;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "area_mode"

    invoke-static {p0, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visha debug, area code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "visha_CountryInfoUtil"

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$array;->areas_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$array;->country_code:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/transsion/playercommon/R$array;->areas:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/CountryInfoBean;-><init>()V

    aget v1, v1, v0

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/CountryInfoBean;->setRegionId(I)V

    const-string v1, "127.0.0.1"

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/CountryInfoBean;->setIp(Ljava/lang/String;)V

    aget-object v1, v2, v0

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/CountryInfoBean;->setCountryCode(Ljava/lang/String;)V

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Lcom/transsion/dbdata/beans/CountryInfoBean;->setCountry(Ljava/lang/String;)V

    sput-object v3, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-static {v3}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->o(Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    return-void

    :cond_1
    invoke-static {}, Laz8;->a()Laz8;

    move-result-object p0

    const-string v0, "visha_country_info"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Laz8;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-static {p0, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz p0, :cond_2

    sput-object p0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->o(Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->n()V

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/transsion/playercommon/utils/CountryInfoUtil$3;

    invoke-direct {v0}, Lcom/transsion/playercommon/utils/CountryInfoUtil$3;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->r(Z)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/transsion/playercommon/utils/CountryInfoUtil$4;

    invoke-direct {v0}, Lcom/transsion/playercommon/utils/CountryInfoUtil$4;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->r(Z)V

    :goto_1
    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static m()I
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getRegionId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static n()V
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/utils/CountryInfoUtil$c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/playercommon/utils/CountryInfoUtil$c;->onFailed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static o(Lcom/transsion/dbdata/beans/CountryInfoBean;)V
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/utils/CountryInfoUtil$c;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/transsion/playercommon/utils/CountryInfoUtil$c;->a(Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static p(Lcom/transsion/playercommon/utils/CountryInfoUtil$c;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static q()V
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a:Lcom/transsion/dbdata/beans/CountryInfoBean;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "register_network_retry_for_country_info"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_CountryInfoUtil"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/playercommon/utils/CountryInfoUtil$b;

    invoke-direct {v0}, Lcom/transsion/playercommon/utils/CountryInfoUtil$b;-><init>()V

    const-string v1, "CountryInfoUtil_net_retry"

    invoke-static {v1, v0}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    return-void
.end method

.method public static r(Z)V
    .locals 8

    const/4 v0, 0x1

    sput v0, Lcom/transsion/playercommon/utils/CountryInfoUtil;->d:I

    invoke-static {}, Laz8;->a()Laz8;

    move-result-object v0

    const-string v1, "r_t"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Laz8;->c(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    const-string p0, "get_country_info_but_not_beyond_limit"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_CountryInfoUtil"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Laz8;->a()Laz8;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Laz8;->g(Ljava/lang/String;J)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getCountryInfo()Ljq0;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v7, Lcom/transsion/playercommon/utils/CountryInfoUtil$a;

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    move-object v1, v7

    move-object v2, v0

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/utils/CountryInfoUtil$a;-><init>(Ljq0;IJZ)V

    invoke-interface {v0, v7}, Ljq0;->enqueue(Ltq0;)V

    :cond_1
    return-void
.end method

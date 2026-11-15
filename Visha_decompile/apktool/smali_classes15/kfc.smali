.class public abstract Lkfc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkfc$d;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;
    .locals 0

    invoke-static {p0, p1}, Lkfc;->n(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lmc7;Lkfc$d;)V
    .locals 0

    invoke-static {p0, p1}, Lkfc;->o(Lmc7;Lkfc$d;)V

    return-void
.end method

.method public static bridge synthetic c(Lmc7;Lkfc$d;)V
    .locals 0

    invoke-static {p0, p1}, Lkfc;->p(Lmc7;Lkfc$d;)V

    return-void
.end method

.method public static d(Z)V
    .locals 0

    return-void
.end method

.method public static e(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;->getLoginStatus()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lkfc;->a:Z

    :cond_1
    return-void
.end method

.method public static f()Lmc7;
    .locals 4

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getUserInfo(Ljava/lang/String;)Lmc7;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lmc7;->R(J)Lmc7;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lmc7;->S(J)Lmc7;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lmc7;
    .locals 3

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getUserInfo(Ljava/lang/String;)Lmc7;

    move-result-object v0

    return-object v0
.end method

.method public static h()Z
    .locals 5

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getTarget()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentRegion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCountry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentRegion support vip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[VishaUserDebug]"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static i()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;
    .locals 1

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getDefaultVIPInfo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    move-result-object v0

    return-object v0
.end method

.method public static j(I)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;
    .locals 1

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVIP(I)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    move-result-object p0

    return-object p0
.end method

.method public static k(ZLkfc$d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get visha user info, bRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_VishaUserManger"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Lkfc;->f()Lmc7;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lkfc;->g()Lmc7;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/transsion/palmsdk/b;->u()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "palm token is expired,refresh it"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lkfc$a;

    invoke-direct {v0, p0, p1}, Lkfc$a;-><init>(Lmc7;Lkfc$d;)V

    invoke-static {v0}, Lcom/transsion/palmsdk/b;->F(Lcom/transsion/palmsdk/PalmID$a;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lkfc;->p(Lmc7;Lkfc$d;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "login visha failed,palm login:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "palm token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static l()Z
    .locals 6

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "palmtoken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vishatoken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lzdc;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[VishaUserDebug]"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static m(I)Z
    .locals 2

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "user_info_cache_key"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-static {v0, v1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    sput-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    :cond_0
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->getVipInfoVos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getSourceType()I

    move-result v1

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic n(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;
    .locals 2

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "user_info_cache_key"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x413

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static o(Lmc7;Lkfc$d;)V
    .locals 2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lkfc$c;

    invoke-direct {v1, p1, p0}, Lkfc$c;-><init>(Lkfc$d;Lmc7;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public static p(Lmc7;Lkfc$d;)V
    .locals 4

    const-string v0, "requestUserVIPInfo"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_VishaUserManger"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lkfc;->b:Z

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {v0}, Lgec;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "palm token:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "palmid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start get visha token"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    new-instance v1, Lkfc$b;

    invoke-direct {v1, p0, p1}, Lkfc$b;-><init>(Lmc7;Lkfc$d;)V

    invoke-virtual {v0, v1}, Lgec;->f(Lgec$d;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lkfc;->o(Lmc7;Lkfc$d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static q(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Ljfc;

    invoke-direct {v1, p0}, Ljfc;-><init>(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

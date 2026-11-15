.class public abstract Lcom/transsion/palmsdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/transsion/palmsdk/PalmID;

.field public static b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

.field public static c:Lcom/transsion/palmsdk/PalmID$c;

.field public static d:Lcom/transsion/palmsdk/PalmID$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/palmsdk/b$b;

    invoke-direct {v0}, Lcom/transsion/palmsdk/b$b;-><init>()V

    sput-object v0, Lcom/transsion/palmsdk/b;->c:Lcom/transsion/palmsdk/PalmID$c;

    new-instance v0, Lcom/transsion/palmsdk/b$c;

    invoke-direct {v0}, Lcom/transsion/palmsdk/b$c;-><init>()V

    sput-object v0, Lcom/transsion/palmsdk/b;->d:Lcom/transsion/palmsdk/PalmID$d;

    return-void
.end method

.method public static A(Lcom/transsion/palmsdk/data/PalmAuthResult;ZLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;-><init>()V

    sput-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    :cond_0
    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getOpenid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setOpenId(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setNickName(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUserName(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setPalmUserName(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setPalmNickName(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAvatarUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAccess_token(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUniqueId(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthorizeSuccess PalmAuthResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bSilentMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPalmUserInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_PalmIdManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getOpenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->I(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->J(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getAccess_token()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->q(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->s(Ljava/lang/String;)V

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p0

    invoke-virtual {p0}, Lgec;->b()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Ldw7;

    invoke-direct {v0, p2, p1}, Ldw7;-><init>(Ljava/lang/String;Z)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static B()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    const-string v0, ""

    invoke-static {v0}, Lcom/transsion/palmsdk/b;->I(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/palmsdk/b;->J(Ljava/lang/String;)V

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->j()V

    invoke-static {v0}, Lzdc;->o(Ljava/lang/String;)V

    invoke-static {v0}, Lzdc;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "user_info_cache_key"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->removeCache(Ljava/lang/String;)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x408

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static C(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/palmsdk/PalmID;->o(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static D()V
    .locals 5

    const-string v0, "queryPalmIdInfo"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_PalmIdManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->i()Lcom/transsion/palmsdk/PalmID$Profile;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/transsion/palmsdk/PalmID$Profile;->uniqueId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query user profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;-><init>()V

    sput-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    :cond_0
    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    sget-object v3, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v3}, Lcom/transsion/palmsdk/PalmID;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAccess_token(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v3, v0, Lcom/transsion/palmsdk/PalmID$Profile;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUserName(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v3, v0, Lcom/transsion/palmsdk/PalmID$Profile;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setNickName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/palmsdk/PalmID$Profile;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v3, v0, Lcom/transsion/palmsdk/PalmID$Profile;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setPalmUserName(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v0, Lcom/transsion/palmsdk/PalmID$Profile;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v3, v0, Lcom/transsion/palmsdk/PalmID$Profile;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setPalmNickName(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v3, v0, Lcom/transsion/palmsdk/PalmID$Profile;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAvatarUrl(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v3, v0, Lcom/transsion/palmsdk/PalmID$Profile;->openId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setOpenId(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v0, v0, Lcom/transsion/palmsdk/PalmID$Profile;->uniqueId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUniqueId(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/palmsdk/b;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/palmsdk/b;->J(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->access_token:Ljava/lang/String;

    invoke-static {v0}, Lzdc;->q(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzdc;->s(Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x409

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPalmIdInfo onSuccess : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "queryPalmIdInfo callOpenApi"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/palmsdk/b$a;

    invoke-direct {v2}, Lcom/transsion/palmsdk/b$a;-><init>()V

    const-string v3, "/openapi/user/get-profile"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/transsion/palmsdk/PalmID;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V

    :goto_0
    return-void
.end method

.method public static E(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    new-instance v1, Lcom/transsion/palmsdk/b$d;

    invoke-direct {v1, p1, p0}, Lcom/transsion/palmsdk/b$d;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/PalmID;->p(Lcom/transsion/palmsdk/PalmID$a;)V

    :cond_0
    return-void
.end method

.method public static F(Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/palmsdk/PalmID;->p(Lcom/transsion/palmsdk/PalmID$a;)V

    :cond_0
    return-void
.end method

.method public static G()V
    .locals 2

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/palmsdk/b;->c:Lcom/transsion/palmsdk/PalmID$c;

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/PalmID;->a(Lcom/transsion/palmsdk/PalmID$c;)V

    return-void
.end method

.method public static H()V
    .locals 2

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/palmsdk/b;->d:Lcom/transsion/palmsdk/PalmID$d;

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/PalmID;->b(Lcom/transsion/palmsdk/PalmID$d;)V

    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "palm_open_id"

    invoke-static {v0, v1, p0}, Lw6c;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lzdc;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static J(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "palm_unique_id"

    invoke-static {v0, v1, p0}, Lw6c;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lzdc;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static K(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->access_token:Ljava/lang/String;

    invoke-static {v0}, Lzdc;->q(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzdc;->s(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->access_token:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static L()V
    .locals 2

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/palmsdk/b;->c:Lcom/transsion/palmsdk/PalmID$c;

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/PalmID;->q(Lcom/transsion/palmsdk/PalmID$c;)V

    return-void
.end method

.method public static M()V
    .locals 2

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/palmsdk/b;->d:Lcom/transsion/palmsdk/PalmID$d;

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/PalmID;->r(Lcom/transsion/palmsdk/PalmID$d;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/palmsdk/b;->x(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/palmsdk/b;->v()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/transsion/palmsdk/b;->w()V

    return-void
.end method

.method public static bridge synthetic d(Z)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->y(Z)V

    return-void
.end method

.method public static bridge synthetic e(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/palmsdk/b;->z(ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/palmsdk/data/PalmAuthResult;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/palmsdk/b;->A(Lcom/transsion/palmsdk/data/PalmAuthResult;ZLjava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/palmsdk/b;->h(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg06;->b(Ljava/lang/String;I)V

    sget-object v1, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    const-string v2, "visha_PalmIdManager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/transsion/palmsdk/b;->y(Z)V

    const-string p0, "PalmID is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "login_flow"

    const-wide/32 v4, 0x493e0

    invoke-static {v1, v4, v5}, Lv34;->c(Ljava/lang/String;J)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->t()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authorize isPalmOSLogin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    new-instance v1, Lcom/transsion/palmsdk/b$e;

    invoke-direct {v1, p1}, Lcom/transsion/palmsdk/b$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/palmsdk/PalmID;->c(Landroid/content/Context;Lcom/transsion/palmsdk/PalmID$b;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    new-instance v2, Lcom/transsion/palmsdk/b$f;

    invoke-direct {v2, p1}, Lcom/transsion/palmsdk/b$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v3, v0, v2}, Lcom/transsion/palmsdk/PalmID;->d(Landroid/content/Context;ZZLcom/transsion/palmsdk/PalmID$b;)V

    :goto_0
    return-void
.end method

.method public static i(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authorize from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bSilentMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_PalmIdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lg06;->b(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/transsion/palmsdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    new-instance v1, Lcom/transsion/palmsdk/b$g;

    invoke-direct {v1, p2, p1}, Lcom/transsion/palmsdk/b$g;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/palmsdk/PalmID;->c(Landroid/content/Context;Lcom/transsion/palmsdk/PalmID$b;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    xor-int/lit8 v1, p2, 0x1

    new-instance v2, Lcom/transsion/palmsdk/b$h;

    invoke-direct {v2, p2, p1}, Lcom/transsion/palmsdk/b$h;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/transsion/palmsdk/PalmID;->d(Landroid/content/Context;ZZLcom/transsion/palmsdk/PalmID$b;)V

    :goto_0
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvatar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "visha_PalmIdManager"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    const-string v1, ""

    if-eqz v0, :cond_2

    sget-object v2, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "palm_open_id"

    invoke-static {v0, v1}, Lw6c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "palm_unique_id"

    invoke-static {v0, v1}, Lw6c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static p()Lcom/transsion/dbdata/beans/VishaPalmUserInfo;
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    return-object v0
.end method

.method public static q(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lge;->e()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const-string v0, "environment_mode"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    return v1
.end method

.method public static r(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/transsion/palmsdk/PalmAuthParam$a;

    invoke-direct {v0}, Lcom/transsion/palmsdk/PalmAuthParam$a;-><init>()V

    const-string v1, "vishaplayer"

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->p(Ljava/lang/String;)Lcom/transsion/palmsdk/PalmAuthParam$a;

    move-result-object v0

    sget-object v2, Lw29;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/palmsdk/PalmAuthParam$a;->q([Ljava/lang/String;)Lcom/transsion/palmsdk/PalmAuthParam$a;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->q(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/palmsdk/PalmAuthParam$a;->r(I)Lcom/transsion/palmsdk/PalmAuthParam$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam$a;->o()Lcom/transsion/palmsdk/PalmAuthParam$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/palmsdk/PalmAuthParam$a;->s(Z)Lcom/transsion/palmsdk/PalmAuthParam$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/palmsdk/PalmAuthParam$a;->t(Z)Lcom/transsion/palmsdk/PalmAuthParam$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam$a;->n()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/palmsdk/PalmID;->f(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)Lcom/transsion/palmsdk/PalmID;

    move-result-object p0

    sput-object p0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    new-instance p0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;-><init>()V

    sput-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-static {}, Lcom/transsion/palmsdk/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setOpenId(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-static {}, Lcom/transsion/palmsdk/b;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUniqueId(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getOpenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->o(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->r(Ljava/lang/String;)V

    invoke-static {v1}, Lzdc;->m(Ljava/lang/String;)V

    invoke-static {v1}, Lzdc;->n(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->q(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->s(Ljava/lang/String;)V

    invoke-static {}, Lgec;->c()Lgec;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "token:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_PalmIdManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcw7;

    invoke-direct {p0}, Lcw7;-><init>()V

    const-wide/16 v0, 0x5dc

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static s()Z
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->m()Z

    move-result v0

    return v0
.end method

.method public static t()Z
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->n()Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 4

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic v()V
    .locals 2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VishaUserManger getVishaUserInfo"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_PalmIdManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkfc;->k(ZLkfc$d;)V

    :cond_0
    return-void
.end method

.method public static synthetic w()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lew7;

    invoke-direct {v1}, Lew7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic x(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/transsion/palmsdk/b$i;

    invoke-direct {v0, p0, p1}, Lcom/transsion/palmsdk/b$i;-><init>(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lkfc;->k(ZLkfc$d;)V

    return-void
.end method

.method public static y(Z)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x4a6

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static z(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bSilentMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_PalmIdManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x4a5

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->B()V

    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    invoke-static {v1, p3, v0, p1}, Lg06;->c(ZLjava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const p1, 0x9ca7

    if-ne p0, p1, :cond_1

    sget p0, Lcom/transsion/playercommon/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$string;->palm_id_login_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

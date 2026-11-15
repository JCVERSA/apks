.class public Lcom/transsion/palmsdk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/b;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "errorCode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errorMessage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_PalmIdManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryPalmIdInfo callOpenApi onSuccess : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_PalmIdManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-static {p1, p0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;-><init>()V

    sput-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    :cond_0
    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAccess_token(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUserName(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setNickName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getNickName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setPalmNickName(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUserName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setPalmUserName(Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAvatarUrl(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setOpenId(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUniqueId(Ljava/lang/String;)V

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

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x409

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/palmsdk/b$a;->b(Ljava/lang/String;)V

    return-void
.end method

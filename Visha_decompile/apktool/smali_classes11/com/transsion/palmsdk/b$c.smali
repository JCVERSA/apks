.class public Lcom/transsion/palmsdk/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/b;
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
.method public a(Lcom/transsion/palmsdk/PalmID$Profile;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPalmProfileListener onChanged "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_PalmIdManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;-><init>()V

    sput-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    :cond_0
    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    sget-object v0, Lcom/transsion/palmsdk/b;->a:Lcom/transsion/palmsdk/PalmID;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAccess_token(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v0, p1, Lcom/transsion/palmsdk/PalmID$Profile;->username:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUserName(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v0, p1, Lcom/transsion/palmsdk/PalmID$Profile;->nickname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setNickName(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v0, p1, Lcom/transsion/palmsdk/PalmID$Profile;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAvatarUrl(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v0, p1, Lcom/transsion/palmsdk/PalmID$Profile;->openId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setOpenId(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object p1, p1, Lcom/transsion/palmsdk/PalmID$Profile;->uniqueId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUniqueId(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->openId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->I(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->access_token:Ljava/lang/String;

    invoke-static {p0}, Lzdc;->q(Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x409

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

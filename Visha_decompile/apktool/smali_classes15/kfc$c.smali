.class public Lkfc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkfc;->o(Lmc7;Lkfc$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkfc$d;

.field public final synthetic c:Lmc7;


# direct methods
.method public constructor <init>(Lkfc$d;Lmc7;)V
    .locals 0

    iput-object p1, p0, Lkfc$c;->b:Lkfc$d;

    iput-object p2, p0, Lkfc$c;->c:Lmc7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha login user info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_VishaUserManger"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    sput-object v0, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-static {v0}, Lkfc;->e(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-static {v0}, Lkfc;->q(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V

    new-instance v0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;-><init>()V

    sget-object v1, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setUserName(Ljava/lang/String;)V

    sget-object v1, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setNickName(Ljava/lang/String;)V

    sget-object v1, Lkfc;->c:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;->getAvatarUrl()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->setAvatarUrl(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lkfc$c;->b:Lkfc$d;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-interface {p0, p1}, Lkfc$d;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lgec;->o(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lkfc;->b:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    sput-boolean p1, Lkfc;->b:Z

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p1

    new-instance v0, Lkfc$c$a;

    invoke-direct {v0, p0}, Lkfc$c$a;-><init>(Lkfc$c;)V

    invoke-virtual {p1, v0}, Lgec;->k(Lgec$d;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lkfc$c;->b:Lkfc$d;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkfc$d;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lkfc$c;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

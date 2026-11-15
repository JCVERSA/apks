.class public Lgec$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgec;->k(Lgec$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lgec$d;

.field public final synthetic c:Lgec;


# direct methods
.method public constructor <init>(Lgec;Lgec$d;)V
    .locals 0

    iput-object p1, p0, Lgec$b;->c:Lgec;

    iput-object p2, p0, Lgec$b;->b:Lgec$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2

    iget-object v0, p0, Lgec$b;->c:Lgec;

    invoke-static {v0}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->setAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lgec$b;->c:Lgec;

    invoke-static {v0}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->setRefreshToken(Ljava/lang/String;)V

    iget-object v0, p0, Lgec$b;->c:Lgec;

    invoke-static {v0}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->setTokenType(Ljava/lang/String;)V

    iget-object v0, p0, Lgec$b;->c:Lgec;

    invoke-static {v0}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->setScope(Ljava/lang/String;)V

    iget-object v0, p0, Lgec$b;->c:Lgec;

    invoke-static {v0}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getExpiresInDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->setExpiresInDate(Ljava/lang/String;)V

    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzdc;->u(Ljava/lang/String;)V

    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzdc;->w(Ljava/lang/String;)V

    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getTokenType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzdc;->v(Ljava/lang/String;)V

    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgec;->m(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgec;->l(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VishaOauthData;->getTokenType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lgec$b;->c:Lgec;

    invoke-static {p1}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getTokenType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgec;->n(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshToken VishaToken: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgec$b;->c:Lgec;

    invoke-static {v0}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_VishaOauthManager"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgec$b;->b:Lgec$d;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lgec$b;->c:Lgec;

    invoke-static {p0}, Lgec;->a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;

    move-result-object p0

    invoke-interface {p1, p0}, Lgec$d;->a(Lcom/transsion/dbdata/beans/VishaOauthData;)V

    :cond_3
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    instance-of p0, p1, Lcom/transsion/retrofit/exception/ApiException;

    const-string v0, "visha_VishaOauthManager"

    if-eqz p0, :cond_0

    check-cast p1, Lcom/transsion/retrofit/exception/ApiException;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/retrofit/exception/ApiException;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "msg:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/retrofit/exception/ApiException;->getDisplayMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "refreshToken VishaToken failed"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshToken VishaToken failed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lgec$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

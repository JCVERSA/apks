.class public Lcom/transsion/retrofit/reponse/ResponseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/retrofit/reponse/ResponseUtil$State;
    }
.end annotation


# static fields
.field public static final CODE_ERROR_DEFAULT:Ljava/lang/String; = "1010"

.field public static final CODE_NO_NETWORK:Ljava/lang/String; = "404"

.field public static final CODE_SUCESS:Ljava/lang/String; = "200"

.field public static final CODE_TIME_OUT:Ljava/lang/String; = "408"

.field public static final MSG_ERROR:Ljava/lang/String; = "net_error"

.field public static final MSG_TOAST_ERROR:Ljava/lang/String; = "net_error"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkResult(Lgu8;)Lcom/transsion/retrofit/reponse/ResponseUtil$State;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">(",
            "Lgu8<",
            "TT;>;)",
            "Lcom/transsion/retrofit/reponse/ResponseUtil$State;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;

    invoke-direct {v0}, Lcom/transsion/retrofit/reponse/ResponseUtil$State;-><init>()V

    .line 2
    const-string v1, "1010"

    const-string v2, "net_error"

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 3
    iput-boolean v3, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->isSucess:Z

    .line 4
    iput-object v2, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lgu8;->e()Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_1

    .line 7
    iput-boolean v3, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->isSucess:Z

    .line 8
    invoke-virtual {p0}, Lgu8;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lgu8;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->toastMsg:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 12
    iput-boolean v3, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->isSucess:Z

    .line 13
    iput-object v2, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    .line 14
    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    return-object v0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    iput-boolean v3, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->isSucess:Z

    .line 17
    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    iput-object v2, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->toastMsg:Ljava/lang/String;

    .line 21
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method public static checkResult(Ljava/lang/Throwable;)Lcom/transsion/retrofit/reponse/ResponseUtil$State;
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;

    invoke-direct {v0}, Lcom/transsion/retrofit/reponse/ResponseUtil$State;-><init>()V

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->isSucess:Z

    .line 24
    const-string v1, "1010"

    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    .line 25
    const-string v1, "net_error"

    iput-object v1, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    if-nez p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    .line 27
    const-string p0, "408"

    iput-object p0, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_1
    instance-of p0, p0, Ljava/net/ConnectException;

    if-eqz p0, :cond_2

    .line 29
    const-string p0, "404"

    iput-object p0, v0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isNoNetWork(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "404"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSucess(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTimeOut(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "408"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

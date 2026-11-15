.class public Lcom/mgtv/task/http/HttpResponseObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field public transient channel:Lcom/mgtv/task/http/a;

.field private code:I

.field public data:Lcom/google/gson/JsonElement;

.field private err_code:I

.field private err_msg:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/mgtv/task/http/HttpResponseObject;->code:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/mgtv/task/http/HttpResponseObject;->err_code:I

    :goto_0
    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/task/http/HttpResponseObject;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/task/http/HttpResponseObject;->err_msg:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/task/http/HttpResponseObject;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpResponseObject;->msg:Ljava/lang/String;

    return-void
.end method

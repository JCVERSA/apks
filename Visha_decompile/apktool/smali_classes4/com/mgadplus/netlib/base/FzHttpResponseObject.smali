.class public Lcom/mgadplus/netlib/base/FzHttpResponseObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field private code:I

.field public data:Lcom/google/gson/JsonElement;

.field private err_code:I

.field private err_msg:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->err_code:I

    iput v0, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->code:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->err_code:I

    :goto_0
    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->err_msg:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->code:I

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->err_code:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->err_msg:Ljava/lang/String;

    return-void
.end method

.method public setException(Ljava/lang/Exception;)Lcom/mgadplus/netlib/base/FzHttpResponseObject;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->msg:Ljava/lang/String;

    return-void
.end method

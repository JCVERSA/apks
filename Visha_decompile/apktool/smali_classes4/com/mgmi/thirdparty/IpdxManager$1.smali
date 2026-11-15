.class Lcom/mgmi/thirdparty/IpdxManager$1;
.super Lcom/mgadplus/netlib/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/thirdparty/IpdxManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/netlib/base/b<",
        "Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/thirdparty/IpdxManager;


# direct methods
.method public constructor <init>(Lcom/mgmi/thirdparty/IpdxManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-direct {p0}, Lcom/mgadplus/netlib/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;)V
    .locals 2
    .param p1    # Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    const-string v0, "IpdxManager"

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-static {v0, p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;)V

    .line 5
    iget v0, p1, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->code:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    const v0, 0xdbf8c

    iget-object p1, p1, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->message:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgadplus/netlib/base/e;

    invoke-virtual {p0, p1}, Lcom/mgmi/thirdparty/IpdxManager$1;->b(Lcom/mgadplus/netlib/base/e;)V

    return-void
.end method

.method public b(Lcom/mgadplus/netlib/base/e;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v5

    .line 4
    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    .line 5
    const-string v1, "http respont code not 0 or 200:"

    const v2, 0xdbf88

    if-nez v5, :cond_4

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    if-eq v0, v4, :cond_2

    add-int/2addr v2, v0

    .line 7
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpStatus is not 200:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mgadplus/netlib/base/b;->a(Lcom/mgadplus/netlib/base/FzHttpResponseObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    invoke-virtual {p0, v0}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 10
    :catch_0
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http respont ok but process data error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xdbf8b

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_7

    .line 11
    instance-of p1, v5, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xdbf8a

    const v3, 0xdbf8a

    move-object v1, p0

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_5
    instance-of p1, v5, Ljava/net/SocketException;

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xdbf8a

    const v3, 0xdbf8a

    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    add-int v3, v0, v2

    .line 17
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v2, v3

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    add-int v3, v0, v2

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager$1;->a:Lcom/mgmi/thirdparty/IpdxManager;

    .line 20
    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v2, v3

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    invoke-virtual {p0, p1}, Lcom/mgmi/thirdparty/IpdxManager$1;->a(Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;)V

    return-void
.end method

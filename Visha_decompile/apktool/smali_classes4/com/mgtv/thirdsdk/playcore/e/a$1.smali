.class Lcom/mgtv/thirdsdk/playcore/e/a$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/LiveSourceEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mgtv/thirdsdk/playcore/e/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/e/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed-------->result:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 6
    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->playableErrCode:Ljava/lang/String;

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :goto_1
    new-instance v9, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {v9}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 8
    invoke-virtual {v9, v5}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->b:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->b(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->b(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v9, v1}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 13
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->ai:Z

    const-string v11, "\u9700\u8981\u4f1a\u5458\u6743\u9650"

    const-string v12, "\u7248\u6743\u53d7\u9650"

    const v13, 0x1f2220

    const v14, 0x1f2221

    const v15, 0x1f220c

    const v4, 0x1f220b

    const v3, 0x1f218a

    const-string v10, "100016"

    if-eqz v2, :cond_6

    if-eq v7, v3, :cond_4

    if-eq v7, v4, :cond_4

    if-eq v7, v15, :cond_4

    if-eq v7, v14, :cond_4

    if-ne v7, v13, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    invoke-interface {v0, v10, v12}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 17
    :cond_3
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 18
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    const-string v1, "170004"

    const-string v2, "\u5207\u6362\u6e05\u6670\u5ea6\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_4
    :goto_3
    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    const-string v1, "170005"

    invoke-interface {v0, v1, v11}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    :goto_4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    goto/16 :goto_a

    .line 22
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v2, v1

    goto :goto_6

    :cond_7
    const-string v1, "https://clp.bz.mgtv.com/union/live/source"

    goto :goto_5

    .line 23
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object v1

    sget-object v3, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    if-ne v1, v3, :cond_a

    const v1, 0x1f222b

    if-ne v7, v1, :cond_8

    .line 24
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/a;->c(Lcom/mgtv/thirdsdk/playcore/e/a;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;I)V

    .line 25
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/a;->c(Lcom/mgtv/thirdsdk/playcore/e/a;)I

    move-result v3

    const v13, 0x1f218a

    move v14, v4

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    move v14, v4

    const v13, 0x1f218a

    if-ne v7, v13, :cond_9

    .line 26
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/a;->c(Lcom/mgtv/thirdsdk/playcore/e/a;)I

    move-result v3

    const v4, 0x19a28

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;IILjava/lang/Throwable;)V

    goto :goto_7

    .line 27
    :cond_9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/a;->c(Lcom/mgtv/thirdsdk/playcore/e/a;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v7, v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;IILjava/lang/Throwable;)V

    goto :goto_7

    :cond_a
    move v14, v4

    const v13, 0x1f218a

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object v1

    sget-object v3, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->PARSE_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    if-ne v1, v3, :cond_b

    .line 29
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/a;->c(Lcom/mgtv/thirdsdk/playcore/e/a;)I

    move-result v3

    const v4, 0x18e70

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;IILjava/lang/Throwable;)V

    goto :goto_7

    .line 30
    :cond_b
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/a;->c(Lcom/mgtv/thirdsdk/playcore/e/a;)I

    move-result v16

    const/4 v4, 0x1

    move-object v3, v2

    move/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILjava/lang/String;ZLjava/lang/Throwable;I)V

    :goto_7
    if-eq v7, v13, :cond_e

    if-eq v7, v14, :cond_e

    if-eq v7, v15, :cond_e

    const v1, 0x1f2221

    if-eq v7, v1, :cond_e

    const v1, 0x1f2220

    if-ne v7, v1, :cond_c

    goto :goto_8

    :cond_c
    if-eqz v8, :cond_d

    .line 31
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 32
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 33
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    invoke-interface {v0, v10, v12}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 34
    :cond_d
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 35
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    const-string v1, "170001"

    const-string v2, "\u65e0\u53ef\u7528\u6e90"

    invoke-interface {v0, v1, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 36
    :cond_e
    :goto_8
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 37
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    const-string v1, "170003"

    invoke-interface {v0, v1, v11}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_f
    :goto_9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    :goto_a
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/a$1;->b(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/e/a$1;->a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://clp.bz.mgtv.com/union/live/source"

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success-------->result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 4
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-virtual {v2, p1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;)V

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v3, v2, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v3, Lcom/mgtv/thirdsdk/playcore/e;->ai:Z

    const-string v5, ""

    if-eqz v4, :cond_7

    .line 6
    iget-object v2, v3, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v2

    const-string v3, "170005"

    if-eqz v2, :cond_3

    .line 8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p0

    const-string p1, "\u9700\u8981\u4f1a\u5458\u6743\u9650"

    invoke-interface {p0, v3, p1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    new-instance v2, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v2}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 11
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 13
    new-instance v1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {v1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 14
    const-string v2, "need vip"

    invoke-virtual {v1, v2}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/a;->b(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/a;->b(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 19
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object v2, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->activityId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d(Ljava/lang/String;)V

    .line 21
    :cond_6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    invoke-virtual {p1, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(I)V

    .line 22
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;I)V

    .line 23
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Ljava/lang/String;I)V

    .line 24
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 25
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p0

    const/16 p1, 0x9

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    goto/16 :goto_3

    .line 26
    :cond_7
    iget-object v4, v3, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    if-eqz v4, :cond_8

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    if-nez v3, :cond_9

    .line 27
    :cond_8
    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 28
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v2

    const-string v3, "170001"

    invoke-interface {v2, v3, v5}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz p1, :cond_a

    .line 29
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->cameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->activityId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d(Ljava/lang/String;)V

    .line 31
    :cond_a
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    invoke-virtual {p1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(I)V

    .line 32
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    invoke-virtual {p1, v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;I)V

    .line 33
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e/a;->a:Lcom/mgtv/thirdsdk/playcore/e;

    iget v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    invoke-virtual {p1, v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Ljava/lang/String;I)V

    .line 34
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 35
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 36
    :cond_b
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 37
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/c$b;->b(I)V

    .line 38
    :cond_c
    new-instance p1, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {p1}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 40
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/a;->b(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/a$1;->c:Lcom/mgtv/thirdsdk/playcore/e/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->b(Lcom/mgtv/thirdsdk/playcore/e/a;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_d
    move-object p0, v2

    .line 43
    :goto_2
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v5, p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    .line 44
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/a$1;->a(Lcom/hunantv/imgo/net/entity/LiveSourceEntity;)V

    return-void
.end method

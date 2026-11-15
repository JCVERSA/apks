.class public final Lcom/transsion/cloud/share/KtShareLinkHandleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/cloud/share/KtShareLinkHandleManager;

.field public static final b:Lnw6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager;

    invoke-direct {v0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;-><init>()V

    sput-object v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->a:Lcom/transsion/cloud/share/KtShareLinkHandleManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lsw6;->b(ZILjava/lang/Object;)Lnw6;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->b:Lnw6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/cloud/share/KtShareLinkHandleManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/cloud/share/KtShareLinkHandleManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "defaultMMKV(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internal_copy_flag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    const-string v0, "internal_copy_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    const-string p0, "Cleared internal copy flag"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "KtShareLinkHandleManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing share URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "KtShareLinkHandleManager"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "share_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing share URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "KtShareLinkHandleManager"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p5

    const-string v1, "KtShareLinkHandleManager"

    instance-of v2, v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;

    iget v3, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;-><init>(Lcom/transsion/cloud/share/KtShareLinkHandleManager;Lwh1;)V

    :goto_0
    iget-object v0, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lnw6;

    iget-object v4, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object v15, v3

    move-object v3, v7

    move-object v0, v8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->b:Lnw6;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p2

    iput-object v7, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$2:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->L$4:Ljava/lang/Object;

    iput v5, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$1;->label:I

    invoke-interface {v0, v6, v2}, Lnw6;->c(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    :cond_3
    move-object v15, v0

    move-object v2, v4

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    :goto_1
    :try_start_0
    new-instance v14, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v20, 0x7fe

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v7, v14

    move-object v8, v0

    move-object v5, v14

    move-object/from16 v14, v16

    move-object/from16 v24, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    :try_start_1
    invoke-direct/range {v7 .. v21}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v4}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setPageHost(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget-object v15, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {v15}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object v7

    invoke-virtual {v7}, Lrz0;->c()Lmq3;

    move-result-object v7

    invoke-interface {v7}, Lmq3;->getConfig()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v7

    instance-of v8, v7, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v9, 0x4e77

    if-eqz v8, :cond_4

    :try_start_3
    check-cast v7, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v7

    if-ne v7, v9, :cond_4

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    new-instance v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$2$1$1;

    invoke-direct {v2, v6}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchFileShareInfo$2$1$1;-><init>(Lwh1;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v5

    move-object/from16 p2, v7

    move-object/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 p5, v4

    invoke-static/range {p0 .. p5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    sget-object v0, Lm21;->a:Lm21;

    invoke-virtual {v0}, Lm21;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v14, v24

    invoke-interface {v14, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v6

    :catchall_0
    move-exception v0

    move-object/from16 v14, v24

    :goto_2
    move-object v3, v14

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v14, v24

    :goto_3
    move-object v3, v14

    goto/16 :goto_9

    :cond_4
    move-object/from16 v14, v24

    :try_start_4
    sget-object v7, Lbz5;->a:Lbz5$a;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v8, v3, v10, v6}, Lbz5$a;->e(Lbz5$a;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v15}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object v3

    invoke-virtual {v3}, Lrz0;->c()Lmq3;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Lmq3;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v3

    instance-of v7, v3, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v7, :cond_19

    check-cast v3, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v3, ""

    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->getCreatorName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_4
    move-object v7, v3

    :cond_6
    invoke-virtual {v5, v7}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setShareCreatorName(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->getExpired()Z

    move-result v8

    :cond_7
    invoke-virtual {v5, v8}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setShareExpired(Z)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->getCreatorId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    :cond_8
    move-object v7, v3

    :cond_9
    invoke-virtual {v5, v7}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setShareCreatorId(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->getRegion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    move-object v2, v3

    :cond_b
    invoke-virtual {v5, v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setRegion(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/transsion/palmsdk/b;->m()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "self share link, skip"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-interface {v14, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v6

    :cond_c
    :try_start_6
    invoke-virtual {v15}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object v2

    invoke-virtual {v2}, Lrz0;->c()Lmq3;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v13, 0x6

    const/4 v2, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v8, v0

    move-object v12, v4

    move-object/from16 p1, v3

    move-object v3, v14

    move-object v14, v2

    :try_start_7
    invoke-static/range {v7 .. v14}, Lmq3$a;->d(Lmq3;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v2

    instance-of v7, v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v7, :cond_18

    check-cast v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;->getShareToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :cond_d
    :goto_5
    move-object/from16 v2, p1

    :cond_e
    invoke-virtual {v5, v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setShareToken(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object v7

    invoke-virtual {v7}, Lrz0;->c()Lmq3;

    move-result-object v7

    const-string v8, "root"

    invoke-interface {v7, v2, v0, v8, v4}, Lmq3;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v0

    instance-of v2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v2, :cond_18

    move-object v2, v0

    check-cast v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/PageResult;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/PageResult;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_17

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-ne v2, v4, :cond_17

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/PageResult;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/PageResult;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    goto :goto_6

    :cond_f
    move-object v0, v6

    :goto_6
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_10
    move-object/from16 v2, p1

    :cond_11
    invoke-virtual {v5, v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setFileName(Ljava/lang/String;)V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getFileSize()J

    move-result-wide v7

    goto :goto_7

    :cond_12
    const-wide/16 v7, 0x0

    :goto_7
    invoke-virtual {v5, v7, v8}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setFileSize(J)V

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_13
    move-object/from16 v2, p1

    :cond_14
    invoke-virtual {v5, v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setFileId(Ljava/lang/String;)V

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getThumbnailUrls()Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_15
    move-object/from16 v0, p1

    :cond_16
    invoke-virtual {v5, v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->setFileCoverUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Share file info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_17
    const-string v0, "Failed to get share file info, no items in response"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v6

    :cond_18
    :goto_8
    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v5

    :cond_19
    move-object v4, v3

    move-object v3, v14

    :try_start_8
    instance-of v5, v4, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;

    if-eqz v5, :cond_1b

    instance-of v5, v4, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v5, :cond_1b

    move-object v5, v4

    check-cast v5, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v7

    sget-object v10, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_EXPIRED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v10}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v10

    if-ne v7, v10, :cond_1a

    sget v7, Lcom/transsion/netdisk/R$string;->visha_share_expired:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/transsion/utils/ToastUtils;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v2

    if-ne v2, v9, :cond_1b

    sget-object v2, Lm21;->a:Lm21;

    invoke-virtual {v2}, Lm21;->d()V

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get share info, shareId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v6

    :catchall_3
    move-exception v0

    move-object/from16 v3, v24

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v3, v24

    :goto_9
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while fetching share info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v6

    :catchall_4
    move-exception v0

    move-object v3, v15

    :goto_a
    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p5

    const-string v1, "KtShareLinkHandleManager"

    instance-of v2, v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;

    iget v3, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;-><init>(Lcom/transsion/cloud/share/KtShareLinkHandleManager;Lwh1;)V

    :goto_0
    iget-object v0, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lnw6;

    iget-object v4, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object v8, v2

    move-object v13, v4

    move-object v10, v5

    :goto_1
    move-object v9, v7

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->b:Lnw6;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p2

    iput-object v7, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$2:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->L$4:Ljava/lang/Object;

    iput v5, v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$fetchShareDownloadUrl$1;->label:I

    invoke-interface {v0, v6, v2}, Lnw6;->c(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    :cond_3
    move-object v3, v0

    move-object v10, v8

    move-object v13, v9

    move-object v8, v4

    goto :goto_1

    :goto_2
    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object v0

    invoke-virtual {v0}, Lrz0;->c()Lmq3;

    move-result-object v7

    const/16 v14, 0x8

    const/4 v15, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v15}, Lmq3$a;->c(Lmq3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v0

    instance-of v2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;

    if-eqz v0, :cond_9

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getUrl()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-nez v4, :cond_4

    move-object v8, v5

    goto :goto_3

    :cond_4
    move-object v8, v4

    :goto_3
    :try_start_1
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getSize()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getExpiration()Ljava/time/LocalDateTime;

    move-result-object v11

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getContentHashName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v12, v5

    goto :goto_4

    :cond_5
    move-object v12, v4

    :goto_4
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getContentHash()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v13, v5

    goto :goto_5

    :cond_6
    move-object v13, v4

    :goto_5
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getCrc64Hash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v14, v5

    goto :goto_6

    :cond_7
    move-object v14, v0

    :goto_6
    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;-><init>(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_8
    :try_start_2
    const-string v0, "Failed to get share download url"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while fetching share download url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_8
    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    return-object v6

    :goto_9
    invoke-interface {v3, v6}, Lnw6;->b(Ljava/lang/Object;)V

    throw v0
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p3

    move-object/from16 v6, p4

    const-string v4, "context"

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "shareUrl"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "linkSource"

    invoke-static {v6, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShareLink: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " needRecord: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " linkSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "KtShareLinkHandleManager"

    invoke-static {v5, v4}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v4, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    const-string v8, "getSupportFragmentManager(...)"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v0, "Skipping share link handling - context is finishing or destroyed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->k(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "Skipping share link handling - internal copy detected"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->c()V

    return-void

    :cond_3
    invoke-virtual {p0, v3}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping share link handling - recently processed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0, v3}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping share link handling - duplicate link detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-virtual {p0, v3}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    if-nez v4, :cond_6

    move-object v4, v7

    :cond_6
    invoke-virtual {p0, v3}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_0

    :cond_7
    move-object v7, v8

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extracted share_id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->n()V

    if-eqz v2, :cond_8

    invoke-virtual {p0, v3}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->o(Ljava/lang/String;)V

    :cond_8
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v0

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v8

    new-instance v11, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v7

    move-object/from16 v6, p4

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;Lwh1;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to extract share_id from URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "defaultMMKV(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "last_processed_share_link"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate link check - last: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", current: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isDuplicate: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "KtShareLinkHandleManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final j()Z
    .locals 9

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "defaultMMKV(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "internal_copy_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "internal_copy_timestamp"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal copy check - lastTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", currentTime: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", withinWindow: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KtShareLinkHandleManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->c()V

    :cond_2
    return v2
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "share_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :cond_2
    xor-int/2addr p0, v1

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL format for share link validation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "KtShareLinkHandleManager"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return p0
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 8

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "defaultMMKV(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "last_processed_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/16 v6, 0xbb8

    cmp-long p0, v4, v6

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recent process check - link: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", lastTime: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", currentTime: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", isRecent: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "KtShareLinkHandleManager"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "defaultMMKV(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internal_copy_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    const-string v0, "internal_copy_flag"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorded internal copy timestamp: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "KtShareLinkHandleManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final n()V
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "defaultMMKV(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_processed_time"

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorded process time: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "KtShareLinkHandleManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "defaultMMKV(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "last_processed_share_link"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recorded processed link: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "KtShareLinkHandleManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

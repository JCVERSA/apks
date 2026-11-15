.class final Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/share/ShareInfoDialogFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.share.ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1"
    f = "ShareInfoDialogFragment.kt"
    l = {
        0x120,
        0x12c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/share/ShareInfoDialogFragment;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/share/ShareInfoDialogFragment;",
            "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    iput-object p2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;-><init>(Lcom/transsion/cloud/share/ShareInfoDialogFragment;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, La41;->a:La41;

    iget-object v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "requireContext(...)"

    invoke-static {v1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, La41;->b(Landroid/content/Context;)Lmq3;

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareToken()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "root"

    iget-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    invoke-static {p1}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->D(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getRegion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v11, p1

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, ""

    goto :goto_0

    :goto_2
    invoke-interface/range {v6 .. v11}, Lmq3;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p1

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    new-instance v5, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;

    iget-object v6, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    iget-object v7, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-direct {v5, p1, v6, v7, v2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;-><init>(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Lcom/transsion/cloud/share/ShareInfoDialogFragment;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lwh1;)V

    iput v4, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->label:I

    invoke-static {v1, v5, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v0, :cond_5

    return-object v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveFileToMyCloudDrive error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareInfoDialogFragment"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$2;

    iget-object v4, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    invoke-direct {v1, v4, v2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$2;-><init>(Lcom/transsion/cloud/share/ShareInfoDialogFragment;Lwh1;)V

    iput v3, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

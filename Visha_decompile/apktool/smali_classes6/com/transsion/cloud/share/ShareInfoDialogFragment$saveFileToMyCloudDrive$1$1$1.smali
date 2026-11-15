.class final Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.cloud.share.ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1"
    f = "ShareInfoDialogFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $apiResponse:Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "Lcom/transsion/cloud_drive/base/api/model/CopyShareFilesResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Lcom/transsion/cloud/share/ShareInfoDialogFragment;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "Lcom/transsion/cloud_drive/base/api/model/CopyShareFilesResult;",
            ">;",
            "Lcom/transsion/cloud/share/ShareInfoDialogFragment;",
            "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->$apiResponse:Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    iput-object p2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    iput-object p3, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 2
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

    new-instance p1, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->$apiResponse:Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    iget-object v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;-><init>(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Lcom/transsion/cloud/share/ShareInfoDialogFragment;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->$apiResponse:Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    instance-of v0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    sget v0, Lcom/transsion/netdisk/R$string;->visha_saved:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/transsion/utils/ToastUtils;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->$info:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljz5;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveFileToMyCloudDrive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ShareInfoDialogFragment"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1$1;->this$0:Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

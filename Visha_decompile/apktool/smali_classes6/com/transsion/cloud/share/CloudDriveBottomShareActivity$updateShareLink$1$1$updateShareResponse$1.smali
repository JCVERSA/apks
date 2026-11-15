.class final Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lnk1;",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Lcom/transsion/cloud_drive/base/api/model/FileShareLink;",
        "<anonymous>",
        "(Lnk1;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.share.CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1"
    f = "CloudDriveBottomShareActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fileManager:Lmq3;

.field final synthetic $id:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Lmq3;Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;",
            "Lmq3;",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->this$0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    iput-object p2, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->$fileManager:Lmq3;

    iput-object p3, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->$id:Ljava/lang/String;

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

    new-instance p1, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->this$0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    iget-object v1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->$fileManager:Lmq3;

    iget-object p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->$id:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Lmq3;Ljava/lang/String;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "Lcom/transsion/cloud_drive/base/api/model/FileShareLink;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->this$0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    invoke-static {p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->m0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->this$0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;

    invoke-static {v0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->m0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->$fileManager:Lmq3;

    iget-object v1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1;->$id:Ljava/lang/String;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lmq3$a;->g(Lmq3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

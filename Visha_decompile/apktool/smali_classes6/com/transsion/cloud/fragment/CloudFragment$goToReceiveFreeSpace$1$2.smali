.class final Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.cloud.fragment.CloudFragment$goToReceiveFreeSpace$1$2"
    f = "CloudFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $freeSpaceSize:J

.field final synthetic $receiveFreeSpaceResponse:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/cloud/fragment/CloudFragment;JLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;",
            ">;",
            "Lcom/transsion/cloud/fragment/CloudFragment;",
            "J",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->$receiveFreeSpaceResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    iput-wide p3, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->$freeSpaceSize:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 6
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

    new-instance p1, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->$receiveFreeSpaceResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    iget-wide v3, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->$freeSpaceSize:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/cloud/fragment/CloudFragment;JLwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->$receiveFreeSpaceResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_2

    sget p1, Lcom/transsion/netdisk/R$string;->visha_get_space_successed:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMLlFreeSpace$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMVvFreeSpace$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object p1, Laz5;->a:Laz5$a;

    const-string v0, "cloud_getfreesp_s"

    iget-wide v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->$freeSpaceSize:J

    invoke-virtual {p1, v0, v1, v2}, Laz5$a;->D(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/netdisk/R$string;->visha_get_space_failed:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    sget-object p1, Laz5;->a:Laz5$a;

    const-string v0, "cloud_getfreesp_f"

    iget-wide v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;->$freeSpaceSize:J

    invoke-virtual {p1, v0, v1, v2}, Laz5$a;->D(Ljava/lang/String;J)V

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

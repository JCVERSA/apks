.class final Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->goToReceiveFreeSpace(J)V
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
    c = "com.transsion.cloud.fragment.CloudFragment$goToReceiveFreeSpace$1"
    f = "CloudFragment.kt"
    l = {
        0x4b2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $freeSpaceSize:J

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;JLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/fragment/CloudFragment;",
            "J",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    iput-wide p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->$freeSpaceSize:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->h(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;)Lzfb;
    .locals 0

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 3
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

    new-instance p1, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    iget-wide v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->$freeSpaceSize:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;JLwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/cloud_drive/base/api/request/MccMap;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v4

    const-string v1, "getCountryCode(...)"

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/transsion/cloud_drive/base/api/request/MccMap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, La41;->a:La41;

    invoke-virtual {v3, v1}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v1, :cond_3

    new-instance v3, Lcom/transsion/cloud/fragment/a;

    invoke-direct {v3, v4}, Lcom/transsion/cloud/fragment/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v1, p1, v3}, Lxy0;->a(Lcom/transsion/cloud_drive/base/api/request/MccMap;Le74;)V

    :cond_3
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;

    iget-object v5, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    iget-wide v6, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->$freeSpaceSize:J

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/cloud/fragment/CloudFragment;JLwh1;)V

    iput v2, p0, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

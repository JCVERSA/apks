.class final Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/share/KtShareLinkHandleManager;->h(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;)V
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
    c = "com.transsion.cloud.share.KtShareLinkHandleManager$handleShareLink$1"
    f = "KtShareLinkHandleManager.kt"
    l = {
        0x10a,
        0x10d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $host:Ljava/lang/String;

.field final synthetic $linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

.field final synthetic $shareId:Ljava/lang/String;

.field final synthetic $shareUrl:Ljava/lang/String;

.field final synthetic $weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$shareId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$shareUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$host:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$weakContext:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 9
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

    new-instance v8, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;

    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$shareId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$shareUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$host:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$weakContext:Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;Lwh1;)V

    iput-object p1, v8, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lnk1;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lnk1;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    sget-object v4, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->a:Lcom/transsion/cloud/share/KtShareLinkHandleManager;

    iget-object v5, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$shareId:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$shareUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$host:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->label:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->a(Lcom/transsion/cloud/share/KtShareLinkHandleManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    :goto_0
    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz p1, :cond_5

    sget-object v3, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->a:Lcom/transsion/cloud/share/KtShareLinkHandleManager;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$host:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->b(Lcom/transsion/cloud/share/KtShareLinkHandleManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v2

    :goto_1
    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    move-object v6, p1

    move-object v3, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move-object v3, p1

    move-object v6, v0

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->$linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    instance-of p0, v4, Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_6

    move-object p0, v4

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    new-instance p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;-><init>(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Landroid/content/Context;Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_6
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

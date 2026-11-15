.class final Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.cloud.share.KtShareLinkHandleManager$handleShareLink$1$1$1"
    f = "KtShareLinkHandleManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $fileDownloadUrlInfo:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

.field final synthetic $fileShareInfo:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

.field final synthetic $linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

.field label:I


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Landroid/content/Context;Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
            "Landroid/content/Context;",
            "Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;",
            "Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileShareInfo:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    iput-object p2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    iput-object p4, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileDownloadUrlInfo:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

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

    new-instance p1, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;

    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileShareInfo:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    iget-object v2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    iget-object v4, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileDownloadUrlInfo:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;-><init>(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Landroid/content/Context;Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileShareInfo:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$ctx:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ShareInfoDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$linkSource:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    sget-object v3, Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;->DEEPLINK:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    const-string v4, "KtShareLinkHandleManager"

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "High priority DeepLink detected, closing existing dialog"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v2, v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "ShareInfoDialog already showing, skip"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileShareInfo:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    iget-object v2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileDownloadUrlInfo:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show share dialog "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".shareId, "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$ctx:Landroid/content/Context;

    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$ctx:Landroid/content/Context;

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$ctx:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$ctx:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->u:Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;

    iget-object v2, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileShareInfo:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    iget-object p0, p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$handleShareLink$1$1$1;->$fileDownloadUrlInfo:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    invoke-virtual {v1, v2, p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;->a(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;)Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Error showing ShareInfoDialog"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result p0

    invoke-static {p0}, Lmk0;->b(I)Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_4
    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class final Lcom/cloud/hisavana/sdk/manager/a$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$creatCCTServiceAsyncIfNeeded$1"
    f = "CustomTabsManager.kt"
    l = {
        0x1b2,
        0x1c2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            "Z",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/a$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final a(Lnk1;Lwh1;)Ljava/lang/Object;
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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$h;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/manager/a$h;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

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

    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$h;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->e:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/cloud/hisavana/sdk/manager/a$h;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$h;->a(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->b:I

    const-string v2, "CustomTabsManager"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->a:I

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput v4, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->b:I

    invoke-static {p1, v1, v5, p0}, Lcom/cloud/hisavana/sdk/manager/a;->j(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move p1, v3

    :goto_1
    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "CCT is unenable"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    iput p1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->a:I

    iput v3, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->b:I

    invoke-static {v1, v5, v4, p0}, Lcom/cloud/hisavana/sdk/manager/a;->l(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;ZLwh1;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->d()Landroidx/browser/customtabs/CustomTabsClient;

    move-result-object v0

    if-eqz v0, :cond_7

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/cloud/hisavana/sdk/manager/a;->R(Z)V

    goto :goto_3

    :cond_8
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "CreatCCTServiceAsyncIfNeeded failed now "

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "CreatCCTServiceAsyncIfNeeded success now "

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    move v0, p1

    :goto_4
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind service end, checkIsNeedBindServiceOrWarmUp is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->e:Z

    if-eqz p1, :cond_b

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v1, p0, v0}, Lcom/cloud/hisavana/sdk/manager/a;->x(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_b
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

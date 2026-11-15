.class final Lcom/cloud/hisavana/sdk/manager/b$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/b;->j()V
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
    c = "com.cloud.hisavana.sdk.manager.RetryTrackingManager$startRetryTracking$1"
    f = "RetryTrackingManager.kt"
    l = {
        0x2b,
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/cloud/hisavana/sdk/manager/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/manager/b;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/hisavana/sdk/manager/b;",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/b$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/b$f;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/manager/b$f;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/b$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
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

    new-instance p1, Lcom/cloud/hisavana/sdk/manager/b$f;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-direct {p1, p0, p2}, Lcom/cloud/hisavana/sdk/manager/b$f;-><init>(Lcom/cloud/hisavana/sdk/manager/b;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/b$f;->a(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    :try_start_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lcom/cloud/hisavana/sdk/Y0;->e:Lcom/cloud/hisavana/sdk/Y0$a;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/Y0$a;->a()Lcom/cloud/hisavana/sdk/Y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/Y0;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/b;->l(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p1

    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {v6}, Lcom/cloud/hisavana/sdk/manager/b;->i(Lcom/cloud/hisavana/sdk/manager/b;)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-virtual {v5, p1}, Lcom/cloud/hisavana/sdk/manager/b;->k(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/b;->g(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tracking,net is not ok"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Likd;->b()Likd;

    move-result-object v5

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {v6}, Lcom/cloud/hisavana/sdk/manager/b;->g(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tracking "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->a:Ljava/lang/Object;

    iput v4, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->b:I

    invoke-static {v5, p1, p0}, Lcom/cloud/hisavana/sdk/manager/b;->d(Lcom/cloud/hisavana/sdk/manager/b;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/b;->a(Lcom/cloud/hisavana/sdk/manager/b;)J

    move-result-wide v5

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->b:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLwh1;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/b;->l(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :goto_3
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b$f;->c:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/b;->l(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method

.class final Lcom/cloud/hisavana/sdk/g0$g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/g0;->k(J)V
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
    c = "com.cloud.hisavana.sdk.manager.DefaultAdManager$setupDefaultAdOperations$1"
    f = "DefaultAdManager.kt"
    l = {
        0x70,
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field final synthetic b:J


# direct methods
.method public constructor <init>(JLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/g0$g;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/g0$g;->b:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g0$g;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/g0$g;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/g0$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/cloud/hisavana/sdk/g0$g;

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/g0$g;->b:J

    invoke-direct {p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/g0$g;-><init>(JLwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g0$g;->a(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/g0$g;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

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

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p1

    const-string v1, "default_file_save_finished"

    invoke-virtual {p1, v1}, Lo9;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v1

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/g0$g;->b:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lo9;->g(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v5

    const-string v6, "default_local_version"

    invoke-virtual {v5, v6}, Lo9;->h(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {}, Likd;->b()Likd;

    move-result-object v7

    const-string v8, "DefaultAdManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "defaultVersion is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/cloud/hisavana/sdk/g0$g;->b:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",  local version is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " , times is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/g0$g;->b:J

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    const/4 v5, 0x3

    if-ge v1, v5, :cond_4

    sget-object p1, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/g0;->v(Lcom/cloud/hisavana/sdk/g0;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/g0;->f(Lcom/cloud/hisavana/sdk/g0;)Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1, v1, v4}, Lcom/cloud/hisavana/sdk/g0;->n(Lcom/cloud/hisavana/sdk/g0;Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;Z)V

    :cond_3
    sget-object p1, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/k0;->b()V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    sget-object p1, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/k0;->b()V

    :cond_5
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    iput v4, p0, Lcom/cloud/hisavana/sdk/g0$g;->a:I

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/g0;->s(Lcom/cloud/hisavana/sdk/g0;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    iput v2, p0, Lcom/cloud/hisavana/sdk/g0$g;->a:I

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/g0;->h(Lcom/cloud/hisavana/sdk/g0;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/g0;->t()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/g0;->t()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw p0
.end method

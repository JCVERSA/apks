.class final Lcom/cloud/hisavana/sdk/manager/a$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->r(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Le74;)V
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
    c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1"
    f = "CustomTabsManager.kt"
    l = {
        0x281,
        0x284,
        0x28b,
        0x291
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field final synthetic g:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Le74;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;",
            "Le74;",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/a$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Le74;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/manager/a$f;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

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

    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$f;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Le74;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/manager/a$f;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Le74;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->a(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_4
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 p1, -0x1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->v(Lcom/cloud/hisavana/sdk/manager/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->p(J)V

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v7, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->a(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v6

    if-nez v6, :cond_b

    invoke-static {p1, v5}, Lcom/cloud/hisavana/sdk/manager/a;->D(Lcom/cloud/hisavana/sdk/manager/a;Z)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    const/4 v5, 0x0

    invoke-static {p1, v3, v5, p0}, Lcom/cloud/hisavana/sdk/manager/a;->l(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;ZLwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v3, 0x1b5e

    if-eq p1, v3, :cond_6

    const/16 v3, 0x1b5f

    if-eq p1, v3, :cond_6

    goto :goto_4

    :cond_6
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    invoke-static {p1, v3, v5, v6, p0}, Lcom/cloud/hisavana/sdk/manager/a;->k(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v3, v1

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_2
    move-object v1, v3

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    iput v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    invoke-static {p1, v4, v5, v6, p0}, Lcom/cloud/hisavana/sdk/manager/a;->k(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v3, v1

    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_2

    :cond_b
    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_4
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v3, Lcom/cloud/hisavana/sdk/manager/a$f$a;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Le74;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lcom/cloud/hisavana/sdk/manager/a$f$a;-><init>(Le74;Lkotlin/jvm/internal/Ref$IntRef;Lwh1;)V

    iput-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    invoke-static {p1, v3, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p0, v0, :cond_c

    return-object v0

    :catchall_0
    :cond_c
    :goto_5
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

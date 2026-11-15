.class final Lcom/yandex/mobile/ads/impl/wx;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.yandex.mobile.ads.features.debugpanel.data.repo.DebugPanelRepositoryImpl$getAllData$2"
    f = "DebugPanelRepositoryImpl.kt"
    l = {
        0x2e,
        0x19
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lnw6;

.field c:Lcom/yandex/mobile/ads/impl/xx;

.field d:Lcom/yandex/mobile/ads/impl/xx;

.field e:Z

.field f:I

.field final synthetic g:Lcom/yandex/mobile/ads/impl/xx;

.field final synthetic h:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xx;ZLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xx;",
            "Z",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/wx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wx;->g:Lcom/yandex/mobile/ads/impl/xx;

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/wx;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/wx;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wx;->g:Lcom/yandex/mobile/ads/impl/xx;

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/wx;->h:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/wx;-><init>(Lcom/yandex/mobile/ads/impl/xx;ZLwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/wx;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wx;->g:Lcom/yandex/mobile/ads/impl/xx;

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/wx;->h:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/wx;-><init>(Lcom/yandex/mobile/ads/impl/xx;ZLwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/wx;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/wx;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wx;->d:Lcom/yandex/mobile/ads/impl/xx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wx;->c:Lcom/yandex/mobile/ads/impl/xx;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wx;->b:Lnw6;

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/wx;->e:Z

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/wx;->c:Lcom/yandex/mobile/ads/impl/xx;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/wx;->b:Lnw6;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object p1, v5

    move v5, v1

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/wx;->g:Lcom/yandex/mobile/ads/impl/xx;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xx;->d(Lcom/yandex/mobile/ads/impl/xx;)Lnw6;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wx;->g:Lcom/yandex/mobile/ads/impl/xx;

    iget-boolean v5, p0, Lcom/yandex/mobile/ads/impl/wx;->h:Z

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wx;->b:Lnw6;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wx;->c:Lcom/yandex/mobile/ads/impl/xx;

    iput-boolean v5, p0, Lcom/yandex/mobile/ads/impl/wx;->e:Z

    iput v3, p0, Lcom/yandex/mobile/ads/impl/wx;->f:I

    invoke-interface {p1, v4, p0}, Lnw6;->c(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/xx;->b(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/rx;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, p1

    goto :goto_3

    :cond_5
    :goto_1
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/xx;->e(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/oo1;

    move-result-object v3

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wx;->b:Lnw6;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wx;->c:Lcom/yandex/mobile/ads/impl/xx;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wx;->d:Lcom/yandex/mobile/ads/impl/xx;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/wx;->f:I

    invoke-interface {v3, p0}, Lcom/yandex/mobile/ads/impl/oo1;->a(Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_2
    :try_start_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object p1, v4

    :cond_7
    check-cast p1, Lcom/yandex/mobile/ads/impl/rx;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/xx;->a(Lcom/yandex/mobile/ads/impl/xx;Lcom/yandex/mobile/ads/impl/rx;)V

    :goto_3
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/xx;->c(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/ns0;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/ns0;->a()Lcom/yandex/mobile/ads/impl/nx;

    move-result-object p1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/xx;->a(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/cx;

    move-result-object v0

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/xx;->b(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/rx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/cx;->a(Lcom/yandex/mobile/ads/impl/nx;Lcom/yandex/mobile/ads/impl/rx;)Lcom/yandex/mobile/ads/impl/bx;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0, v4}, Lnw6;->b(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_4
    invoke-interface {p0, v4}, Lnw6;->b(Ljava/lang/Object;)V

    throw p1
.end method

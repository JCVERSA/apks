.class final Lcom/yandex/mobile/ads/impl/ux$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ux;->a(Lwh1;)Ljava/lang/Object;
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

.annotation runtime Lnt1;
    c = "com.yandex.mobile.ads.features.debugpanel.data.repo.DebugPanelReportRepositoryImpl$getReport$2"
    f = "DebugPanelReportRepositoryImpl.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/nx;

.field c:Lcom/yandex/mobile/ads/impl/ox;

.field d:I

.field final synthetic e:Lcom/yandex/mobile/ads/impl/ux;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ux;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ux;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ux$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ux$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/ux$a;-><init>(Lcom/yandex/mobile/ads/impl/ux;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ux$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/ux$a;-><init>(Lcom/yandex/mobile/ads/impl/ux;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ux$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ux$a;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ux$a;->c:Lcom/yandex/mobile/ads/impl/ox;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ux$a;->b:Lcom/yandex/mobile/ads/impl/nx;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ux;->b(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/ns0;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/ns0;->a()Lcom/yandex/mobile/ads/impl/nx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nx;->d()Lcom/yandex/mobile/ads/impl/ox;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p0, Lcom/yandex/mobile/ads/impl/ll0$b;->a:Lcom/yandex/mobile/ads/impl/ll0$b;

    return-object p0

    :cond_2
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/ux;->d(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/oo1;

    move-result-object v3

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ux$a;->b:Lcom/yandex/mobile/ads/impl/nx;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ux$a;->c:Lcom/yandex/mobile/ads/impl/ox;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/ux$a;->d:I

    invoke-interface {v3, p0}, Lcom/yandex/mobile/ads/impl/oo1;->a(Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v2

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    :cond_4
    check-cast p1, Lcom/yandex/mobile/ads/impl/rx;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/rx;->f()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_6
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nx;->e()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/ux;->c(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/zz0;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yandex/mobile/ads/impl/zz0;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v7, v2

    goto :goto_1

    :cond_7
    move-object v7, p1

    :goto_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/sx;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nx;->a()Lcom/yandex/mobile/ads/impl/xw;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nx;->f()Lcom/yandex/mobile/ads/impl/yx;

    move-result-object v6

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nx;->b()Lcom/yandex/mobile/ads/impl/ax;

    move-result-object v8

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ox;->b()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ox;->a()Ljava/util/List;

    move-result-object v10

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/sx;-><init>(Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ax;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ux;->a(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/kl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/kl0;->a(Lcom/yandex/mobile/ads/impl/sx;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux$a;->e:Lcom/yandex/mobile/ads/impl/ux;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ux;->e(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/ml0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ml0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ll0;

    move-result-object p0

    return-object p0
.end method

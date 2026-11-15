.class final Lcom/yandex/mobile/ads/impl/ck$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ck;->c(Lcom/yandex/mobile/ads/impl/p82;)V
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
    c = "com.monetization.ads.base.BaseAdLoadController$loadBiddingData$1"
    f = "BaseAdLoadController.kt"
    l = {
        0xbf,
        0xc0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/o3;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ck<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/yandex/mobile/ads/impl/p82;

.field final synthetic g:Lcom/yandex/mobile/ads/impl/fl;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Lcom/yandex/mobile/ads/impl/fl;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/p82;",
            "Lcom/yandex/mobile/ads/impl/fl;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ck$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ck$c;->f:Lcom/yandex/mobile/ads/impl/p82;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ck$c;->g:Lcom/yandex/mobile/ads/impl/fl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
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

    new-instance v0, Lcom/yandex/mobile/ads/impl/ck$c;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ck$c;->f:Lcom/yandex/mobile/ads/impl/p82;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$c;->g:Lcom/yandex/mobile/ads/impl/fl;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/yandex/mobile/ads/impl/ck$c;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Lcom/yandex/mobile/ads/impl/fl;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/ck$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ck$c;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ck$c;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/yandex/mobile/ads/impl/o3;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->b:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ck$c;->d:Ljava/lang/Object;

    check-cast v3, Ld72;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->d:Ljava/lang/Object;

    check-cast p1, Lnk1;

    new-instance v8, Lcom/yandex/mobile/ads/impl/ck$c$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ck$c;->g:Lcom/yandex/mobile/ads/impl/fl;

    invoke-direct {v8, v1, v5, v4}, Lcom/yandex/mobile/ads/impl/ck$c$b;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/fl;Lwh1;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v1

    new-instance v8, Lcom/yandex/mobile/ads/impl/ck$c$a;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/ck$c;->g:Lcom/yandex/mobile/ads/impl/fl;

    invoke-direct {v8, v5, v6, v4}, Lcom/yandex/mobile/ads/impl/ck$c$a;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/fl;Lwh1;)V

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object p1

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v5

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->d:Ljava/lang/Object;

    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/ck$c;->b:Lcom/yandex/mobile/ads/impl/o3;

    iput v3, p0, Lcom/yandex/mobile/ads/impl/ck$c;->c:I

    invoke-interface {p1, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    move-object v1, v5

    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/o3;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->d:Ljava/lang/Object;

    iput-object v4, p0, Lcom/yandex/mobile/ads/impl/ck$c;->b:Lcom/yandex/mobile/ads/impl/o3;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/ck$c;->c:I

    invoke-interface {v3, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/o3;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/f5;->h:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$c;->e:Lcom/yandex/mobile/ads/impl/ck;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$c;->f:Lcom/yandex/mobile/ads/impl/p82;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/p82;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

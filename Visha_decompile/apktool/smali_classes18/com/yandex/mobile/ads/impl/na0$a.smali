.class final Lcom/yandex/mobile/ads/impl/na0$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/na0;->e()V
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
    c = "com.monetization.ads.feed.ui.FeedViewModel$observeLoadingState$1"
    f = "FeedViewModel.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field private synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/na0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/na0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/na0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/na0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/na0$a;->d:Lcom/yandex/mobile/ads/impl/na0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    new-instance v0, Lcom/yandex/mobile/ads/impl/na0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0$a;->d:Lcom/yandex/mobile/ads/impl/na0;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/na0$a;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/na0$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/na0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0$a;->d:Lcom/yandex/mobile/ads/impl/na0;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/na0$a;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/na0$a;->c:Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/na0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/na0$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/na0$a;->c:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/na0$a;->d:Lcom/yandex/mobile/ads/impl/na0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/na0;->c()Lgx9;

    move-result-object v1

    sget-object v3, Lcom/yandex/mobile/ads/impl/na0$a$a;->b:Lcom/yandex/mobile/ads/impl/na0$a$a;

    invoke-static {v1, v3}, Lsz3;->j(Lnz3;Le74;)Lnz3;

    move-result-object v1

    new-instance v3, Lcom/yandex/mobile/ads/impl/na0$a$b;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/na0$a;->d:Lcom/yandex/mobile/ads/impl/na0;

    invoke-direct {v3, v4, p1}, Lcom/yandex/mobile/ads/impl/na0$a$b;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lnk1;)V

    iput v2, p0, Lcom/yandex/mobile/ads/impl/na0$a;->b:I

    invoke-interface {v1, v3, p0}, Lnz3;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

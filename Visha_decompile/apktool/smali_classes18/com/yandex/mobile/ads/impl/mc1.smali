.class final Lcom/yandex/mobile/ads/impl/mc1;
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
    c = "com.monetization.ads.nativeads.creator.videowrapper.NativeWrapperVideoLoader$loadWrapperInVideo$2"
    f = "NativeWrapperVideoLoader.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/lb2;

.field c:I

.field final synthetic d:Lcom/yandex/mobile/ads/impl/lb2;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/pc1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/pc1;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/lb2;",
            "Lcom/yandex/mobile/ads/impl/pc1;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/mc1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mc1;->d:Lcom/yandex/mobile/ads/impl/lb2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mc1;->e:Lcom/yandex/mobile/ads/impl/pc1;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/mc1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mc1;->d:Lcom/yandex/mobile/ads/impl/lb2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mc1;->e:Lcom/yandex/mobile/ads/impl/pc1;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/mc1;-><init>(Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/pc1;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/mc1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mc1;->d:Lcom/yandex/mobile/ads/impl/lb2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mc1;->e:Lcom/yandex/mobile/ads/impl/pc1;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/mc1;-><init>(Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/pc1;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/mc1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/mc1;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mc1;->b:Lcom/yandex/mobile/ads/impl/lb2;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mc1;->d:Lcom/yandex/mobile/ads/impl/lb2;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mc1;->e:Lcom/yandex/mobile/ads/impl/pc1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lb2;->c()Ljava/util/List;

    move-result-object v4

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mc1;->b:Lcom/yandex/mobile/ads/impl/lb2;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/mc1;->c:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v5, Lcom/yandex/mobile/ads/impl/oc1;

    invoke-direct {v5, v3, v4, v1}, Lcom/yandex/mobile/ads/impl/oc1;-><init>(Lcom/yandex/mobile/ads/impl/pc1;Ljava/util/List;Lwh1;)V

    invoke-static {v2, v5, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lb2;->a(Lcom/yandex/mobile/ads/impl/lb2;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.class final Lcom/yandex/mobile/ads/impl/ba0$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ba0;->a(Lcom/yandex/mobile/ads/impl/gs0;Lwh1;)Ljava/lang/Object;
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
    c = "com.monetization.ads.feed.data.preloader.FeedItemPreloadDataSource$prepareLoadedAd$2"
    f = "FeedItemPreloadDataSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/gs0;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/ba0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gs0;Lcom/yandex/mobile/ads/impl/ba0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gs0;",
            "Lcom/yandex/mobile/ads/impl/ba0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ba0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->b:Lcom/yandex/mobile/ads/impl/gs0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->c:Lcom/yandex/mobile/ads/impl/ba0;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ba0$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->b:Lcom/yandex/mobile/ads/impl/gs0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->c:Lcom/yandex/mobile/ads/impl/ba0;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ba0$a;-><init>(Lcom/yandex/mobile/ads/impl/gs0;Lcom/yandex/mobile/ads/impl/ba0;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ba0$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->b:Lcom/yandex/mobile/ads/impl/gs0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->c:Lcom/yandex/mobile/ads/impl/ba0;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ba0$a;-><init>(Lcom/yandex/mobile/ads/impl/gs0;Lcom/yandex/mobile/ads/impl/ba0;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ba0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->b:Lcom/yandex/mobile/ads/impl/gs0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gs0;->b()Lcom/yandex/mobile/ads/impl/b02;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/q61;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->c:Lcom/yandex/mobile/ads/impl/ba0;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/b30;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ba0;->a(Lcom/yandex/mobile/ads/impl/ba0;)Lcom/yandex/mobile/ads/impl/l90;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Lcom/yandex/mobile/ads/impl/l90;->a(Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/b02;)Lcom/yandex/mobile/ads/impl/vk1;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/n90;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->b:Lcom/yandex/mobile/ads/impl/gs0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gs0;->b()Lcom/yandex/mobile/ads/impl/b02;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ba0$a;->b:Lcom/yandex/mobile/ads/impl/gs0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gs0;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p0

    invoke-direct {p1, v0, p0, v2}, Lcom/yandex/mobile/ads/impl/n90;-><init>(Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/impl/o8;Ljava/util/ArrayList;)V

    return-object p1
.end method

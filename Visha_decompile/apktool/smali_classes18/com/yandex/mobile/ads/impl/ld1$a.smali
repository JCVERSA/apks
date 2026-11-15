.class final Lcom/yandex/mobile/ads/impl/ld1$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ld1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Ljava/util/List;Lwh1;)Ljava/lang/Object;
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
    c = "com.monetization.ads.base.mediation.bidding.NetworksHeaderBiddingDataLoader$loadNetworksBiddingDataInternal$3"
    f = "NetworksHeaderBiddingDataLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/ld1;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/yandex/mobile/ads/impl/el;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ld1;Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/el;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ld1;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/el;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ld1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->b:Lcom/yandex/mobile/ads/impl/ld1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->e:Lcom/yandex/mobile/ads/impl/el;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ld1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->b:Lcom/yandex/mobile/ads/impl/ld1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->e:Lcom/yandex/mobile/ads/impl/el;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ld1$a;-><init>(Lcom/yandex/mobile/ads/impl/ld1;Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/el;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ld1$a;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ld1$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ld1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->b:Lcom/yandex/mobile/ads/impl/ld1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->d:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ld1$a;->e:Lcom/yandex/mobile/ads/impl/el;

    invoke-static {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/ld1;->a(Lcom/yandex/mobile/ads/impl/ld1;Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/el;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

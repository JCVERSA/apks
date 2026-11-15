.class final Lcom/yandex/mobile/ads/impl/s30$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/s30;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.monetization.ads.base.dns.DnsPrefetcher$prefetchUrlList$2$1$1"
    f = "DnsPrefetcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/r30;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r30;Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/r30;",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/s30$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s30$a;->b:Lcom/yandex/mobile/ads/impl/r30;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s30$a;->c:Ljava/lang/String;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/s30$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s30$a;->b:Lcom/yandex/mobile/ads/impl/r30;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s30$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/s30$a;-><init>(Lcom/yandex/mobile/ads/impl/r30;Ljava/lang/String;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/s30$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s30$a;->b:Lcom/yandex/mobile/ads/impl/r30;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s30$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/s30$a;-><init>(Lcom/yandex/mobile/ads/impl/r30;Ljava/lang/String;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/s30$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s30$a;->b:Lcom/yandex/mobile/ads/impl/r30;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s30$a;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/r30;->a(Lcom/yandex/mobile/ads/impl/r30;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

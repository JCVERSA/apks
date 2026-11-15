.class public final Lcom/yandex/mobile/ads/impl/x91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk1;


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/g51;

.field private final c:Lhk1$b;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g51;)V
    .locals 1

    const-string v0, "nativeAdCreationListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x91;->b:Lcom/yandex/mobile/ads/impl/g51;

    sget-object p1, Lhk1;->w1:Lhk1$b;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x91;->c:Lhk1$b;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ls74;",
            ")TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lhk1$a;->a(Lhk1;Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/d$b;",
            ">(",
            "Lkotlin/coroutines/d$c;",
            ")TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lhk1$a;->b(Lhk1;Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lkotlin/coroutines/d$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/d$c;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x91;->c:Lhk1$b;

    return-object p0
.end method

.method public final handleException(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x91;->b:Lcom/yandex/mobile/ads/impl/g51;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->d()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final minusKey(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d$c;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    invoke-static {p0, p1}, Lhk1$a;->c(Lhk1;Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0

    invoke-static {p0, p1}, Lhk1$a;->d(Lhk1;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

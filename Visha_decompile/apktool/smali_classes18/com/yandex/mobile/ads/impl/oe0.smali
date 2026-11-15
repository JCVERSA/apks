.class public final Lcom/yandex/mobile/ads/impl/oe0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vx;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vx;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oe0;->a:Lcom/yandex/mobile/ads/impl/vx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLwh1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/rw;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/yandex/mobile/ads/impl/oe0$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/yandex/mobile/ads/impl/oe0$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/oe0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/oe0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/oe0$a;

    invoke-direct {v0, p0, p3}, Lcom/yandex/mobile/ads/impl/oe0$a;-><init>(Lcom/yandex/mobile/ads/impl/oe0;Lwh1;)V

    :goto_0
    iget-object p3, v0, Lcom/yandex/mobile/ads/impl/oe0$a;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/oe0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/yandex/mobile/ads/impl/oe0$a;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oe0;->a:Lcom/yandex/mobile/ads/impl/vx;

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/oe0$a;->b:Ljava/lang/String;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/oe0$a;->e:I

    invoke-interface {p0, p2, v0}, Lcom/yandex/mobile/ads/impl/vx;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/yandex/mobile/ads/impl/bx;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/bx;->b()Lcom/yandex/mobile/ads/impl/tw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tw;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/yandex/mobile/ads/impl/rw;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/rw;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

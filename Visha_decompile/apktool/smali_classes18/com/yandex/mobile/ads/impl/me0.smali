.class public final Lcom/yandex/mobile/ads/impl/me0;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/me0;->a:Lcom/yandex/mobile/ads/impl/vx;

    return-void
.end method


# virtual methods
.method public final a(ZLwh1;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ix;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/me0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yandex/mobile/ads/impl/me0$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/me0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/me0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/me0$a;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/me0$a;-><init>(Lcom/yandex/mobile/ads/impl/me0;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/me0$a;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/me0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/me0$a;->b:Lcom/yandex/mobile/ads/impl/me0;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/me0;->a:Lcom/yandex/mobile/ads/impl/vx;

    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/me0$a;->b:Lcom/yandex/mobile/ads/impl/me0;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/me0$a;->e:I

    invoke-interface {p2, p1, v0}, Lcom/yandex/mobile/ads/impl/vx;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/yandex/mobile/ads/impl/bx;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ix;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->d()Lcom/yandex/mobile/ads/impl/xw;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->h()Lcom/yandex/mobile/ads/impl/yx;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yx;->d()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yx;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/yandex/mobile/ads/impl/ay$a;->b:Lcom/yandex/mobile/ads/impl/ay$a;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/yandex/mobile/ads/impl/ay$a;->c:Lcom/yandex/mobile/ads/impl/ay$a;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/yandex/mobile/ads/impl/ay$a;->d:Lcom/yandex/mobile/ads/impl/ay$a;

    :goto_2
    new-instance v3, Lcom/yandex/mobile/ads/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yx;->b()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/yandex/mobile/ads/impl/ay;-><init>(Lcom/yandex/mobile/ads/impl/ay$a;Ljava/util/List;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/zx;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yx;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/yandex/mobile/ads/impl/zx;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ay;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->g()Lcom/yandex/mobile/ads/impl/gw;

    move-result-object v4

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->b()Lcom/yandex/mobile/ads/impl/tw;

    move-result-object v5

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->e()Lcom/yandex/mobile/ads/impl/ax;

    move-result-object v6

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->f()Lcom/yandex/mobile/ads/impl/hx;

    move-result-object v7

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/ix;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/zx;Lcom/yandex/mobile/ads/impl/gw;Lcom/yandex/mobile/ads/impl/tw;Lcom/yandex/mobile/ads/impl/ax;Lcom/yandex/mobile/ads/impl/hx;)V

    return-object p1
.end method

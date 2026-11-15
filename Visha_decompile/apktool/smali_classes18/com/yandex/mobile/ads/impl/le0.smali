.class public final Lcom/yandex/mobile/ads/impl/le0;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/le0;->a:Lcom/yandex/mobile/ads/impl/vx;

    return-void
.end method


# virtual methods
.method public final a(ZLwh1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/pw;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/le0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yandex/mobile/ads/impl/le0$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/le0$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/le0$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/le0$a;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/le0$a;-><init>(Lcom/yandex/mobile/ads/impl/le0;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/le0$a;->b:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/le0$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/le0;->a:Lcom/yandex/mobile/ads/impl/vx;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/le0$a;->d:I

    invoke-interface {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/vx;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/yandex/mobile/ads/impl/bx;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/bx;->a()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/mobile/ads/impl/hw;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jw;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hw;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/yandex/mobile/ads/impl/jw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/yandex/mobile/ads/impl/pw;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/pw;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

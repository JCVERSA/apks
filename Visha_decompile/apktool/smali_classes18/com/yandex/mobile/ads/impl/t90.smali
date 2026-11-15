.class public final Lcom/yandex/mobile/ads/impl/t90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lnz3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz3;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/da0;

.field private final c:Lnk1;

.field private final d:Lnw6;

.field private final e:Lmw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmw6;"
        }
    .end annotation
.end field

.field private final f:Lgx9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx9;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lkw6;Lcom/yandex/mobile/ads/impl/da0;)V
    .locals 3

    .line 1
    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/t90;-><init>(Lkw6;Lcom/yandex/mobile/ads/impl/da0;Lnk1;)V

    return-void
.end method

.method public constructor <init>(Lkw6;Lcom/yandex/mobile/ads/impl/da0;Lnk1;)V
    .locals 3

    .line 3
    const-string v0, "feedInputEventFlow"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t90;->a:Lnz3;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t90;->b:Lcom/yandex/mobile/ads/impl/da0;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/t90;->c:Lnk1;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v0, v1}, Lsw6;->b(ZILjava/lang/Object;)Lnw6;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t90;->d:Lnw6;

    .line 9
    sget-object p1, Lcom/yandex/mobile/ads/impl/ea0$b;->a:Lcom/yandex/mobile/ads/impl/ea0$b;

    invoke-static {p1}, Lhx9;->a(Ljava/lang/Object;)Lmw6;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/t90;->e:Lmw6;

    .line 10
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/da0;->a()Lmw6;

    move-result-object p2

    new-instance v2, Lcom/yandex/mobile/ads/impl/s90;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/s90;-><init>(Lwh1;)V

    invoke-static {v0, p2, v2}, Lsz3;->s(Lnz3;Lnz3;Lu74;)Lnz3;

    move-result-object p2

    .line 11
    sget-object v0, Lkotlinx/coroutines/flow/a;->a:Lkotlinx/coroutines/flow/a$a;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/a$a;->a()Lkotlinx/coroutines/flow/a;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/yandex/mobile/ads/impl/la0;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/yandex/mobile/ads/impl/la0;-><init>(Lcom/yandex/mobile/ads/impl/ea0;Ljava/util/List;)V

    .line 13
    invoke-static {p2, p3, v0, v1}, Lsz3;->z(Lnz3;Lnk1;Lkotlinx/coroutines/flow/a;Ljava/lang/Object;)Lgx9;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t90;->f:Lgx9;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/t90;Lwh1;)Ljava/lang/Object;
    .locals 6

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/u90;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/impl/u90;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/u90;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/u90;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/u90;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/u90;-><init>(Lcom/yandex/mobile/ads/impl/t90;Lwh1;)V

    :goto_0
    iget-object p1, v0, Lcom/yandex/mobile/ads/impl/u90;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/yandex/mobile/ads/impl/u90;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_2

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/u90;->b:Lcom/yandex/mobile/ads/impl/t90;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :cond_1
    move-object v2, p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t90;->d:Lnw6;

    invoke-static {p1, v3, v4, v3}, Lnw6$a;->a(Lnw6;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t90;->e:Lmw6;

    .line 7
    :cond_4
    invoke-interface {p1}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 8
    move-object v5, v2

    check-cast v5, Lcom/yandex/mobile/ads/impl/ea0;

    .line 9
    sget-object v5, Lcom/yandex/mobile/ads/impl/ea0$d;->a:Lcom/yandex/mobile/ads/impl/ea0$d;

    .line 10
    invoke-interface {p1, v2, v5}, Lmw6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t90;->b:Lcom/yandex/mobile/ads/impl/da0;

    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/u90;->b:Lcom/yandex/mobile/ads/impl/t90;

    iput v4, v0, Lcom/yandex/mobile/ads/impl/u90;->e:I

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/da0;->b(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto :goto_3

    .line 12
    :goto_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/zk1;

    .line 13
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/zk1$a;

    if-eqz p0, :cond_6

    .line 14
    iget-object p0, v2, Lcom/yandex/mobile/ads/impl/t90;->e:Lmw6;

    .line 15
    :cond_5
    invoke-interface {p0}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 16
    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/ea0;

    .line 17
    new-instance v1, Lcom/yandex/mobile/ads/impl/ea0$a;

    move-object v5, p1

    check-cast v5, Lcom/yandex/mobile/ads/impl/zk1$a;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/zk1$a;->a()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/yandex/mobile/ads/impl/ea0$a;-><init>(Lcom/yandex/mobile/ads/impl/w3;)V

    .line 18
    invoke-interface {p0, v0, v1}, Lmw6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 19
    :cond_6
    iget-object v5, v2, Lcom/yandex/mobile/ads/impl/t90;->e:Lmw6;

    .line 20
    :cond_7
    invoke-interface {v5}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 21
    move-object p1, p0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ea0;

    .line 22
    sget-object p1, Lcom/yandex/mobile/ads/impl/ea0$c;->a:Lcom/yandex/mobile/ads/impl/ea0$c;

    .line 23
    invoke-interface {v5, p0, p1}, Lmw6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 24
    :goto_2
    iget-object p0, v2, Lcom/yandex/mobile/ads/impl/t90;->d:Lnw6;

    invoke-static {p0, v3, v4, v3}, Lnw6$a;->b(Lnw6;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 25
    :cond_8
    sget-object v1, Lzfb;->a:Lzfb;

    :goto_3
    return-object v1
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/t90;)Lnz3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t90;->a:Lnz3;

    return-object p0
.end method


# virtual methods
.method public final a()Lgx9;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx9;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t90;->c:Lnk1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/t90$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/yandex/mobile/ads/impl/t90$a;-><init>(Lcom/yandex/mobile/ads/impl/t90;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    .line 27
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t90;->f:Lgx9;

    return-object p0
.end method

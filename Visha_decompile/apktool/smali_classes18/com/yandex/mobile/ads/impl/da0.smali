.class public final Lcom/yandex/mobile/ads/impl/da0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v7;

.field private final b:Lcom/yandex/mobile/ads/impl/x90;

.field private final c:Lcom/yandex/mobile/ads/impl/ba0;

.field private final d:Lcom/yandex/mobile/ads/impl/y90;

.field private final e:Lmw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmw6;"
        }
    .end annotation
.end field

.field private final f:Lmw6;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/x90;Lcom/yandex/mobile/ads/impl/ba0;Lcom/yandex/mobile/ads/impl/y90;)V
    .locals 1

    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadDataSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadDataSource"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEnoughMemoryValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/da0;->a:Lcom/yandex/mobile/ads/impl/v7;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/da0;->b:Lcom/yandex/mobile/ads/impl/x90;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/da0;->c:Lcom/yandex/mobile/ads/impl/ba0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/da0;->d:Lcom/yandex/mobile/ads/impl/y90;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lhx9;->a(Ljava/lang/Object;)Lmw6;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/da0;->e:Lmw6;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/da0;->f:Lmw6;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/da0;Lwh1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/da0;->a(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lwh1;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/zk1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/da0$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/impl/da0$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/da0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/da0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/da0$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/da0$a;-><init>(Lcom/yandex/mobile/ads/impl/da0;Lwh1;)V

    :goto_0
    iget-object p1, v0, Lcom/yandex/mobile/ads/impl/da0$a;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/yandex/mobile/ads/impl/da0$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/da0$a;->b:Lcom/yandex/mobile/ads/impl/da0;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/da0$a;->b:Lcom/yandex/mobile/ads/impl/da0;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/da0;->b:Lcom/yandex/mobile/ads/impl/x90;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/da0;->a:Lcom/yandex/mobile/ads/impl/v7;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/da0;->f:Lmw6;

    invoke-interface {v5}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/da0$a;->b:Lcom/yandex/mobile/ads/impl/da0;

    iput v4, v0, Lcom/yandex/mobile/ads/impl/da0$a;->e:I

    invoke-virtual {p1, v2, v5, v0}, Lcom/yandex/mobile/ads/impl/x90;->a(Lcom/yandex/mobile/ads/impl/v7;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/aa0;

    .line 7
    instance-of v2, p1, Lcom/yandex/mobile/ads/impl/aa0$b;

    if-eqz v2, :cond_7

    .line 8
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/da0;->c:Lcom/yandex/mobile/ads/impl/ba0;

    check-cast p1, Lcom/yandex/mobile/ads/impl/aa0$b;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/aa0$b;->a()Lcom/yandex/mobile/ads/impl/gs0;

    move-result-object p1

    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/da0$a;->b:Lcom/yandex/mobile/ads/impl/da0;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/da0$a;->e:I

    invoke-virtual {v2, p1, v0}, Lcom/yandex/mobile/ads/impl/ba0;->a(Lcom/yandex/mobile/ads/impl/gs0;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/impl/n90;

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/da0;->e:Lmw6;

    .line 11
    :cond_6
    invoke-interface {v1}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 12
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 13
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/da0;->e:Lmw6;

    invoke-interface {v2}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v0}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-interface {v1, p1, v2}, Lmw6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    new-instance p0, Lcom/yandex/mobile/ads/impl/zk1$b;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/zk1$b;-><init>(Lcom/yandex/mobile/ads/impl/n90;)V

    goto :goto_3

    .line 16
    :cond_7
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/aa0$a;

    if-eqz p0, :cond_8

    .line 17
    new-instance p0, Lcom/yandex/mobile/ads/impl/zk1$a;

    check-cast p1, Lcom/yandex/mobile/ads/impl/aa0$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/aa0$a;->a()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/zk1$a;-><init>(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_3
    return-object p0

    .line 18
    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()Lmw6;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/da0;->f:Lmw6;

    return-object p0
.end method

.method public final b(Lwh1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/zk1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/da0;->d:Lcom/yandex/mobile/ads/impl/y90;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/y90;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/da0;->a(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/zk1$a;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->o()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/zk1$a;-><init>(Lcom/yandex/mobile/ads/impl/w3;)V

    return-object p0
.end method

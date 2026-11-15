.class public final Lcom/yandex/mobile/ads/impl/w41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pw1;

.field private final b:Lcom/yandex/mobile/ads/impl/pc1;

.field private final c:Lcom/yandex/mobile/ads/impl/lc1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 7

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v4

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/pc1;

    invoke-direct {v5, p1, p2}, Lcom/yandex/mobile/ads/impl/pc1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/lc1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/lc1;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/w41;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/pc1;Lcom/yandex/mobile/ads/impl/lc1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/pc1;Lcom/yandex/mobile/ads/impl/lc1;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkSettings"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeWrapperVideoLoader"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeWrapperVideoAssetChecker"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w41;->a:Lcom/yandex/mobile/ads/impl/pw1;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/w41;->b:Lcom/yandex/mobile/ads/impl/pc1;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/w41;->c:Lcom/yandex/mobile/ads/impl/lc1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/w41;)Lcom/yandex/mobile/ads/impl/lc1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w41;->c:Lcom/yandex/mobile/ads/impl/lc1;

    return-object p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/w41;Lcom/yandex/mobile/ads/impl/ig;Lwh1;)Ljava/lang/Object;
    .locals 6

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/v41;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yandex/mobile/ads/impl/v41;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/v41;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/v41;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/v41;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/v41;-><init>(Lcom/yandex/mobile/ads/impl/w41;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/v41;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/yandex/mobile/ads/impl/v41;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/v41;->b:Lcom/yandex/mobile/ads/impl/ig;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/yandex/mobile/ads/impl/ex0;

    if-eqz p2, :cond_3

    const-string p2, "null cannot be cast to non-null type com.monetization.ads.network.model.Asset<R of com.monetization.ads.network.model.AssetKt.castGeneric>"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    goto :goto_1

    :cond_3
    move-object p2, v4

    :goto_1
    if-nez p2, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w41;->b:Lcom/yandex/mobile/ads/impl/pc1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->c()Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object p1

    iput-object p2, v0, Lcom/yandex/mobile/ads/impl/v41;->b:Lcom/yandex/mobile/ads/impl/ig;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/v41;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/mc1;

    invoke-direct {v3, p1, p0, v4}, Lcom/yandex/mobile/ads/impl/mc1;-><init>(Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/pc1;Lwh1;)V

    invoke-static {v2, v3, v0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    move-object p1, v1

    goto :goto_3

    :cond_5
    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    .line 8
    :goto_2
    check-cast p2, Lcom/yandex/mobile/ads/impl/lb2;

    if-nez p2, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->b()Lcom/yandex/mobile/ads/impl/wu0;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p1, v4

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/ex0;->a(Lcom/yandex/mobile/ads/impl/ex0;Lcom/yandex/mobile/ads/impl/lb2;)Lcom/yandex/mobile/ads/impl/ex0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/ig;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object p1

    :goto_3
    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lwh1;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/s41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 11
    instance-of v0, p3, Lcom/yandex/mobile/ads/impl/w41$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/yandex/mobile/ads/impl/w41$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/w41$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/w41$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/w41$a;

    invoke-direct {v0, p0, p3}, Lcom/yandex/mobile/ads/impl/w41$a;-><init>(Lcom/yandex/mobile/ads/impl/w41;Lwh1;)V

    :goto_0
    iget-object p3, v0, Lcom/yandex/mobile/ads/impl/w41$a;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/yandex/mobile/ads/impl/w41$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/w41$a;->b:Lcom/yandex/mobile/ads/impl/s41;

    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 13
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/w41;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->G()Z

    move-result p1

    if-ne p1, v4, :cond_5

    .line 15
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object p1

    iput-object p2, v0, Lcom/yandex/mobile/ads/impl/w41$a;->b:Lcom/yandex/mobile/ads/impl/s41;

    iput v4, v0, Lcom/yandex/mobile/ads/impl/w41$a;->e:I

    .line 16
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object p3

    new-instance v2, Lcom/yandex/mobile/ads/impl/x41;

    invoke-direct {v2, p1, p0, v3}, Lcom/yandex/mobile/ads/impl/x41;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w41;Lwh1;)V

    invoke-static {p3, v2, v0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 17
    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_4

    return-object v3

    .line 18
    :cond_4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/yandex/mobile/ads/impl/y61;->a(Lcom/yandex/mobile/ads/impl/y61;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p0

    .line 19
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/s41;->a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/s41;

    move-result-object p2

    :cond_5
    return-object p2
.end method

.class public final Lcom/yandex/mobile/ads/impl/c02;
.super Lcom/yandex/mobile/ads/impl/f71;
.source "SourceFile"


# instance fields
.field private final e:Lcom/yandex/mobile/ads/impl/j81;

.field private final f:Lcom/yandex/mobile/ads/impl/pw1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/j81;Lcom/yandex/mobile/ads/impl/xz1;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeCompositeAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsValidator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkSettings"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p5}, Lcom/yandex/mobile/ads/impl/f71;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/o8;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c02;->e:Lcom/yandex/mobile/ads/impl/j81;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/c02;->f:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n92$a;ZI)Lcom/yandex/mobile/ads/impl/n92;
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "status"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    if-ne p2, v1, :cond_7

    .line 3
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c02;->e:Lcom/yandex/mobile/ads/impl/j81;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/j81;->e()Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/yandex/mobile/ads/impl/z81;

    invoke-static {v1, v2}, Lf81;->V(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_5

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/z81;

    .line 7
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/z81;->f()Lcom/yandex/mobile/ads/impl/na1;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/z81;->g()Lcom/yandex/mobile/ads/impl/fc1;

    move-result-object v2

    .line 9
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nativeAdValidator"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nativeVisualBlock"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/c02;->f:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v4, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ju1;->i0()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 12
    :goto_2
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/fc1;->e()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/mobile/ads/impl/ey1;

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ey1;->d()I

    move-result v5

    goto :goto_3

    :cond_4
    move v5, p4

    :goto_3
    if-eqz p3, :cond_5

    .line 15
    invoke-interface {v3, p1, v5}, Lcom/yandex/mobile/ads/impl/na1;->b(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object v5

    goto :goto_4

    .line 16
    :cond_5
    invoke-interface {v3, p1, v5}, Lcom/yandex/mobile/ads/impl/na1;->a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object v5

    .line 17
    :goto_4
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v5

    sget-object v6, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 18
    :cond_6
    :goto_5
    sget-object p2, Lcom/yandex/mobile/ads/impl/n92$a;->g:Lcom/yandex/mobile/ads/impl/n92$a;

    .line 19
    :cond_7
    new-instance p0, Lcom/yandex/mobile/ads/impl/n92;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/n92;-><init>(Lcom/yandex/mobile/ads/impl/n92$a;)V

    return-object p0
.end method

.method public final a(Landroid/content/Context;IZZ)Lkotlin/Pair;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZ)",
            "Lkotlin/Pair<",
            "Lcom/yandex/mobile/ads/impl/n92$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c02;->f:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lkotlin/Pair;

    sget-object p1, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/f71;->a(Landroid/content/Context;IZZ)Lkotlin/Pair;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.class public final Lcom/yandex/mobile/ads/impl/g91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gk0;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/i91;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/s41;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/sj0;

.field final synthetic d:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i91;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g91;->a:Lcom/yandex/mobile/ads/impl/i91;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g91;->b:Lcom/yandex/mobile/ads/impl/s41;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/g91;->c:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/g91;->d:Lcr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "images"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g91;->a:Lcom/yandex/mobile/ads/impl/i91;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/i91;->a(Lcom/yandex/mobile/ads/impl/i91;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->q:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g91;->b:Lcom/yandex/mobile/ads/impl/s41;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/s41;->b()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->E()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/c91;->c:Lcom/yandex/mobile/ads/impl/c91;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/c91;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->E()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/c91;->d:Lcom/yandex/mobile/ads/impl/c91;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/c91;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g91;->a:Lcom/yandex/mobile/ads/impl/i91;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/i91;->c(Lcom/yandex/mobile/ads/impl/i91;)Lcom/yandex/mobile/ads/impl/ck0;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g91;->b:Lcom/yandex/mobile/ads/impl/s41;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v3, "nativeAdBlock"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/g41;

    .line 11
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object v4

    .line 12
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    invoke-virtual {v1, v4, p1}, Lcom/yandex/mobile/ads/impl/ck0;->a(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g91;->a:Lcom/yandex/mobile/ads/impl/i91;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/i91;->b(Lcom/yandex/mobile/ads/impl/i91;)Lcom/yandex/mobile/ads/impl/bh;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g91;->b:Lcom/yandex/mobile/ads/impl/s41;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/g41;

    .line 18
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 20
    invoke-virtual {v1, v3, p1}, Lcom/yandex/mobile/ads/impl/bh;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/g41;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 22
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g91;->c:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/sj0;->a(Ljava/util/Map;)V

    .line 23
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g91;->d:Lcr0;

    invoke-interface {p1}, Lcr0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g91;->d:Lcr0;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

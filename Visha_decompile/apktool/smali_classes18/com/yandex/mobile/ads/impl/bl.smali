.class public final Lcom/yandex/mobile/ads/impl/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k02;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/k02;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k02;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/bl;->a:Lcom/yandex/mobile/ads/impl/k02;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Lcom/yandex/mobile/ads/impl/xj0;)Lcom/yandex/mobile/ads/impl/j02;
    .locals 6

    const-string v0, "viewRect"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->e()Lcom/yandex/mobile/ads/impl/r02;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/r02;->c()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/j02;

    check-cast v1, Lcom/yandex/mobile/ads/impl/j02;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bl;->a:Lcom/yandex/mobile/ads/impl/k02;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "first"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "second"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "imageSize"

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "viewSize"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/n02;->a(Lcom/yandex/mobile/ads/impl/j02;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v3

    invoke-static {v2, p1, v0}, Lcom/yandex/mobile/ads/impl/n02;->a(Lcom/yandex/mobile/ads/impl/j02;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v4

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v5, v3, v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    cmpg-float v5, v3, v4

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/j02;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/j02;->a()I

    move-result v4

    if-le v3, v4, :cond_4

    goto :goto_0

    :cond_3
    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :cond_4
    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_5
    :goto_2
    check-cast v1, Lcom/yandex/mobile/ads/impl/j02;

    :cond_6
    return-object v1
.end method

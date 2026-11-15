.class public final Lcom/yandex/mobile/ads/impl/sf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uf1;

.field private final b:Lcom/yandex/mobile/ads/impl/tf1;

.field private final c:Lcom/yandex/mobile/ads/impl/rf1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/uf1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/uf1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/tf1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/tf1;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/rf1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/rf1;-><init>()V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/sf1;-><init>(Lcom/yandex/mobile/ads/impl/uf1;Lcom/yandex/mobile/ads/impl/tf1;Lcom/yandex/mobile/ads/impl/rf1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uf1;Lcom/yandex/mobile/ads/impl/tf1;Lcom/yandex/mobile/ads/impl/rf1;)V
    .locals 1

    .line 5
    const-string v0, "overlappingViewsProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlappingRectsProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlappingAreaEvaluator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sf1;->a:Lcom/yandex/mobile/ads/impl/uf1;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sf1;->b:Lcom/yandex/mobile/ads/impl/tf1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sf1;->c:Lcom/yandex/mobile/ads/impl/rf1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewRect"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->t0()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sf1;->a:Lcom/yandex/mobile/ads/impl/uf1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/uf1;->a(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sf1;->b:Lcom/yandex/mobile/ads/impl/tf1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlappingViews"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Lwn8;->d(II)I

    move-result v3

    invoke-static {v3, v5}, Lwn8;->g(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Lwn8;->d(II)I

    move-result v3

    invoke-static {v3, v5}, Lwn8;->g(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Lwn8;->d(II)I

    move-result v3

    invoke-static {v3, v5}, Lwn8;->g(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Lwn8;->d(II)I

    move-result v3

    invoke-static {v3, v5}, Lwn8;->g(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_5

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sf1;->c:Lcom/yandex/mobile/ads/impl/rf1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/rf1;->a(Landroid/graphics/Rect;Ljava/util/List;)I

    move-result v2

    :cond_6
    return v2
.end method

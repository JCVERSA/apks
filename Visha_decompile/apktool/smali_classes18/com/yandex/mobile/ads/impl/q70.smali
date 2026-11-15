.class public final Lcom/yandex/mobile/ads/impl/q70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yh2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/yh2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/yh2;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/q70;-><init>(Lcom/yandex/mobile/ads/impl/yh2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yh2;)V
    .locals 1

    .line 3
    const-string v0, "viewableChecker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q70;->a:Lcom/yandex/mobile/ads/impl/yh2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/p70;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/yandex/mobile/ads/impl/yh2$a;",
            ">(TT;)",
            "Lcom/yandex/mobile/ads/impl/p70;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q70;->a:Lcom/yandex/mobile/ads/impl/yh2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/yh2;->a(Landroid/view/View;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;)I

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "getContext(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v2}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v3}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v4}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    sub-float v1, v4, v2

    sub-float v5, p1, v3

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    cmpl-float v1, v5, v6

    if-lez v1, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/p70;

    invoke-direct {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/p70;-><init>(ILandroid/graphics/RectF;)V

    return-object p1
.end method

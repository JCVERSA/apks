.class public final Lcom/yandex/mobile/ads/impl/o02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/si;

.field private final b:Lcom/yandex/mobile/ads/impl/bl;

.field private final c:Lcom/yandex/mobile/ads/impl/p02;

.field private final d:Lcom/yandex/mobile/ads/impl/xj0;

.field private final e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/si;Lcom/yandex/mobile/ads/impl/bl;Lcom/yandex/mobile/ads/impl/p02;Lcom/yandex/mobile/ads/impl/xj0;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "axisBackgroundColorProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bestSmartCenterProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartCenterMatrixScaler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValue"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o02;->a:Lcom/yandex/mobile/ads/impl/si;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o02;->b:Lcom/yandex/mobile/ads/impl/bl;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/o02;->c:Lcom/yandex/mobile/ads/impl/p02;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/o02;->d:Lcom/yandex/mobile/ads/impl/xj0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/o02;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/o02;Landroid/graphics/RectF;Landroid/widget/ImageView;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewRect"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o02;->a:Lcom/yandex/mobile/ads/impl/si;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o02;->d:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "imageValue"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/xj0;->e()Lcom/yandex/mobile/ads/impl/r02;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r02;->a()Lcom/yandex/mobile/ads/impl/ui;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ui;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o02;->a:Lcom/yandex/mobile/ads/impl/si;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o02;->d:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/impl/si;->a(Landroid/graphics/RectF;Lcom/yandex/mobile/ads/impl/xj0;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o02;->d:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xj0;->e()Lcom/yandex/mobile/ads/impl/r02;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r02;->b()Lcom/yandex/mobile/ads/impl/j02;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o02;->c:Lcom/yandex/mobile/ads/impl/p02;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o02;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2, p0, v0, p1}, Lcom/yandex/mobile/ads/impl/p02;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/j02;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o02;->c:Lcom/yandex/mobile/ads/impl/p02;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o02;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, p0, v0}, Lcom/yandex/mobile/ads/impl/p02;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/j02;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o02;->b:Lcom/yandex/mobile/ads/impl/bl;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o02;->d:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/bl;->a(Landroid/graphics/RectF;Lcom/yandex/mobile/ads/impl/xj0;)Lcom/yandex/mobile/ads/impl/j02;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o02;->c:Lcom/yandex/mobile/ads/impl/p02;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o02;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, p0, p1}, Lcom/yandex/mobile/ads/impl/p02;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/j02;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/o02;Landroid/graphics/RectF;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/o02;->a(Lcom/yandex/mobile/ads/impl/o02;Landroid/graphics/RectF;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sub-int v0, p4, p2

    sub-int/2addr p8, p6

    const/4 p6, 0x1

    const/4 v1, 0x0

    if-ne v0, p8, :cond_3

    sub-int p8, p5, p3

    sub-int/2addr p9, p7

    if-eq p8, p9, :cond_2

    goto :goto_1

    :cond_2
    move p7, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p7, p6

    :goto_2
    if-eq p5, p3, :cond_4

    if-eq p2, p4, :cond_4

    goto :goto_3

    :cond_4
    move p6, v1

    :goto_3
    if-eqz p7, :cond_5

    if-eqz p6, :cond_5

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x0

    invoke-direct {p2, p5, p5, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p3, Lqod;

    invoke-direct {p3, p0, p2, p1}, Lqod;-><init>(Lcom/yandex/mobile/ads/impl/o02;Landroid/graphics/RectF;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

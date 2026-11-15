.class public final Lcom/yandex/mobile/ads/impl/m02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p02;

.field private final b:Lcom/yandex/mobile/ads/impl/si;

.field private final c:Lcom/yandex/mobile/ads/impl/bl;

.field private d:Lcom/yandex/mobile/ads/impl/o02;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/p02;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/p02;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m02;->a:Lcom/yandex/mobile/ads/impl/p02;

    new-instance v0, Lcom/yandex/mobile/ads/impl/si;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/si;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m02;->b:Lcom/yandex/mobile/ads/impl/si;

    new-instance v0, Lcom/yandex/mobile/ads/impl/bl;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/bl;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m02;->c:Lcom/yandex/mobile/ads/impl/bl;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 7

    .line 3
    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValue"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/o02;

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m02;->b:Lcom/yandex/mobile/ads/impl/si;

    .line 6
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/m02;->c:Lcom/yandex/mobile/ads/impl/bl;

    .line 7
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/m02;->a:Lcom/yandex/mobile/ads/impl/p02;

    move-object v1, v0

    move-object v5, p3

    move-object v6, p1

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/o02;-><init>(Lcom/yandex/mobile/ads/impl/si;Lcom/yandex/mobile/ads/impl/bl;Lcom/yandex/mobile/ads/impl/p02;Lcom/yandex/mobile/ads/impl/xj0;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m02;->d:Lcom/yandex/mobile/ads/impl/o02;

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p3, -0x1

    if-eq p0, p3, :cond_0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p0, p3, :cond_0

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p3, -0x2

    if-eq p0, p3, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p0, p3, :cond_1

    .line 14
    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m02;->d:Lcom/yandex/mobile/ads/impl/o02;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

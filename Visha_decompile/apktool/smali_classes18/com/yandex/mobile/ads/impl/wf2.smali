.class public final Lcom/yandex/mobile/ads/impl/wf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hi1$b;


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/fz1;

.field private b:Lcom/yandex/mobile/ads/impl/fz1;

.field private c:Landroid/view/TextureView;

.field private d:Lcom/yandex/mobile/ads/impl/yf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/TextureView;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wf2;->c:Landroid/view/TextureView;

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wf2;->d:Lcom/yandex/mobile/ads/impl/yf2;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 19
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/cg2;)V
    .locals 3

    .line 1
    const-string v0, "videoSize"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lcom/yandex/mobile/ads/impl/cg2;->b:I

    .line 3
    iget v1, p1, Lcom/yandex/mobile/ads/impl/cg2;->e:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 4
    invoke-static {v0}, Ls86;->c(F)I

    move-result v0

    .line 5
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/fz1;

    iget p1, p1, Lcom/yandex/mobile/ads/impl/cg2;->c:I

    invoke-direct {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/wf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wf2;->d:Lcom/yandex/mobile/ads/impl/yf2;

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wf2;->c:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 9
    new-instance v2, Lcom/yandex/mobile/ads/impl/xf2;

    invoke-direct {v2, p1, v1}, Lcom/yandex/mobile/ads/impl/xf2;-><init>(Lcom/yandex/mobile/ads/impl/fz1;Lcom/yandex/mobile/ads/impl/fz1;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/xf2;->a(Lcom/yandex/mobile/ads/impl/yf2;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yf2;)V
    .locals 1

    .line 12
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wf2;->d:Lcom/yandex/mobile/ads/impl/yf2;

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wf2;->c:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 14
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/wf2;->d:Lcom/yandex/mobile/ads/impl/yf2;

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/wf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wf2;->c:Landroid/view/TextureView;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/xf2;

    invoke-direct {v1, v0, p2}, Lcom/yandex/mobile/ads/impl/xf2;-><init>(Lcom/yandex/mobile/ads/impl/fz1;Lcom/yandex/mobile/ads/impl/fz1;)V

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/xf2;->a(Lcom/yandex/mobile/ads/impl/yf2;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

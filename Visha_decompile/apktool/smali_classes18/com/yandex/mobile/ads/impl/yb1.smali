.class public final Lcom/yandex/mobile/ads/impl/yb1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/af2;

.field private final b:Landroid/view/TextureView;

.field private final c:Lcom/yandex/mobile/ads/impl/qa1;

.field private d:Lcom/yandex/mobile/ads/impl/gb1;

.field private e:Lcom/yandex/mobile/ads/impl/su0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/af2;Landroid/view/TextureView;Lcom/yandex/mobile/ads/impl/qa1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholderView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textureView"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionViewsContainer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yb1;->a:Lcom/yandex/mobile/ads/impl/af2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yb1;->b:Landroid/view/TextureView;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yb1;->c:Lcom/yandex/mobile/ads/impl/qa1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ry1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ry1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yb1;->e:Lcom/yandex/mobile/ads/impl/su0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/qa1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yb1;->c:Lcom/yandex/mobile/ads/impl/qa1;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/af2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yb1;->a:Lcom/yandex/mobile/ads/impl/af2;

    return-object p0
.end method

.method public final c()Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yb1;->b:Landroid/view/TextureView;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yb1;->d:Lcom/yandex/mobile/ads/impl/gb1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gb1;->b()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yb1;->d:Lcom/yandex/mobile/ads/impl/gb1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gb1;->a()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yb1;->e:Lcom/yandex/mobile/ads/impl/su0;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/su0;->a(II)Lcom/yandex/mobile/ads/impl/su0$a;

    move-result-object p1

    iget p2, p1, Lcom/yandex/mobile/ads/impl/su0$a;->a:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/su0$a;->b:I

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/lm1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/lm1;-><init>(F)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yb1;->e:Lcom/yandex/mobile/ads/impl/su0;

    return-void
.end method

.method public final setOnAttachStateChangeListener(Lcom/yandex/mobile/ads/impl/gb1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yb1;->d:Lcom/yandex/mobile/ads/impl/gb1;

    return-void
.end method

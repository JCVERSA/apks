.class public final Lcom/yandex/mobile/ads/impl/kx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/wj0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wj0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wj0;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/kx0;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/wj0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/wj0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/wj0;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSubViewBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kx0;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kx0;->b:Lcom/yandex/mobile/ads/impl/wj0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ox0;)Lcom/yandex/mobile/ads/impl/zv1;
    .locals 3

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediaViewRenderController"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kx0;->b:Lcom/yandex/mobile/ads/impl/wj0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/w80;->e:Lcom/yandex/mobile/ads/impl/w80;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/fk0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kx0;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v0, v2, p2, p0}, Lcom/yandex/mobile/ads/impl/fk0;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/zv1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/wg2;

    invoke-direct {p2, v0}, Lcom/yandex/mobile/ads/impl/wg2;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/yandex/mobile/ads/impl/zv1;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/wg2;)V

    return-object p0
.end method

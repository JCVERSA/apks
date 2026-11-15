.class public final Lcom/yandex/mobile/ads/impl/bk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sj0;

.field private final b:Lcom/yandex/mobile/ads/impl/ul;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sj0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ul;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ul;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/bk0;-><init>(Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ul;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ul;)V
    .locals 1

    .line 3
    const-string v0, "imageProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapComparatorFactory"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bk0;->a:Lcom/yandex/mobile/ads/impl/sj0;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bk0;->b:Lcom/yandex/mobile/ads/impl/ul;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lcom/yandex/mobile/ads/impl/xj0;)Z
    .locals 2

    const-string v0, "imageValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bk0;->a:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/impl/sj0;->b(Lcom/yandex/mobile/ads/impl/xj0;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bk0;->a:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/impl/sj0;->a(Lcom/yandex/mobile/ads/impl/xj0;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bk0;->b:Lcom/yandex/mobile/ads/impl/ul;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "drawable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/yandex/mobile/ads/impl/vl;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/vl;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/d40;

    new-instance p2, Lcom/yandex/mobile/ads/impl/mt1;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/mt1;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/wl;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/wl;-><init>()V

    invoke-direct {p0, p2, v1}, Lcom/yandex/mobile/ads/impl/d40;-><init>(Lcom/yandex/mobile/ads/impl/mt1;Lcom/yandex/mobile/ads/impl/wl;)V

    :goto_0
    invoke-interface {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/tl;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

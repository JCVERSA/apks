.class public final Lcom/yandex/mobile/ads/impl/hi2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sf1;

.field private final b:Lcom/yandex/mobile/ads/impl/ii2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sf1;Lcom/yandex/mobile/ads/impl/ii2;)V
    .locals 1

    const-string v0, "overlappingAreaProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleRectProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hi2;->a:Lcom/yandex/mobile/ads/impl/sf1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hi2;->b:Lcom/yandex/mobile/ads/impl/ii2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->d(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hi2;->b:Lcom/yandex/mobile/ads/impl/ii2;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/ii2;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hi2;->a:Lcom/yandex/mobile/ads/impl/sf1;

    invoke-virtual {p0, p1, v1}, Lcom/yandex/mobile/ads/impl/sf1;->a(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result p0

    mul-int/2addr v0, v2

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

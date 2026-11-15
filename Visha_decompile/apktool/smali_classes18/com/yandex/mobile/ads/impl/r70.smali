.class public final Lcom/yandex/mobile/ads/impl/r70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tq0;


# instance fields
.field private final b:I

.field private final c:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/r70;->b:I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/r70;->c:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    sget-object v0, Lhz9;->a:Lhz9;

    iget v0, p0, Lcom/yandex/mobile/ads/impl/r70;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r70;->c:Landroid/graphics/RectF;

    const-string v1, "format(...)"

    if-eqz p0, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x4

    const-string v3, "{x:%s,y:%s,width:%s,height:%s}"

    invoke-static {p0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    const-string v2, "exposure:{exposedPercentage:%s,visibleRectangle:%s,occlusionRectangles:[]}"

    invoke-static {p0, v0, v2, v1}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

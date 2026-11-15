.class public final Lcom/yandex/mobile/ads/impl/kw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a51;

.field private final b:Lcom/yandex/mobile/ads/impl/yu0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/a51;Lcom/yandex/mobile/ads/impl/yu0;)V
    .locals 1

    const-string v0, "nativeAdAssets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdContainerViewProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaAspectRatioProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kw0;->a:Lcom/yandex/mobile/ads/impl/a51;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kw0;->b:Lcom/yandex/mobile/ads/impl/yu0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kw0;->a:Lcom/yandex/mobile/ads/impl/a51;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kw0;->b:Lcom/yandex/mobile/ads/impl/yu0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yu0;->a()Ljava/lang/Float;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v1, 0x3fe38e39

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance v1, Lcom/yandex/mobile/ads/impl/lm1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/su0$a;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/su0$a;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/yandex/mobile/ads/impl/lm1;-><init>(FLcom/yandex/mobile/ads/impl/su0$a;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/pu0;

    const-string v2, "view"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v3, v2}, Lcom/yandex/mobile/ads/impl/pu0;-><init>(Landroid/view/View;FLandroid/content/Context;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/er;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/su0;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    invoke-direct {p1, v2}, Lcom/yandex/mobile/ads/impl/er;-><init>([Lcom/yandex/mobile/ads/impl/su0;)V

    invoke-virtual {v0, p1}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lcom/yandex/mobile/ads/impl/su0;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.class public final Lcom/yandex/mobile/ads/impl/xu0;
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

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xu0;->a:Lcom/yandex/mobile/ads/impl/a51;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xu0;->b:Lcom/yandex/mobile/ads/impl/yu0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xu0;->a:Lcom/yandex/mobile/ads/impl/a51;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu0;->b:Lcom/yandex/mobile/ads/impl/yu0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yu0;->a()Ljava/lang/Float;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/lm1;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    new-instance v1, Lcom/yandex/mobile/ads/impl/su0$a;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/su0$a;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/lm1;-><init>(FLcom/yandex/mobile/ads/impl/su0$a;)V

    invoke-virtual {p1, v0}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lcom/yandex/mobile/ads/impl/su0;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

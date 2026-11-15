.class public final Lcom/yandex/mobile/ads/impl/i31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o31;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/o31;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o31;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/i31;->a:Lcom/yandex/mobile/ads/impl/o31;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;)Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;)",
            "Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValues"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i31;->a:Lcom/yandex/mobile/ads/impl/o31;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/o31;->a(Ljava/util/List;)D

    move-result-wide p0

    new-instance p2, Lcom/yandex/mobile/ads/impl/lm1;

    double-to-float p0, p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/su0$a;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/su0$a;-><init>()V

    invoke-direct {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/lm1;-><init>(FLcom/yandex/mobile/ads/impl/su0$a;)V

    invoke-virtual {v0, p2}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lcom/yandex/mobile/ads/impl/su0;)V

    return-object v0
.end method

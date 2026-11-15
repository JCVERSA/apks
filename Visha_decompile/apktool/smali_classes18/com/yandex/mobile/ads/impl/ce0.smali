.class public final Lcom/yandex/mobile/ads/impl/ce0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yd0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kr0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/zr;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kr0;Lcom/yandex/mobile/ads/impl/zr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/kr0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/zr;",
            ")V"
        }
    .end annotation

    const-string v0, "layoutDesignsController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ce0;->a:Lcom/yandex/mobile/ads/impl/kr0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ce0;->b:Lcom/yandex/mobile/ads/impl/zr;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ce0;->a:Lcom/yandex/mobile/ads/impl/kr0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/kr0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce0;->b:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce0;->a:Lcom/yandex/mobile/ads/impl/kr0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kr0;->b()V

    return-void
.end method

.class public final Lcom/yandex/mobile/ads/nativeads/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/CustomClickHandlerEventListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/eu;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/eu;)V
    .locals 1

    const-string v0, "coreListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/d;->a:Lcom/yandex/mobile/ads/impl/eu;

    return-void
.end method


# virtual methods
.method public final onLeftApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/d;->a:Lcom/yandex/mobile/ads/impl/eu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/eu;->onLeftApplication()V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/d;->a:Lcom/yandex/mobile/ads/impl/eu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/eu;->onReturnedToApplication()V

    return-void
.end method

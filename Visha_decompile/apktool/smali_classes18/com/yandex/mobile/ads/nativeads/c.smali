.class public final Lcom/yandex/mobile/ads/nativeads/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/du;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/CustomClickHandler;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/CustomClickHandler;)V
    .locals 1

    const-string v0, "customClickHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Lcom/yandex/mobile/ads/nativeads/CustomClickHandler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/eu;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/d;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/nativeads/d;-><init>(Lcom/yandex/mobile/ads/impl/eu;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Lcom/yandex/mobile/ads/nativeads/CustomClickHandler;

    invoke-interface {p0, p1, v0}, Lcom/yandex/mobile/ads/nativeads/CustomClickHandler;->handleCustomClick(Ljava/lang/String;Lcom/yandex/mobile/ads/nativeads/CustomClickHandlerEventListener;)V

    return-void
.end method

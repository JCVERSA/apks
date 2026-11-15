.class public final Lcom/yandex/mobile/ads/impl/qt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yp0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/zp0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/zp0;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/qt;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/zp0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/zp0;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsLoadControllerFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/zp0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)Lcom/yandex/mobile/ads/impl/yp0;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qt;->a:Lcom/yandex/mobile/ads/impl/yp0;

    .line 6
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p0;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt;->a:Lcom/yandex/mobile/ads/impl/yp0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yp0;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/om2;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt;->a:Lcom/yandex/mobile/ads/impl/yp0;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/yp0;->a(Lcom/yandex/mobile/ads/impl/om2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 1

    .line 2
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt;->a:Lcom/yandex/mobile/ads/impl/yp0;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/yp0;->a(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method

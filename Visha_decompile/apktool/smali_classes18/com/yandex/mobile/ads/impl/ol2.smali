.class public final Lcom/yandex/mobile/ads/impl/ol2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ie;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gd;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/gd;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gd;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ol2;-><init>(Lcom/yandex/mobile/ads/impl/gd;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gd;)V
    .locals 1

    .line 3
    const-string v0, "easyIntegrationInitializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ol2;->a:Lcom/yandex/mobile/ads/impl/gd;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ol2;->a:Lcom/yandex/mobile/ads/impl/gd;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/gd;->a(Landroid/content/Context;)V

    return-void
.end method

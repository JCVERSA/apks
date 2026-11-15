.class public final Lcom/yandex/mobile/ads/impl/nn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ff1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vn0;

.field private final b:Lcom/yandex/mobile/ads/impl/go0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vn0;Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/a00;)V
    .locals 1

    const-string v0, "instreamInteractionTracker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customAdClickHandler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nn0;->a:Lcom/yandex/mobile/ads/impl/vn0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nn0;->b:Lcom/yandex/mobile/ads/impl/go0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/mn0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nn0;->a:Lcom/yandex/mobile/ads/impl/vn0;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/mn0;-><init>(Lcom/yandex/mobile/ads/impl/vn0;)V

    const/4 p0, 0x0

    throw p0
.end method

.class public final Lcom/yandex/mobile/ads/impl/s91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v9;

.field private final b:Lcom/yandex/mobile/ads/impl/f42;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/f42;)V
    .locals 1

    const-string v0, "adTracker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUrlHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s91;->a:Lcom/yandex/mobile/ads/impl/v9;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s91;->b:Lcom/yandex/mobile/ads/impl/f42;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/tp1;)Lcom/yandex/mobile/ads/impl/r91;
    .locals 2

    const-string v0, "clickReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/r91;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s91;->a:Lcom/yandex/mobile/ads/impl/v9;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s91;->b:Lcom/yandex/mobile/ads/impl/f42;

    invoke-direct {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/r91;-><init>(Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/f42;Lcom/yandex/mobile/ads/impl/tp1;)V

    return-object v0
.end method

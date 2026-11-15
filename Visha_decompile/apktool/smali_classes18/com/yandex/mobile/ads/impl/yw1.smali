.class public final Lcom/yandex/mobile/ads/impl/yw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i92;

.field private final b:Lcom/yandex/mobile/ads/impl/k92;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/i92;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/i92;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/k92;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/k92;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/yw1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/i92;Lcom/yandex/mobile/ads/impl/k92;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/i92;Lcom/yandex/mobile/ads/impl/k92;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "indicatorController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "logController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yw1;->a:Lcom/yandex/mobile/ads/impl/i92;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yw1;->b:Lcom/yandex/mobile/ads/impl/k92;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yw1;->b:Lcom/yandex/mobile/ads/impl/k92;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k92;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yw1;->a:Lcom/yandex/mobile/ads/impl/i92;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i92;->a()V

    return-void
.end method

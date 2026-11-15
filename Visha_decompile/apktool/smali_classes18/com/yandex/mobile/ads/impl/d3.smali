.class public final Lcom/yandex/mobile/ads/impl/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p2;

.field private final b:Lcom/yandex/mobile/ads/impl/kg2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/p2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreak"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d3;->a:Lcom/yandex/mobile/ads/impl/p2;

    new-instance p2, Lcom/yandex/mobile/ads/impl/kg2;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/kg2;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d3;->b:Lcom/yandex/mobile/ads/impl/kg2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d3;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d3;->a:Lcom/yandex/mobile/ads/impl/p2;

    const-string v1, "breakEnd"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d3;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d3;->a:Lcom/yandex/mobile/ads/impl/p2;

    const-string v1, "error"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d3;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d3;->a:Lcom/yandex/mobile/ads/impl/p2;

    const-string v1, "breakStart"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

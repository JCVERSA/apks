.class public final Lcom/yandex/mobile/ads/impl/pa2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jn1;

.field private final b:Lcom/yandex/mobile/ads/impl/hq;

.field private final c:Lcom/yandex/mobile/ads/impl/kx1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/jn1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jn1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/bq1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/bq1;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/hq;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/hq;-><init>(Lcom/yandex/mobile/ads/impl/bq1;)V

    .line 4
    new-instance v3, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    .line 5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/pa2;-><init>(Lcom/yandex/mobile/ads/impl/jn1;Lcom/yandex/mobile/ads/impl/bq1;Lcom/yandex/mobile/ads/impl/hq;Lcom/yandex/mobile/ads/impl/kx1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jn1;Lcom/yandex/mobile/ads/impl/bq1;Lcom/yandex/mobile/ads/impl/hq;Lcom/yandex/mobile/ads/impl/kx1;)V
    .locals 1

    .line 6
    const-string v0, "randomGenerator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHelper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "cmpRequestConfigurator"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sensitiveModeChecker"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pa2;->a:Lcom/yandex/mobile/ads/impl/jn1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pa2;->b:Lcom/yandex/mobile/ads/impl/hq;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pa2;->c:Lcom/yandex/mobile/ads/impl/kx1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/pa2;)Lcom/yandex/mobile/ads/impl/hq;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pa2;->b:Lcom/yandex/mobile/ads/impl/hq;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/pa2;)Lcom/yandex/mobile/ads/impl/jn1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pa2;->a:Lcom/yandex/mobile/ads/impl/jn1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/pa2;)Lcom/yandex/mobile/ads/impl/kx1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pa2;->c:Lcom/yandex/mobile/ads/impl/kx1;

    return-object p0
.end method

.class public final Lcom/yandex/mobile/ads/impl/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dw;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/pp1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/s01;Lcom/yandex/mobile/ads/impl/pp1;)V
    .locals 1

    const-string v0, "metricaReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportDataWrapper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ew;->a:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ew;->b:Lcom/yandex/mobile/ads/impl/pp1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/cw;)V
    .locals 5

    const-string v0, "eventType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ew;->b:Lcom/yandex/mobile/ads/impl/pp1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/cw;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "log_type"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->V:Lcom/yandex/mobile/ads/impl/op1$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ew;->b:Lcom/yandex/mobile/ads/impl/pp1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ew;->b:Lcom/yandex/mobile/ads/impl/pp1;

    const-string v3, "reportType"

    const-string v4, "reportData"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ew;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method

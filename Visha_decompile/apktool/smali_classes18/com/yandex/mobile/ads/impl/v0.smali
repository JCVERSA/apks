.class public final Lcom/yandex/mobile/ads/impl/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/wq;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wq;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wq;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/v0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wq;)V
    .locals 1

    .line 3
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v0;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/v0;->b:Lcom/yandex/mobile/ads/impl/wq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/c1;)V
    .locals 5

    .line 3
    const-string v0, "adActivityData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v0;->b:Lcom/yandex/mobile/ads/impl/wq;

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1;->c()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1;->b()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/op1;

    .line 9
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->c0:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 10
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v2

    .line 11
    const-string v3, "reportType"

    const-string v4, "reportData"

    invoke-static {p1, v1, v3, v2, v4}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p1

    .line 12
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v0;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "throwable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v0;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v0, "Failed to register ActivityResult"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.class public final Lcom/yandex/mobile/ads/impl/ef1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/cl;

.field private final c:Lcom/yandex/mobile/ads/impl/ch1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/cl;Lcom/yandex/mobile/ads/impl/ch1;)V
    .locals 1

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportDataProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "phasesParametersProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ef1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ef1;->b:Lcom/yandex/mobile/ads/impl/cl;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ef1;->c:Lcom/yandex/mobile/ads/impl/ch1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dl;)V
    .locals 5

    .line 1
    const-string v0, "reason"

    const-string v1, "Cannot load bidder token. Token generation failed"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ef1;->b:Lcom/yandex/mobile/ads/impl/cl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/cl;->a(Lcom/yandex/mobile/ads/impl/dl;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$c;->d:Lcom/yandex/mobile/ads/impl/op1$c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "status"

    invoke-virtual {p1, v0, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "failure_reason"

    invoke-virtual {p1, v1, v0}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ef1;->c:Lcom/yandex/mobile/ads/impl/ch1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ch1;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "durations"

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/op1;

    .line 7
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->W:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 8
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v2

    .line 9
    const-string v3, "reportType"

    const-string v4, "reportData"

    invoke-static {p1, v1, v3, v2, v4}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p1

    .line 10
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ef1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/dl;Lcom/yandex/mobile/ads/impl/hu1;)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ef1;->b:Lcom/yandex/mobile/ads/impl/cl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/cl;->a(Lcom/yandex/mobile/ads/impl/dl;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$c;->c:Lcom/yandex/mobile/ads/impl/op1$c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ef1;->c:Lcom/yandex/mobile/ads/impl/ch1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ch1;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "durations"

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hu1;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "stub_reason"

    invoke-virtual {p1, p2, v0}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance p2, Lcom/yandex/mobile/ads/impl/op1;

    .line 17
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->W:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 18
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    .line 19
    const-string v2, "reportType"

    const-string v3, "reportData"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p1

    .line 20
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 21
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ef1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method

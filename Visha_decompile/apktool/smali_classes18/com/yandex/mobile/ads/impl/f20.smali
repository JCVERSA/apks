.class public final Lcom/yandex/mobile/ads/impl/f20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/l30;

.field private final c:Lcom/yandex/mobile/ads/impl/g20;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/l30;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/l30;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/g20;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/g20;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/f20;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/l30;Lcom/yandex/mobile/ads/impl/g20;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/l30;Lcom/yandex/mobile/ads/impl/g20;)V
    .locals 1

    .line 4
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divParsingEnvironmentFactory"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divDataFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f20;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f20;->b:Lcom/yandex/mobile/ads/impl/l30;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/f20;->c:Lcom/yandex/mobile/ads/impl/g20;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/yandex/div2/DivData;
    .locals 5

    const-string v0, "card"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/f20;->b:Lcom/yandex/mobile/ads/impl/l30;

    sget-object v3, Llx7;->a:Llx7;

    const-string v4, "LOG"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "logger"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lwn2;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v4, v1}, Lwn2;-><init>(Llx7;Liq0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Liga;->e(Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/f20;->c:Lcom/yandex/mobile/ads/impl/g20;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "environment"

    invoke-static {v2, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/yandex/div2/DivData;->j:Lcom/yandex/div2/DivData$a;

    invoke-virtual {p2, v2, p1}, Lcom/yandex/div2/DivData$a;->a(Lhx7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivData;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f20;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string p2, "Failed to create DivData"

    invoke-interface {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

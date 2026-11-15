.class public final Lcom/yandex/mobile/ads/impl/sk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tk0;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tk0;)V
    .locals 1

    const-string v0, "impressionReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sk0;->a:Lcom/yandex/mobile/ads/impl/tk0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk0;->b:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk0;->c:Z

    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk0;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk0;->b:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk0;->a:Lcom/yandex/mobile/ads/impl/tk0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->x:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/tk0;->a(Lcom/yandex/mobile/ads/impl/op1$b;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk0;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk0;->c:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "failure_tracked"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk0;->a:Lcom/yandex/mobile/ads/impl/tk0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->y:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/tk0;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

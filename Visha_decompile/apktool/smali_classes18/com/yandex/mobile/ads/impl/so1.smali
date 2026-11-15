.class public final Lcom/yandex/mobile/ads/impl/so1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/v9;

.field private final c:Lcom/yandex/mobile/ads/impl/ro1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Ljava/util/List;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/v9;

    invoke-direct {v6, p1, p3}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 2
    new-instance v7, Lcom/yandex/mobile/ads/impl/ro1;

    invoke-direct {v7, p1, p3, p2, p4}, Lcom/yandex/mobile/ads/impl/ro1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/s9;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/so1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Ljava/util/List;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/ro1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Ljava/util/List;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/ro1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/s9;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/v9;",
            "Lcom/yandex/mobile/ads/impl/ro1;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStructureType"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adTracker"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderReporter"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/so1;->a:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/so1;->b:Lcom/yandex/mobile/ads/impl/v9;

    .line 8
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/so1;->c:Lcom/yandex/mobile/ads/impl/ro1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/so1;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/so1;->b:Lcom/yandex/mobile/ads/impl/v9;

    sget-object v3, Lcom/yandex/mobile/ads/impl/z62;->i:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/so1;->c:Lcom/yandex/mobile/ads/impl/ro1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro1;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/u91;)V
    .locals 1

    .line 1
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/so1;->c:Lcom/yandex/mobile/ads/impl/ro1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ro1;->a(Lcom/yandex/mobile/ads/impl/u91;)V

    return-void
.end method

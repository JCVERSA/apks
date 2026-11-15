.class public final Lcom/yandex/mobile/ads/impl/dt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bt0;

.field private final b:Lcom/yandex/mobile/ads/impl/tg1;

.field private c:Lcom/yandex/mobile/ads/impl/ct0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/bt0;

    invoke-direct {v3, p1, p2}, Lcom/yandex/mobile/ads/impl/bt0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/tg1;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/tg1;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/dt0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/bt0;Lcom/yandex/mobile/ads/impl/tg1;Lcom/yandex/mobile/ads/impl/ct0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/bt0;Lcom/yandex/mobile/ads/impl/tg1;Lcom/yandex/mobile/ads/impl/ct0;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "locationServicesClassName"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "locationServices"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "permissionExtractor"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dt0;->a:Lcom/yandex/mobile/ads/impl/bt0;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dt0;->b:Lcom/yandex/mobile/ads/impl/tg1;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dt0;->c:Lcom/yandex/mobile/ads/impl/ct0;

    return-void
.end method

.method private final a()Lcom/yandex/mobile/ads/impl/ct0;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dt0;->a:Lcom/yandex/mobile/ads/impl/bt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bt0;->a()Lcom/yandex/mobile/ads/impl/he0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dt0;->b:Lcom/yandex/mobile/ads/impl/tg1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tg1;->a()Z

    move-result v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dt0;->b:Lcom/yandex/mobile/ads/impl/tg1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tg1;->b()Z

    move-result p0

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/he0;->a()Lcom/yandex/mobile/ads/impl/ct0;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b()Lcom/yandex/mobile/ads/impl/ct0;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dt0;->c:Lcom/yandex/mobile/ads/impl/ct0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/dt0;->a()Lcom/yandex/mobile/ads/impl/ct0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/dt0;->a()Lcom/yandex/mobile/ads/impl/ct0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/dt0;->c:Lcom/yandex/mobile/ads/impl/ct0;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/dt0;->a()Lcom/yandex/mobile/ads/impl/ct0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/dt0;->c:Lcom/yandex/mobile/ads/impl/ct0;

    return-void
.end method

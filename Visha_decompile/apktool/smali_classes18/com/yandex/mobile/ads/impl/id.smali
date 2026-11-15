.class public final Lcom/yandex/mobile/ads/impl/id;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/le;

.field private final c:Lcom/yandex/mobile/ads/impl/rp1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/jd;->a()Lcom/yandex/mobile/ads/impl/le;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/rp1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/rp1;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/id;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/le;Lcom/yandex/mobile/ads/impl/rp1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/le;Lcom/yandex/mobile/ads/impl/rp1;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/id;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/id;->b:Lcom/yandex/mobile/ads/impl/le;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/id;->c:Lcom/yandex/mobile/ads/impl/rp1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/op1$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/t4;",
            ")V"
        }
    .end annotation

    const-string v0, "reportType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/id;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pw1;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/id;->c:Lcom/yandex/mobile/ads/impl/rp1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/rp1;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)Lcom/yandex/mobile/ads/impl/je;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/id;->b:Lcom/yandex/mobile/ads/impl/le;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/le;->a(Lcom/yandex/mobile/ads/impl/je;)V

    :cond_1
    :goto_0
    return-void
.end method

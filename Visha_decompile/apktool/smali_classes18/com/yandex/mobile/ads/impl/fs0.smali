.class public final Lcom/yandex/mobile/ads/impl/fs0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/if;

.field private final d:Lcom/yandex/mobile/ads/impl/j11;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/if;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/if;-><init>()V

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/j11;->e:Lcom/yandex/mobile/ads/impl/j11$a;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/j11$a;->a()Lcom/yandex/mobile/ads/impl/j11;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/fs0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/if;Lcom/yandex/mobile/ads/impl/j11;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/if;Lcom/yandex/mobile/ads/impl/j11;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaIntegrationValidator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAdsIntegrationValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fs0;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fs0;->b:Lcom/yandex/mobile/ads/impl/o3;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fs0;->c:Lcom/yandex/mobile/ads/impl/if;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fs0;->d:Lcom/yandex/mobile/ads/impl/j11;

    return-void
.end method

.method private final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/w3;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fs0;->c:Lcom/yandex/mobile/ads/impl/if;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/if;->a()V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/bp0; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget v2, Lcom/yandex/mobile/ads/impl/w7;->A:I

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/bp0;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/bp0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yandex/mobile/ads/impl/w7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fs0;->d:Lcom/yandex/mobile/ads/impl/j11;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fs0;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/j11;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/yandex/mobile/ads/impl/bp0; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v2

    sget v3, Lcom/yandex/mobile/ads/impl/w7;->A:I

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/bp0;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/bp0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/yandex/mobile/ads/impl/w7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fs0;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->f()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v3

    goto :goto_2

    :cond_0
    move-object v3, v0

    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fs0;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->t()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v0

    :cond_1
    filled-new-array {v1, v2, v3, v0}, [Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-static {p0}, Ly71;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/yandex/mobile/ads/impl/w3;
    .locals 4

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/fs0;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fs0;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->e()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ly71;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fs0;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/w3;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/w3;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/a4;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/w3;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/w3;
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/fs0;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/w3;

    return-object p0
.end method

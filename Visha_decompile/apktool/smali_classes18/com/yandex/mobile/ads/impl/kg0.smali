.class public final Lcom/yandex/mobile/ads/impl/kg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pw1;

.field private final b:Lcom/yandex/mobile/ads/impl/mt0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/mt0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/mt0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/kg0;-><init>(Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/mt0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/mt0;)V
    .locals 1

    .line 4
    const-string v0, "sdkSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestAnalyzer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kg0;->a:Lcom/yandex/mobile/ads/impl/pw1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kg0;->b:Lcom/yandex/mobile/ads/impl/mt0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kg0;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kg0;->b:Lcom/yandex/mobile/ads/impl/mt0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mt0;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->x()Ljava/util/List;

    move-result-object p0

    :cond_1
    invoke-static {v1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

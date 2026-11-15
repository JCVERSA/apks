.class final Lcom/yandex/mobile/ads/impl/oa2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/pa2;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/ia2;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/o3;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pa2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oa2;->b:Lcom/yandex/mobile/ads/impl/pa2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/oa2;->c:Lcom/yandex/mobile/ads/impl/ia2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/oa2;->d:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/oa2;->e:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/yandex/mobile/ads/impl/in1;

    const-string v0, "queryParams"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oa2;->b:Lcom/yandex/mobile/ads/impl/pa2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oa2;->c:Lcom/yandex/mobile/ads/impl/ia2;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/oa2;->d:Lcom/yandex/mobile/ads/impl/o3;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oa2;->e:Landroid/content/Context;

    const-string v3, "charset"

    const-string v4, "UTF-8"

    invoke-virtual {p1, v3, v4}, Lcom/yandex/mobile/ads/impl/in1;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pa2;->b(Lcom/yandex/mobile/ads/impl/pa2;)Lcom/yandex/mobile/ads/impl/jn1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x55d4a7f

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const v4, 0x989680

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rnd"

    invoke-virtual {p1, v4, v3}, Lcom/yandex/mobile/ads/impl/in1;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ia2;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4, v3}, Lcom/yandex/mobile/ads/impl/in1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v1

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pa2;->c(Lcom/yandex/mobile/ads/impl/pa2;)Lcom/yandex/mobile/ads/impl/kx1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "context"

    invoke-static {p0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/kx1;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o50;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuid"

    invoke-virtual {p1, v4, v3}, Lcom/yandex/mobile/ads/impl/in1;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o50;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mauid"

    invoke-virtual {p1, v3, v1}, Lcom/yandex/mobile/ads/impl/in1;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pa2;->a(Lcom/yandex/mobile/ads/impl/pa2;)Lcom/yandex/mobile/ads/impl/hq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/hq;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/in1;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/q50;

    invoke-direct {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/q50;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/q50;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/in1;)V

    return-object p1
.end method

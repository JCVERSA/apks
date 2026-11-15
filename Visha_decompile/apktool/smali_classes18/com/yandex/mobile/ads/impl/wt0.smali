.class public final Lcom/yandex/mobile/ads/impl/wt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/et;

.field private final b:Lcom/yandex/mobile/ads/impl/f3;

.field private final c:Lcom/yandex/mobile/ads/impl/g3;

.field private final d:Lcom/yandex/mobile/ads/impl/rt0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAd"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/wt0;->a:Lcom/yandex/mobile/ads/impl/et;

    new-instance v0, Lcom/yandex/mobile/ads/impl/f3;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/f3;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wt0;->b:Lcom/yandex/mobile/ads/impl/f3;

    new-instance v0, Lcom/yandex/mobile/ads/impl/g3;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/g3;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wt0;->c:Lcom/yandex/mobile/ads/impl/g3;

    new-instance v0, Lcom/yandex/mobile/ads/impl/rt0;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/rt0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/et;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wt0;->d:Lcom/yandex/mobile/ads/impl/rt0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wt0;->c:Lcom/yandex/mobile/ads/impl/g3;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wt0;->a:Lcom/yandex/mobile/ads/impl/et;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/et;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "adBreaks"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/g3$a;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/g3$a;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wt0;->b:Lcom/yandex/mobile/ads/impl/f3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "breakType"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gt;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gt;->b()Lcom/yandex/mobile/ads/impl/ht;

    move-result-object v3

    sget-object v4, Lcom/yandex/mobile/ads/impl/ht$a;->d:Lcom/yandex/mobile/ads/impl/ht$a;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ht;->a()Lcom/yandex/mobile/ads/impl/ht$a;

    move-result-object v3

    if-ne v4, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/gt;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wt0;->d:Lcom/yandex/mobile/ads/impl/rt0;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/rt0;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/qt0;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p1
.end method

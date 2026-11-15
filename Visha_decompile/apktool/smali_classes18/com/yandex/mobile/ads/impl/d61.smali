.class public final Lcom/yandex/mobile/ads/impl/d61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/el0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/el0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/d61;-><init>(Lcom/yandex/mobile/ads/impl/el0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/el0;)V
    .locals 1

    .line 3
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d61;->a:Lcom/yandex/mobile/ads/impl/el0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/q61;)Ljava/lang/String;
    .locals 11

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/b02;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/yandex/mobile/ads/impl/b02;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/b02;->d()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/q61;->getInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    move-object v2, v0

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/q61;->getInfo()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Ly71;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :goto_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d61;->a:Lcom/yandex/mobile/ads/impl/el0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "list"

    invoke-static {v2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v9, 0x38

    const/4 v10, 0x0

    const-string v3, ","

    const-string v4, "["

    const-string v5, "]"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    return-object v1
.end method

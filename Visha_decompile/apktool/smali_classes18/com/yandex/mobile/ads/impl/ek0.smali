.class public final Lcom/yandex/mobile/ads/impl/ek0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wa0;

.field private final b:Lcom/yandex/mobile/ads/impl/ch;

.field private final c:Lcom/yandex/mobile/ads/impl/y02;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wa0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wa0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ch;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ch;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/y02;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/y02;-><init>()V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/ek0;-><init>(Lcom/yandex/mobile/ads/impl/wa0;Lcom/yandex/mobile/ads/impl/ch;Lcom/yandex/mobile/ads/impl/y02;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wa0;Lcom/yandex/mobile/ads/impl/ch;Lcom/yandex/mobile/ads/impl/y02;)V
    .locals 1

    .line 5
    const-string v0, "feedbackImageProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsImagesProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialActionImageProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ek0;->a:Lcom/yandex/mobile/ads/impl/wa0;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ek0;->b:Lcom/yandex/mobile/ads/impl/ch;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ek0;->c:Lcom/yandex/mobile/ads/impl/y02;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;",
            "Lcom/yandex/mobile/ads/impl/vr0;",
            ")",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ek0;->b:Lcom/yandex/mobile/ads/impl/ch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ch;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Li81;->f1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "feedback"

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ek0;->a:Lcom/yandex/mobile/ads/impl/wa0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/yandex/mobile/ads/impl/za0;

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/za0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/za0;->a()Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v1

    invoke-static {v1}, Ly71;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->a()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vr0;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/yandex/mobile/ads/impl/x;

    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/x;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "divkit_adtune"

    invoke-static {v5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    check-cast v4, Lcom/yandex/mobile/ads/impl/x;

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    instance-of v2, v4, Lcom/yandex/mobile/ads/impl/n20;

    if-eqz v2, :cond_5

    move-object v3, v4

    check-cast v3, Lcom/yandex/mobile/ads/impl/n20;

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/n20;->c()Lcom/yandex/mobile/ads/impl/b30;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/b30;->d()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_7
    invoke-static {v1, v2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_8
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ek0;->c:Lcom/yandex/mobile/ads/impl/y02;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/y02;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

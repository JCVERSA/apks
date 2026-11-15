.class public final Lcom/yandex/mobile/ads/impl/dd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;
.implements Lcom/yandex/mobile/ads/impl/ed2;


# instance fields
.field private final a:Ljava/util/LinkedHashSet;

.field private final b:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/dd2;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/dd2;->b:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dd2;->b:Ljava/util/LinkedHashSet;

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ed2;

    .line 10
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ed2;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dd2;->a:Ljava/util/LinkedHashSet;

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/cd2;

    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/cd2;->a(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs a([Lcom/yandex/mobile/ads/impl/cd2;)V
    .locals 1

    .line 1
    const-string v0, "newProgressChangeListeners"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dd2;->a:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, Ld81;->D(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs a([Lcom/yandex/mobile/ads/impl/ed2;)V
    .locals 1

    .line 3
    const-string v0, "newProgressLifecycleListeners"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dd2;->b:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, Ld81;->D(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dd2;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ed2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ed2;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

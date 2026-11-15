.class public final Lcom/yandex/mobile/ads/impl/a70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedHashSet;

.field private b:Landroidx/media3/common/Player;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/a70;->a:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/Player;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a70;->b:Landroidx/media3/common/Player;

    return-object p0
.end method

.method public final a(Landroidx/media3/common/Player;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a70;->b:Landroidx/media3/common/Player;

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a70;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/wi1;

    .line 6
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/wi1;->a(Landroidx/media3/common/Player;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/rl1;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a70;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a70;->b:Landroidx/media3/common/Player;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

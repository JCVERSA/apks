.class public final Lcom/yandex/mobile/ads/impl/b4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/k4;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "adGroupPlaybackItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/k4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/k4;"
        }
    .end annotation

    .line 2
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/k4;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k4;->c()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v1

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    check-cast v0, Lcom/yandex/mobile/ads/impl/k4;

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/b4;->b:I

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/zb2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/yandex/mobile/ads/impl/b4;->b:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    invoke-static {p0, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/k4;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k4;->c()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/do0;
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/b4;->b:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    invoke-static {p0, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/k4;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k4;->a()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/mg2;
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/b4;->b:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    invoke-static {p0, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/k4;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k4;->d()Lcom/yandex/mobile/ads/impl/mg2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/k4;
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/b4;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    invoke-static {p0, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/k4;

    return-object p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/k4;
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/b4;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/b4;->b:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b4;->a:Ljava/util/List;

    invoke-static {p0, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/k4;

    return-object p0
.end method

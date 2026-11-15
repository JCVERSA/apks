.class public final Lcom/yandex/mobile/ads/impl/j81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/q61;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/q61;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/q61;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "nativePrivates"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j81;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/q61;

    :goto_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/y61;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->a()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/st;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/st;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ut;)V
    .locals 1

    .line 2
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/ut;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/nativeads/c;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/nativeads/c;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/n91;
    .locals 1

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->b()Lcom/yandex/mobile/ads/impl/n91;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/n91;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/yandex/mobile/ads/impl/n91;-><init>(Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/ic1;)V

    :cond_1
    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/k71;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/e61;
        }
    .end annotation

    .line 5
    const-string v0, "viewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/k71;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/k71;Lcom/yandex/mobile/ads/impl/uo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/e61;
        }
    .end annotation

    .line 3
    const-string v0, "viewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickConnector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/k71;Lcom/yandex/mobile/ads/impl/uo;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/ut;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/ut;)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/b30;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->c()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->destroy()V

    :cond_0
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/q61;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getAdAssets()Lcom/yandex/mobile/ads/impl/rt;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getAdAssets()Lcom/yandex/mobile/ads/impl/rt;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/rt;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/rt;-><init>(I)V

    :cond_1
    return-object p0
.end method

.method public final getAdType()Lcom/yandex/mobile/ads/impl/gr1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getAdType()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/yandex/mobile/ads/impl/gr1;->c:Lcom/yandex/mobile/ads/impl/gr1;

    :cond_1
    return-object p0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getInfo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getNativeAdVideoController()Lcom/yandex/mobile/ads/impl/yt;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getNativeAdVideoController()Lcom/yandex/mobile/ads/impl/yt;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final loadImages()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j81;->b:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->loadImages()V

    :cond_0
    return-void
.end method

.class public final Lcom/yandex/mobile/ads/impl/io0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ko0;

.field private final b:Lcom/yandex/mobile/ads/impl/an0;

.field private final c:Lcom/yandex/mobile/ads/impl/zl0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/co0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/an0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/an0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/zl0;

    invoke-direct {v1, p2}, Lcom/yandex/mobile/ads/impl/zl0;-><init>(Lcom/yandex/mobile/ads/impl/co0;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/io0;-><init>(Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/an0;Lcom/yandex/mobile/ads/impl/zl0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/an0;Lcom/yandex/mobile/ads/impl/zl0;)V
    .locals 1

    .line 4
    const-string v0, "videoAdControlsStateStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamVastAdPlayer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "instreamAdViewUiElementsManager"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoAdControlsStateProvider"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/io0;->a:Lcom/yandex/mobile/ads/impl/ko0;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/io0;->b:Lcom/yandex/mobile/ads/impl/an0;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/io0;->c:Lcom/yandex/mobile/ads/impl/zl0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/t70;Lcom/yandex/mobile/ads/impl/ln0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/t70;",
            "Lcom/yandex/mobile/ads/impl/ln0;",
            ")V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "initialControlsState"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/io0;->b:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/t70;->getAdUiElements()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/io0;->c:Lcom/yandex/mobile/ads/impl/zl0;

    invoke-virtual {v0, p2, p3}, Lcom/yandex/mobile/ads/impl/zl0;->a(Lcom/yandex/mobile/ads/impl/ob2;Lcom/yandex/mobile/ads/impl/ln0;)Lcom/yandex/mobile/ads/impl/ln0;

    move-result-object p2

    new-instance v0, Lcom/yandex/mobile/ads/impl/ln0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ln0$a;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->d()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/ln0$a;->b(Z)Lcom/yandex/mobile/ads/impl/ln0$a;

    move-result-object p2

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ln0;->a()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/yandex/mobile/ads/impl/ln0$a;->a(F)Lcom/yandex/mobile/ads/impl/ln0$a;

    move-result-object p2

    new-instance p3, Lcom/yandex/mobile/ads/impl/ln0;

    invoke-direct {p3, p2}, Lcom/yandex/mobile/ads/impl/ln0;-><init>(Lcom/yandex/mobile/ads/impl/ln0$a;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/io0;->a:Lcom/yandex/mobile/ads/impl/ko0;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/ko0;->a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ln0;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/t70;Lcom/yandex/mobile/ads/impl/ln0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/t70;",
            "Lcom/yandex/mobile/ads/impl/ln0;",
            ")V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "initialControlsState"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/io0;->b:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/t70;->getAdUiElements()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/io0;->c:Lcom/yandex/mobile/ads/impl/zl0;

    invoke-virtual {v0, p2, p3}, Lcom/yandex/mobile/ads/impl/zl0;->a(Lcom/yandex/mobile/ads/impl/ob2;Lcom/yandex/mobile/ads/impl/ln0;)Lcom/yandex/mobile/ads/impl/ln0;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/io0;->a:Lcom/yandex/mobile/ads/impl/ko0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ko0;->a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ln0;)V

    :cond_0
    return-void
.end method

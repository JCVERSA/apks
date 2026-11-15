.class public final Lcom/yandex/mobile/ads/impl/b41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/co0;

.field private final b:Lcom/yandex/mobile/ads/impl/f6;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/co0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/f6;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/f6;-><init>(Lcom/yandex/mobile/ads/impl/co0;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/b41;-><init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/f6;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/f6;)V
    .locals 1

    .line 3
    const-string v0, "instreamVastAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayerVolumeConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b41;->a:Lcom/yandex/mobile/ads/impl/co0;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/b41;->b:Lcom/yandex/mobile/ads/impl/f6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;Lcom/yandex/mobile/ads/impl/ln0;)V
    .locals 5

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsState"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->a()F

    move-result v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->i()Lcom/yandex/mobile/ads/impl/z31;

    move-result-object p1

    new-instance v2, Lcom/yandex/mobile/ads/impl/a41;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/b41;->a:Lcom/yandex/mobile/ads/impl/co0;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/b41;->b:Lcom/yandex/mobile/ads/impl/f6;

    invoke-direct {v2, v3, v4, p2, p1}, Lcom/yandex/mobile/ads/impl/a41;-><init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/f6;Lcom/yandex/mobile/ads/impl/ln0;Lcom/yandex/mobile/ads/impl/z31;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Lcom/yandex/mobile/ads/impl/z31;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/yandex/mobile/ads/impl/z31;->setMuted(Z)V

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b41;->b:Lcom/yandex/mobile/ads/impl/f6;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/f6;->a(FZ)V

    return-void
.end method

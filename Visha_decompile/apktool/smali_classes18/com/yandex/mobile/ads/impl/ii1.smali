.class public final Lcom/yandex/mobile/ads/impl/ii1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a70;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/a70;)V
    .locals 1

    const-string v0, "playerProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ii1;->a:Lcom/yandex/mobile/ads/impl/a70;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ii1;->a:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a70;->a()Landroidx/media3/common/Player;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ii1;->a:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a70;->a()Landroidx/media3/common/Player;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    :goto_0
    return-void
.end method

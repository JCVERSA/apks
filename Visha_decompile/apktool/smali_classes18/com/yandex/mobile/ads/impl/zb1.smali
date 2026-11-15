.class public final Lcom/yandex/mobile/ads/impl/zb1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sa1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;)V
    .locals 1

    const-string v0, "videoAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zb1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 1

    const-string v0, "nativeVideoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->c()Landroid/view/TextureView;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sa1;->a(Landroid/view/TextureView;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->a()Lcom/yandex/mobile/ads/impl/qa1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->b()Lcom/yandex/mobile/ads/impl/af2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 2

    const-string v0, "nativeVideoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->c()Landroid/view/TextureView;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/yandex/mobile/ads/impl/sa1;->a(Landroid/view/TextureView;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->a()Lcom/yandex/mobile/ads/impl/qa1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->b()Lcom/yandex/mobile/ads/impl/af2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

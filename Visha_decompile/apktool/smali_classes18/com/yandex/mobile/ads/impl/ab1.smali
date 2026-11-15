.class public final Lcom/yandex/mobile/ads/impl/ab1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gb1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sa1;

.field private final b:Lcom/yandex/mobile/ads/impl/yb1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ab1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ab1;->b:Lcom/yandex/mobile/ads/impl/yb1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab1;->b:Lcom/yandex/mobile/ads/impl/yb1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yb1;->b()Lcom/yandex/mobile/ads/impl/af2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/af2;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sa1;->a(Landroid/view/TextureView;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab1;->b:Lcom/yandex/mobile/ads/impl/yb1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yb1;->c()Landroid/view/TextureView;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/sa1;->a(Landroid/view/TextureView;)V

    return-void
.end method

.class public final Lcom/yandex/mobile/ads/impl/of2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ac1;

.field private final b:Lcom/yandex/mobile/ads/impl/nl1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ac1;Lcom/yandex/mobile/ads/impl/nl1;)V
    .locals 1

    const-string v0, "controlsConfigurator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBarConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/of2;->a:Lcom/yandex/mobile/ads/impl/ac1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/of2;->b:Lcom/yandex/mobile/ads/impl/nl1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 3

    const-string v0, "videoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->c()Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->b()Lcom/yandex/mobile/ads/impl/af2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/of2;->b:Lcom/yandex/mobile/ads/impl/nl1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "placeholderView"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/af2;->b()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/af2;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->a()Lcom/yandex/mobile/ads/impl/qa1;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/of2;->a:Lcom/yandex/mobile/ads/impl/ac1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qa1;->a()Lcom/yandex/mobile/ads/impl/aw0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ac1;->a(Lcom/yandex/mobile/ads/impl/aw0;)V

    return-void
.end method

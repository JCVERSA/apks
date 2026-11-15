.class public final Lcom/yandex/mobile/ads/impl/tb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/rb;

.field private final c:Lcom/yandex/mobile/ads/impl/ob;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vb;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rb;Lcom/yandex/mobile/ads/impl/ob;)V
    .locals 1

    const-string v0, "adtuneOptOutWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adtuneOptOutContainerCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adtuneControlsConfigurator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/tb;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/tb;->b:Lcom/yandex/mobile/ads/impl/rb;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/tb;->c:Lcom/yandex/mobile/ads/impl/ob;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tb;->a:Landroid/content/Context;

    sget v2, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_BottomAdtuneDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tb;->b:Lcom/yandex/mobile/ads/impl/rb;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rb;->a()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tb;->c:Lcom/yandex/mobile/ads/impl/ob;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/ob;->a(Landroid/view/ViewGroup;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-object v0
.end method

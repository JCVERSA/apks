.class public final Lcom/yandex/mobile/ads/impl/r20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m10;

.field private final b:Lcom/yandex/mobile/ads/impl/q20;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m10;Lcom/yandex/mobile/ads/impl/o20;Lcom/yandex/mobile/ads/impl/q20;)V
    .locals 1

    const-string v0, "contentCloseListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "binder"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r20;->a:Lcom/yandex/mobile/ads/impl/m10;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/r20;->b:Lcom/yandex/mobile/ads/impl/q20;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n20;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r20;->b:Lcom/yandex/mobile/ads/impl/q20;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/q20;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n20;)Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    new-instance p2, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_FullscreenDialog:I

    invoke-direct {p2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r20;->a:Lcom/yandex/mobile/ads/impl/m10;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/m10;->a(Landroid/app/Dialog;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

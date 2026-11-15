.class final Lcom/yandex/mobile/ads/impl/bl0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/bl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/g71;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/bl0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bl0;Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/g71;",
            ")V"
        }
    .end annotation

    const-string v0, "nativeAdViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->c:Lcom/yandex/mobile/ads/impl/bl0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->b:Lcom/yandex/mobile/ads/impl/g71;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->b:Lcom/yandex/mobile/ads/impl/g71;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->c:Lcom/yandex/mobile/ads/impl/bl0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/bl0;->c(Lcom/yandex/mobile/ads/impl/bl0;)Lcom/yandex/mobile/ads/impl/jp0;

    move-result-object v1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/jp0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->c:Lcom/yandex/mobile/ads/impl/bl0;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/bl0;->b(Lcom/yandex/mobile/ads/impl/bl0;)Lcom/yandex/mobile/ads/impl/cl0;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/yandex/mobile/ads/impl/cl0;->a(Lcom/yandex/mobile/ads/impl/n92;Landroid/widget/FrameLayout;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/bl0$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->c:Lcom/yandex/mobile/ads/impl/bl0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->b:Lcom/yandex/mobile/ads/impl/g71;

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/bl0$a;-><init>(Lcom/yandex/mobile/ads/impl/bl0;Lcom/yandex/mobile/ads/impl/g71;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl0$a;->c:Lcom/yandex/mobile/ads/impl/bl0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/bl0;->a(Lcom/yandex/mobile/ads/impl/bl0;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

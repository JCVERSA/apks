.class public final Lcom/yandex/mobile/ads/impl/pn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yandex/mobile/ads/impl/zd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zd<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/rn;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/zq;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/pn;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/zd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/zd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/yandex/mobile/ads/impl/zd<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callToActionAnimator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pn;->a:Landroid/os/Handler;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pn;->b:Lcom/yandex/mobile/ads/impl/zd;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pn;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn;->b:Lcom/yandex/mobile/ads/impl/zd;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zd;->cancel()V

    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 3

    .line 3
    const-string v0, "callToActionView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/o22;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pn;->b:Lcom/yandex/mobile/ads/impl/zd;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/o22;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/zd;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

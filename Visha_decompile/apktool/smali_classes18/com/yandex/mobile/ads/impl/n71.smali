.class public final Lcom/yandex/mobile/ads/impl/n71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field static final synthetic e:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v62$a;

.field private final b:Lcom/yandex/mobile/ads/impl/j71;

.field private c:Lcom/yandex/mobile/ads/impl/i71;

.field private final d:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getViewReference()Landroid/view/View;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/n71;

    const-string v3, "viewReference"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/n71;->e:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/a91;Lcom/yandex/mobile/ads/impl/j71;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalLayoutListenerFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/n71;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/n71;->b:Lcom/yandex/mobile/ads/impl/j71;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n71;->d:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n71;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/n71;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, p0, v3}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n71;->d:Lcom/yandex/mobile/ads/impl/go1;

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n71;->b:Lcom/yandex/mobile/ads/impl/j71;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/n71;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "nativeAdView"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackingListener"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/i71;

    invoke-direct {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/i71;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/v62$a;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/n71;->c:Lcom/yandex/mobile/ads/impl/i71;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i71;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n71;->c:Lcom/yandex/mobile/ads/impl/i71;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i71;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n71;->c:Lcom/yandex/mobile/ads/impl/i71;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n71;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/n71;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/n71;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/v62$a;->a()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/n71;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/n71;->e:[Laf5;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n71;->b:Lcom/yandex/mobile/ads/impl/j71;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n71;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingListener"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/i71;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/i71;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/v62$a;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n71;->c:Lcom/yandex/mobile/ads/impl/i71;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i71;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/n71;->c:Lcom/yandex/mobile/ads/impl/i71;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i71;->b()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n71;->c:Lcom/yandex/mobile/ads/impl/i71;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n71;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/v62$a;->b()V

    return-void
.end method

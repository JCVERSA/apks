.class public final Lcom/yandex/mobile/ads/impl/j21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/rp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/j21$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/yandex/mobile/ads/impl/z82;

.field private final c:Landroid/os/Handler;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/yandex/mobile/ads/impl/z82;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "closeButton"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useCustomCloseHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j21;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/j21;->b:Lcom/yandex/mobile/ads/impl/z82;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/j21;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/j21;->d()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/j21;->d:Z

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j21;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j21;->b:Lcom/yandex/mobile/ads/impl/z82;

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j21;->a:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string v0, "closeButton"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/j21;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/j21$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j21;->a:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/j21$a;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j21;->c:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j21;->a:Landroid/view/View;

    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    return-void
.end method

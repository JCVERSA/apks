.class public final Lcom/yandex/mobile/ads/impl/bl0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/bl0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/cl0;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/yandex/mobile/ads/impl/fi2;

.field private final d:Lcom/yandex/mobile/ads/impl/jp0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/na1;Ljava/util/List;)V
    .locals 7

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/cl0;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/cl0;-><init>()V

    .line 2
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/fi2;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/fi2;-><init>()V

    .line 4
    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/kp0;->a(Lcom/yandex/mobile/ads/impl/na1;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/jp0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/bl0;-><init>(Lcom/yandex/mobile/ads/impl/na1;Ljava/util/List;Lcom/yandex/mobile/ads/impl/cl0;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/fi2;Lcom/yandex/mobile/ads/impl/jp0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/na1;Ljava/util/List;Lcom/yandex/mobile/ads/impl/cl0;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/fi2;Lcom/yandex/mobile/ads/impl/jp0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/na1;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/cl0;",
            "Landroid/os/Handler;",
            "Lcom/yandex/mobile/ads/impl/fi2;",
            "Lcom/yandex/mobile/ads/impl/jp0;",
            ")V"
        }
    .end annotation

    .line 6
    const-string v0, "nativeValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "showNotices"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "indicatorPresenter"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "availabilityChecker"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "integrationValidator"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bl0;->a:Lcom/yandex/mobile/ads/impl/cl0;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bl0;->b:Landroid/os/Handler;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bl0;->c:Lcom/yandex/mobile/ads/impl/fi2;

    .line 11
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/bl0;->d:Lcom/yandex/mobile/ads/impl/jp0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/bl0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl0;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/bl0;)Lcom/yandex/mobile/ads/impl/cl0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl0;->a:Lcom/yandex/mobile/ads/impl/cl0;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/bl0;)Lcom/yandex/mobile/ads/impl/jp0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl0;->d:Lcom/yandex/mobile/ads/impl/jp0;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl0;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 3

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdViewAdapter"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bl0;->c:Lcom/yandex/mobile/ads/impl/fi2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->C0()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pw1;->h()Z

    move-result v2

    .line 14
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pw1;->i()Z

    move-result v0

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 16
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/pa;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    .line 17
    :cond_3
    :goto_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/bl0$a;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/bl0$a;-><init>(Lcom/yandex/mobile/ads/impl/bl0;Lcom/yandex/mobile/ads/impl/g71;)V

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl0;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 2

    .line 2
    const-string v0, "nativeAdViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bl0;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl0;->a:Lcom/yandex/mobile/ads/impl/cl0;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/cl0;->a(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

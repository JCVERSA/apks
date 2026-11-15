.class public final Lcom/yandex/mobile/ads/impl/z20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q61;

.field private final b:Lcom/yandex/mobile/ads/impl/zr;

.field private final c:Lcom/yandex/mobile/ads/impl/sp1;

.field private final d:Lcom/yandex/mobile/ads/impl/h30;

.field private final e:Lcom/yandex/mobile/ads/impl/n30;

.field private f:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/h30;Lcom/yandex/mobile/ads/impl/n30;)V
    .locals 1

    const-string v0, "nativeAdPrivate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitDesignProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z20;->a:Lcom/yandex/mobile/ads/impl/q61;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/z20;->b:Lcom/yandex/mobile/ads/impl/zr;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/z20;->c:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/z20;->d:Lcom/yandex/mobile/ads/impl/h30;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/z20;->e:Lcom/yandex/mobile/ads/impl/n30;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/z20;Landroid/content/DialogInterface;)V
    .locals 0

    .line 22
    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z20;->f:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/z20;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/z20;->a(Lcom/yandex/mobile/ads/impl/z20;Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z20;->f:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n10;->a(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/z20;->d:Lcom/yandex/mobile/ads/impl/h30;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/z20;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "nativeAdPrivate"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/q61;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/b30;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b30;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yandex/mobile/ads/impl/h10;->e:Lcom/yandex/mobile/ads/impl/h10;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/h10;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/yandex/mobile/ads/impl/b30;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/z20;->b:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    return-void

    .line 7
    :cond_3
    new-instance v0, Lcom/yandex/mobile/ads/impl/a30;

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/a30;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v20;)V

    .line 9
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/z20;->e:Lcom/yandex/mobile/ads/impl/n30;

    .line 10
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a30;->a()Ljh2;

    move-result-object v0

    const-string v4, "<get-divConfiguration>(...)"

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/n30;->a(Landroid/content/Context;Ljh2;Landroidx/lifecycle/LifecycleOwner;)Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    .line 12
    new-instance v1, Landroid/app/Dialog;

    sget v3, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_FullscreenDialog:I

    invoke-direct {v1, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 13
    new-instance p1, Lwyd;

    invoke-direct {p1, p0}, Lwyd;-><init>(Lcom/yandex/mobile/ads/impl/z20;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14
    new-instance p1, Lcom/yandex/mobile/ads/impl/bq;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/z20;->b:Lcom/yandex/mobile/ads/impl/zr;

    invoke-direct {p1, v1, v3}, Lcom/yandex/mobile/ads/impl/bq;-><init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/zr;)V

    .line 15
    new-instance v3, Lcom/yandex/mobile/ads/impl/cq;

    invoke-direct {v3, p1}, Lcom/yandex/mobile/ads/impl/cq;-><init>(Lcom/yandex/mobile/ads/impl/bq;)V

    .line 16
    invoke-virtual {v0, v3}, Lcom/yandex/div/core/view2/Div2View;->setActionHandler(Lcf2;)V

    .line 17
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/b30;->b()Lcom/yandex/div2/DivData;

    move-result-object p1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/b30;->c()Lei2;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/yandex/div/core/view2/Div2View;->setData(Lcom/yandex/div2/DivData;Lei2;)Z

    .line 18
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 19
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/z20;->f:Landroid/app/Dialog;

    .line 20
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 21
    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z20;->c:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v0, "Failed to show DivKit close dialog"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

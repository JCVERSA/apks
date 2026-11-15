.class public final Lcom/yandex/mobile/ads/impl/rt1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/c42;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/c42;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c42;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/rt1;-><init>(Lcom/yandex/mobile/ads/impl/c42;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/c42;)V
    .locals 1

    .line 3
    const-string v0, "systemServiceUtils"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rt1;->a:Lcom/yandex/mobile/ads/impl/c42;

    return-void
.end method

.method private static final a(Landroid/view/Display;Landroid/graphics/Point;Lcom/yandex/mobile/ads/impl/rt1;)Landroid/graphics/Point;
    .locals 1

    .line 13
    const-string v0, "$defaultPoint"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 17
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method private static final a(Landroid/view/WindowManager;)Landroid/view/Display;
    .locals 1

    .line 11
    const-string v0, "$windowManager"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/view/Display;Landroid/graphics/Point;Lcom/yandex/mobile/ads/impl/rt1;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/rt1;->a(Landroid/view/Display;Landroid/graphics/Point;Lcom/yandex/mobile/ads/impl/rt1;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/view/WindowManager;)Landroid/view/Display;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rt1;->a(Landroid/view/WindowManager;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rt1;->a:Lcom/yandex/mobile/ads/impl/c42;

    new-instance v1, Ldsd;

    invoke-direct {v1, p1}, Ldsd;-><init>(Landroid/view/WindowManager;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "getting display"

    const-string v2, "WindowManager"

    invoke-static {v1, p1, v0, v2}, Lcom/yandex/mobile/ads/impl/c42;->a(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    .line 5
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rt1;->a:Lcom/yandex/mobile/ads/impl/c42;

    new-instance v2, Lesd;

    invoke-direct {v2, p1, v0, p0}, Lesd;-><init>(Landroid/view/Display;Landroid/graphics/Point;Lcom/yandex/mobile/ads/impl/rt1;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p0, "tryBlock"

    invoke-static {v2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "whileWhat"

    const-string v1, "getting display metrics"

    invoke-static {v1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "whatIsNull"

    const-string v3, "Display"

    invoke-static {v3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v2, p1, v1, v3}, Lcom/yandex/mobile/ads/impl/c42;->a(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 10
    :goto_0
    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

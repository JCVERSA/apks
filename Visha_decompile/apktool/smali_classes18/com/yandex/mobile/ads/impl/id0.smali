.class public final Lcom/yandex/mobile/ads/impl/id0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ts;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/id0;->a:Lcom/yandex/mobile/ads/impl/ts;

    return-void
.end method

.method private static final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 10
    const-string v0, "v"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 12
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    .line 14
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 15
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    .line 16
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 17
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private static a(Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 9
    new-instance v0, Lkjd;

    invoke-direct {v0}, Lkjd;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/id0;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/Window;Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 1
    const-string v0, "window"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const/16 v0, 0x1e

    .line 3
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result v0

    const/16 v1, 0x1c

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 7
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/id0;->a:Lcom/yandex/mobile/ads/impl/ts;

    sget-object p1, Lcom/yandex/mobile/ads/impl/ts;->i:Lcom/yandex/mobile/ads/impl/ts;

    if-eq p0, p1, :cond_2

    .line 8
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/id0;->a(Landroid/widget/RelativeLayout;)V

    :cond_2
    return-void
.end method

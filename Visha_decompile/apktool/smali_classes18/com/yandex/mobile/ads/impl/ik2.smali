.class public final Lcom/yandex/mobile/ads/impl/ik2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/t10;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ik2;->b(Landroid/content/Context;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/t10;->a()Lcom/yandex/mobile/ads/impl/t10;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    const-string v2, "getInsets(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/t10;

    iget v3, v1, Landroidx/core/graphics/Insets;->left:I

    sget v4, Lcom/yandex/mobile/ads/impl/wh2;->b:I

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/impl/wh2;->b(IF)F

    move-result v3

    iget v4, v1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4, v5}, Lcom/yandex/mobile/ads/impl/wh2;->b(IF)F

    move-result v4

    iget v5, v1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5, v6}, Lcom/yandex/mobile/ads/impl/wh2;->b(IF)F

    move-result v5

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1, p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(IF)F

    move-result p0

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/yandex/mobile/ads/impl/t10;-><init>(FFFF)V

    return-object v2
.end method

.method private static b(Landroid/content/Context;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {p0}, Loh1;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    const-string v0, "getCurrentWindowMetrics(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lvoc;->a(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    const-string v0, "toWindowInsetsCompat(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 p0, 0x1c

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/yandex/mobile/ads/impl/p0;->a()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "getDecorView(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

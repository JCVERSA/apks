.class public abstract Lsj0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a(Landroid/view/Window;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;ZZZLandroid/view/View;[Landroid/view/View;)V
    .locals 6

    invoke-static {p0, p2}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    new-instance p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-direct {p0, p4, v0, v1, p2}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;-><init>(ZIIZ)V

    invoke-static {p5, p0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    invoke-static {p5, p0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    if-eqz p3, :cond_0

    array-length p2, p6

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p6, p3

    invoke-virtual {p0, p4}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->a(Landroid/view/View;)V

    new-instance p5, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p5

    move-object v1, p4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;-><init>(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;III)V

    invoke-static {p4, p5}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    invoke-static {p4, p5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

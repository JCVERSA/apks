.class public abstract Lag5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag5$e;,
        Lag5$f;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public static c:I

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static bridge synthetic a()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    sget-object v0, Lag5;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method public static bridge synthetic b(I)V
    .locals 0

    sput p0, Lag5;->c:I

    return-void
.end method

.method public static bridge synthetic c(Landroid/app/Activity;)I
    .locals 0

    invoke-static {p0}, Lag5;->e(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lag5;->f(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/app/Activity;)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lag5;->a:I

    return p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget v0, Lag5;->c:I

    if-gt p0, v0, :cond_1

    sput p0, Lag5;->d:I

    const/4 p0, 0x0

    return p0

    :cond_1
    sget v0, Lag5;->d:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/utils/a;->f(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/app/Activity;Lag5$f;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v1, :cond_1

    invoke-interface {p1, v1, v0}, Lag5$f;->a(IZ)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lag5;->f(Landroid/content/Context;)I

    move-result p0

    invoke-interface {p1, p0, v0}, Lag5$f;->a(IZ)V

    goto :goto_1

    :cond_2
    new-instance v1, Lag5$d;

    invoke-direct {v1, p1, p0}, Lag5$d;-><init>(Lag5$f;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1
    return-void
.end method

.method public static h(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static i(Landroid/app/Activity;Lag5$e;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lag5$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lag5$a;-><init>(ILandroid/app/Activity;Lag5$e;)V

    invoke-static {v0, v1}, Lmnc;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static j(Landroid/app/Activity;Lag5$e;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0}, Lag5;->e(Landroid/app/Activity;)I

    move-result v1

    sput v1, Lag5;->a:I

    new-instance v1, Lag5$b;

    invoke-direct {v1, p0, p1}, Lag5$b;-><init>(Landroid/app/Activity;Lag5$e;)V

    sput-object v1, Lag5;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lag5$c;

    invoke-direct {p1, v0}, Lag5$c;-><init>(Landroid/widget/FrameLayout;)V

    invoke-static {p0, p1}, Lag5;->g(Landroid/app/Activity;Lag5$f;)V

    return-void
.end method

.method public static k(Landroid/app/Activity;Lag5$e;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lag5;->i(Landroid/app/Activity;Lag5$e;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lag5;->j(Landroid/app/Activity;Lag5$e;)V

    :goto_0
    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lag5;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p0, 0x0

    sput-object p0, Lag5;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

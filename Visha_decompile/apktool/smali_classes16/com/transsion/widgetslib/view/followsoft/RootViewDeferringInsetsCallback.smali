.class public Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Landroid/view/View;

.field public i:Landroidx/core/view/WindowInsetsCompat;

.field public j:Z


# direct methods
.method public constructor <init>(ZIIZ)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->c:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->d:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->f:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->g:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->h:Landroid/view/View;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->i:Landroidx/core/view/WindowInsetsCompat;

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->j:Z

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->c:Z

    iput p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->a:I

    iput p3, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->b:I

    iput-boolean p4, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->d:Z

    and-int p0, p2, p3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(I)I
    .locals 2

    int-to-float p0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOnInsetsChangedListener(Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()Landroidx/core/view/OnApplyWindowInsetsListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->e:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/OnApplyWindowInsetsListener;

    return-object p0
.end method

.method public final e(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    iput-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->h:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->i:Landroidx/core/view/WindowInsetsCompat;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->a:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->a:I

    iget v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->b:I

    or-int/2addr v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->c:Z

    const/16 v2, 0x30

    const/16 v3, 0x60

    const/4 v4, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v3}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->c(I)I

    move-result v2

    if-gt v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->d:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    iget v1, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v2}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->c(I)I

    move-result v2

    if-gt v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->d:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v3}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->c(I)I

    move-result v2

    if-gt v1, v2, :cond_6

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    iget v1, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v2}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->c(I)I

    move-result v2

    if-gt v1, v2, :cond_6

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    :goto_1
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->e(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->b(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->d()Landroidx/core/view/OnApplyWindowInsetsListener;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :cond_7
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->j:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->i:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->h:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :cond_0
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->j:Z

    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    return-object p1
.end method

.method public removeOnInsetsChangedListener(Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback$a;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.class public final Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->o(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v0

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->n(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v1

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->m(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v2

    sub-int v3, v0, v2

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->h(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    if-lez v3, :cond_2

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->d(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v4, v5

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->d(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->c(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    sub-float v6, v5, v6

    mul-float/2addr v7, v6

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->j(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v6

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->f(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->j(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v6

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->c(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->j(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->l(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V

    int-to-float v6, v1

    mul-float/2addr v6, v5

    div-float/2addr v6, v4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_1

    sub-float v6, v5, v6

    :cond_1
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->i(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v4

    mul-float/2addr v4, v6

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v5

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    add-float/2addr v7, v4

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v7, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->k(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V

    invoke-static {}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->p()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGlobalLayout, scrollRange: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollOffset: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollExtent: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollDistance: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ratio: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

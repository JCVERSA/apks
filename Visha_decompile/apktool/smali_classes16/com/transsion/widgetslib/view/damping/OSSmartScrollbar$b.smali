.class public final Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$b;->b:Ljava/lang/ref/WeakReference;

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

    sub-int/2addr v0, v2

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->h(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    if-lez v0, :cond_2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    sub-float v1, v2, v1

    :cond_1
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->i(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->e(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v2

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->b(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->g(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->k(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

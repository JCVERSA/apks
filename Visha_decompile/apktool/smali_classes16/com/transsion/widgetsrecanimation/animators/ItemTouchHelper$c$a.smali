.class public Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final synthetic c:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;->c:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    iput-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;->c:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f(F)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;->c:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->b(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;->c:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->a(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;F)V

    :cond_2
    :goto_1
    return-void
.end method

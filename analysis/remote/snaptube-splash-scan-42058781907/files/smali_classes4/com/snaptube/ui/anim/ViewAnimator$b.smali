.class public Lcom/snaptube/ui/anim/ViewAnimator$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/ui/anim/ViewAnimator;->s()Lcom/snaptube/ui/anim/ViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snaptube/ui/anim/ViewAnimator;


# direct methods
.method public constructor <init>(Lcom/snaptube/ui/anim/ViewAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ui/anim/ViewAnimator$b;->a:Lcom/snaptube/ui/anim/ViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator$b;->a:Lcom/snaptube/ui/anim/ViewAnimator;

    invoke-static {v0}, Lcom/snaptube/ui/anim/ViewAnimator;->b(Lcom/snaptube/ui/anim/ViewAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator$b;->a:Lcom/snaptube/ui/anim/ViewAnimator;

    invoke-static {v0}, Lcom/snaptube/ui/anim/ViewAnimator;->f(Lcom/snaptube/ui/anim/ViewAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method

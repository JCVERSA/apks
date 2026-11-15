.class public Lcom/bumptech/glide/request/transition/ViewTransition;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewTransition;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/bumptech/glide/request/transition/ViewTransition;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;->build(Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.class Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcreteViewTransitionAnimationFactory"
.end annotation


# instance fields
.field private final animation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;->animation:Landroid/view/animation/Animation;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;->animation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p1
.end method

.class public Lcom/bumptech/glide/request/transition/NoTransition;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;
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


# static fields
.field static final NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/NoTransition<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;

    .line 7
    .line 8
    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get()Lcom/bumptech/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.class Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->d:Landroidx/fragment/app/DefaultSpecialEffectsController$e;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

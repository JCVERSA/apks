.class Lcom/transsion/audio/view/EnFloatingView$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/view/EnFloatingView;->packUpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/view/EnFloatingView;


# direct methods
.method constructor <init>(Lcom/transsion/audio/view/EnFloatingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$d;->a:Lcom/transsion/audio/view/EnFloatingView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$d;->a:Lcom/transsion/audio/view/EnFloatingView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/audio/view/EnFloatingView;->l(Lcom/transsion/audio/view/EnFloatingView;)Lki/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lki/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

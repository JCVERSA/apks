.class public final Lru/zdevs/zarchiver/ui/FilePanelView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/FilePanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lru/zdevs/zarchiver/ui/FilePanelView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/FilePanelView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$a;->b:Lru/zdevs/zarchiver/ui/FilePanelView;

    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/FilePanelView$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$a;->b:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView$a;->a:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/FilePanelView;->w:Lru/zdevs/zarchiver/ui/FilePanelView$g;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget p1, p1, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lru/zdevs/zarchiver/ui/FilePanelView$g;->h(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

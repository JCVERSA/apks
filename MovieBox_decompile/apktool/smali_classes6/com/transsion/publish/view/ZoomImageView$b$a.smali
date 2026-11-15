.class Lcom/transsion/publish/view/ZoomImageView$b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/ZoomImageView$b;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/ZoomImageView$b;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/ZoomImageView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/transsion/publish/view/ZoomImageView;->a(Lcom/transsion/publish/view/ZoomImageView;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int v0, p1, v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 40
    .line 41
    invoke-static {v1, p1}, Lcom/transsion/publish/view/ZoomImageView;->g(Lcom/transsion/publish/view/ZoomImageView;I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->b(Lcom/transsion/publish/view/ZoomImageView;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-int v1, p1, v1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 69
    .line 70
    invoke-static {v2, p1}, Lcom/transsion/publish/view/ZoomImageView;->h(Lcom/transsion/publish/view/ZoomImageView;I)V

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 80
    .line 81
    int-to-float v0, v0

    .line 82
    int-to-float v1, v1

    .line 83
    invoke-static {p1, v0, v1}, Lcom/transsion/publish/view/ZoomImageView;->m(Lcom/transsion/publish/view/ZoomImageView;FF)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

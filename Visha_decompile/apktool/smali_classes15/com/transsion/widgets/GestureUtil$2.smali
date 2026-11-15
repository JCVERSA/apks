.class Lcom/transsion/widgets/GestureUtil$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/GestureUtil$2;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/GestureUtil$2;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/GestureUtil$2;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/GestureUtil$2;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/GestureUtil$2;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

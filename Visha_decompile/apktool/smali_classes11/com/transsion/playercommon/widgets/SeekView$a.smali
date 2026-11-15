.class public Lcom/transsion/playercommon/widgets/SeekView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/SeekView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/SeekView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SeekView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/playercommon/widgets/SeekView;->b(Lcom/transsion/playercommon/widgets/SeekView;FZ)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/playercommon/widgets/SeekView;->b(Lcom/transsion/playercommon/widgets/SeekView;FZ)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/transsion/playercommon/widgets/SeekView;->b(Lcom/transsion/playercommon/widgets/SeekView;FZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-static {p1, p3}, Lcom/transsion/playercommon/widgets/SeekView;->a(Lcom/transsion/playercommon/widgets/SeekView;Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/playercommon/widgets/SeekView;->b(Lcom/transsion/playercommon/widgets/SeekView;FZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-static {p1, v1}, Lcom/transsion/playercommon/widgets/SeekView;->a(Lcom/transsion/playercommon/widgets/SeekView;Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SeekView$a;->b:Lcom/transsion/playercommon/widgets/SeekView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.class public Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public final synthetic d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p0, "VideoMainFragment"

    const-string p1, "onInterceptTouchEvent, in mEditMode"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->b:F

    sub-float/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->c:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0, v1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->c:F

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0, v1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V

    :cond_4
    :goto_0
    return v0
.end method

.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0O0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-gt v0, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-le v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_2
    :goto_0
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0O:Landroid/view/View$OnLongClickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

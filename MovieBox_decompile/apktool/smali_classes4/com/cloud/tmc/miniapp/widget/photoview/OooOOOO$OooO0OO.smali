.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 17
    .line 18
    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    .line 19
    .line 20
    cmpg-float v5, v1, v4

    .line 21
    .line 22
    if-gez v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3, v4, v2, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    cmpl-float v4, v1, v4

    .line 29
    .line 30
    if-ltz v4, :cond_1

    .line 31
    .line 32
    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    .line 33
    .line 34
    cmpg-float v1, v1, v4

    .line 35
    .line 36
    if-gez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3, v4, v2, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v1, v3, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    .line 43
    .line 44
    invoke-virtual {v3, v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 27
    .line 28
    iget-object v3, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo00:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-interface {v3, v2, v1, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;->OooO00o(Landroid/view/View;FF)V

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 46
    .line 47
    sub-float/2addr v1, v2

    .line 48
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    div-float/2addr v1, v2

    .line 53
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 54
    .line 55
    sub-float/2addr p1, v2

    .line 56
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    div-float/2addr p1, v0

    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-interface {v2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO;->OooO00o(Landroid/widget/ImageView;FF)V

    .line 70
    .line 71
    .line 72
    :cond_2
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 75
    .line 76
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOoo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;->OooO00o(Landroid/widget/ImageView;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    const/4 p1, 0x0

    .line 86
    return p1
.end method

.class public final Lcom/transsion/videofloat/view/VideoFloatView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lfw/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/view/VideoFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videofloat/view/VideoFloatView;


# direct methods
.method constructor <init>(Lcom/transsion/videofloat/view/VideoFloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->access$onSpaceClick(Lcom/transsion/videofloat/view/VideoFloatView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowLp$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 10
    .line 11
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    .line 13
    float-to-int p1, p1

    .line 14
    add-int/2addr v2, p1

    .line 15
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 16
    .line 17
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 18
    .line 19
    float-to-int p2, p2

    .line 20
    add-int/2addr p1, p2

    .line 21
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 28
    .line 29
    sub-int/2addr p1, p2

    .line 30
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenHeight$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    .line 36
    sub-int/2addr p2, v2

    .line 37
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-lez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p1, v3

    .line 44
    :goto_0
    invoke-static {v2, v3, p1}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 49
    .line 50
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 51
    .line 52
    if-lez p2, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move p2, v3

    .line 56
    :goto_1
    invoke-static {p1, v3, p2}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    .line 62
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowManager$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowLp$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 15
    .line 16
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    mul-float/2addr v2, p1

    .line 24
    float-to-int p1, v2

    .line 25
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    .line 27
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-le p1, v2, :cond_0

    .line 32
    .line 33
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    .line 39
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    .line 41
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getDefMinWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge p1, v2, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getDefMinWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    .line 53
    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    .line 55
    invoke-static {v1, p1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$updateSubtitleSize(Lcom/transsion/videofloat/view/VideoFloatView;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getFloatBean$p(Lcom/transsion/videofloat/view/VideoFloatView;)Ldw/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Ldw/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_0
    sget-object v2, Lcom/transsion/videofloat/bean/FloatPlayType;->SHORT_TV:Lcom/transsion/videofloat/bean/FloatPlayType;

    .line 71
    .line 72
    if-ne p1, v2, :cond_3

    .line 73
    .line 74
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    .line 76
    mul-int/lit8 p1, p1, 0x10

    .line 77
    .line 78
    div-int/lit8 p1, p1, 0x9

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    .line 83
    mul-int/lit8 p1, p1, 0x9

    .line 84
    .line 85
    div-int/lit8 p1, p1, 0x10

    .line 86
    .line 87
    :goto_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    .line 89
    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowManager$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.class public final Lcom/transsion/baseui/widget/c;
.super Landroid/text/style/ImageSpan;
.source "source.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:I

.field private final c:Ljava/lang/ref/WeakReference;

.field private d:Landroid/graphics/drawable/Animatable;

.field private e:Landroid/graphics/Rect;

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private final i:Lcom/transsion/baseui/widget/c$a;

.field private j:Landroid/view/ViewTreeObserver;

.field private final k:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;II)V
    .locals 1

    .line 1
    const-string v0, "drawable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 10
    .line 11
    iput p4, p0, Lcom/transsion/baseui/widget/c;->b:I

    .line 12
    .line 13
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    new-instance p2, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/transsion/baseui/widget/c;->f:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance p2, Lcom/transsion/baseui/widget/c$a;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/transsion/baseui/widget/c$a;-><init>(Lcom/transsion/baseui/widget/c;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 37
    .line 38
    new-instance p3, Lcom/transsion/baseui/widget/a;

    .line 39
    .line 40
    invoke-direct {p3, p0}, Lcom/transsion/baseui/widget/a;-><init>(Lcom/transsion/baseui/widget/c;)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Lcom/transsion/baseui/widget/c;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 44
    .line 45
    instance-of p3, p1, Landroid/graphics/drawable/Animatable;

    .line 46
    .line 47
    if-eqz p3, :cond_0

    .line 48
    .line 49
    move-object p3, p1

    .line 50
    check-cast p3, Landroid/graphics/drawable/Animatable;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/transsion/baseui/widget/c;->d:Landroid/graphics/drawable/Animatable;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->l()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->j()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/baseui/widget/c;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baseui/widget/c;->i(Lcom/transsion/baseui/widget/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lcom/transsion/baseui/widget/c;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baseui/widget/c;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/baseui/widget/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baseui/widget/c;->f:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/baseui/widget/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/baseui/widget/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/baseui/widget/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/baseui/widget/c;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lcom/transsion/baseui/widget/c;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method private final h(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 24
    .line 25
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method private static final i(Lcom/transsion/baseui/widget/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroid/graphics/drawable/Animatable;

    .line 15
    .line 16
    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/transsion/baseui/widget/c;->h:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/c;->h(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method private final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/baseui/widget/c;->j:Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 32
    .line 33
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->j:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/transsion/baseui/widget/c;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lcom/transsion/baseui/widget/c;->j:Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    return-void
.end method

.method private final o(FIIILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    if-eq p2, p4, :cond_0

    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget p4, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 15
    .line 16
    add-int/2addr p3, p4

    .line 17
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 18
    .line 19
    sub-int/2addr p4, p2

    .line 20
    div-int/lit8 p4, p4, 0x2

    .line 21
    .line 22
    sub-int/2addr p3, p4

    .line 23
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    div-int/lit8 p2, p2, 0x2

    .line 32
    .line 33
    sub-int/2addr p3, p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    sub-int/2addr p3, p4

    .line 46
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 47
    .line 48
    add-int/2addr p3, p2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 55
    .line 56
    sub-int p3, p4, p2

    .line 57
    .line 58
    :goto_0
    float-to-int p1, p1

    .line 59
    new-instance p2, Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    add-int/2addr p4, p1

    .line 70
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object p5

    .line 74
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result p5

    .line 78
    add-int/2addr p5, p3

    .line 79
    invoke-direct {p2, p1, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .line 81
    .line 82
    iput-object p2, p0, Lcom/transsion/baseui/widget/c;->e:Landroid/graphics/Rect;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    .line 1
    move-object v7, p0

    .line 2
    move-object v8, p1

    .line 3
    const-string v0, "canvas"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "text"

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "paint"

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v7, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v10, v0

    .line 28
    check-cast v10, Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-nez v10, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-boolean v0, v7, Lcom/transsion/baseui/widget/c;->h:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    move/from16 v1, p5

    .line 39
    .line 40
    move/from16 v2, p6

    .line 41
    .line 42
    move/from16 v3, p7

    .line 43
    .line 44
    move/from16 v4, p8

    .line 45
    .line 46
    move-object/from16 v5, p9

    .line 47
    .line 48
    move-object v6, v10

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/transsion/baseui/widget/c;->o(FIIILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    move-object v0, p0

    .line 54
    move/from16 v1, p5

    .line 55
    .line 56
    move/from16 v2, p6

    .line 57
    .line 58
    move/from16 v3, p7

    .line 59
    .line 60
    move/from16 v4, p8

    .line 61
    .line 62
    move-object/from16 v5, p9

    .line 63
    .line 64
    move-object v6, v10

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/transsion/baseui/widget/c;->o(FIIILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    instance-of v0, v10, Landroid/graphics/drawable/Animatable;

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, v7, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, v7, Lcom/transsion/baseui/widget/c;->a:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    move v0, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    .line 94
    :goto_0
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v3, v7, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 101
    .line 102
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    iget-object v2, v7, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 109
    .line 110
    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    if-eqz v0, :cond_4

    .line 114
    .line 115
    move-object v2, v10

    .line 116
    check-cast v2, Landroid/graphics/drawable/Animatable;

    .line 117
    .line 118
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_4

    .line 123
    .line 124
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    if-nez v0, :cond_5

    .line 129
    .line 130
    move-object v0, v10

    .line 131
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 132
    .line 133
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_5

    .line 138
    .line 139
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    if-eq v0, v1, :cond_6

    .line 152
    .line 153
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 158
    .line 159
    add-int v2, p7, v1

    .line 160
    .line 161
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 162
    .line 163
    sub-int/2addr v1, v0

    .line 164
    div-int/lit8 v1, v1, 0x2

    .line 165
    .line 166
    sub-int/2addr v2, v1

    .line 167
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    div-int/lit8 v0, v0, 0x2

    .line 176
    .line 177
    sub-int/2addr v2, v0

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 188
    .line 189
    sub-int v1, p7, v1

    .line 190
    .line 191
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 192
    .line 193
    add-int v2, v1, v0

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    sub-int v2, p8, v0

    .line 203
    .line 204
    :goto_2
    int-to-float v0, v2

    .line 205
    move/from16 v1, p5

    .line 206
    .line 207
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    const-string p3, "paint"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "text"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string p3, "getBounds(...)"

    .line 28
    .line 29
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p5, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    const/4 p4, 0x1

    .line 45
    if-eq p3, p4, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    div-int/lit8 p3, p3, 0x2

    .line 52
    .line 53
    iget p4, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 54
    .line 55
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 56
    .line 57
    sub-int/2addr p4, p1

    .line 58
    div-int/lit8 p4, p4, 0x4

    .line 59
    .line 60
    neg-int p1, p3

    .line 61
    sub-int/2addr p1, p4

    .line 62
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 63
    .line 64
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 65
    .line 66
    sub-int/2addr p3, p4

    .line 67
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 68
    .line 69
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 73
    .line 74
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 75
    .line 76
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 77
    .line 78
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 79
    .line 80
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 81
    .line 82
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 83
    .line 84
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 85
    .line 86
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 87
    .line 88
    :cond_2
    :goto_0
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    iget p2, p0, Lcom/transsion/baseui/widget/c;->b:I

    .line 91
    .line 92
    add-int/2addr p1, p2

    .line 93
    return p1
.end method

.method public final k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/c;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->l()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->j()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/c;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/transsion/baseui/widget/c;->f:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->n()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->d:Landroid/graphics/drawable/Animatable;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    .line 41
    .line 42
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

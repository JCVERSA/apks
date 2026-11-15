.class public final Lfw/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/view/ScaleGestureDetector;

.field private final d:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfw/c;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "videoFloatGestureListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lfw/a;->b:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 26
    .line 27
    new-instance v1, Lfw/a$b;

    .line 28
    .line 29
    invoke-direct {v1, p2, p0}, Lfw/a$b;-><init>(Lfw/c;Lfw/a;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lfw/a;->c:Landroid/view/ScaleGestureDetector;

    .line 36
    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    .line 38
    .line 39
    new-instance v1, Lfw/a$a;

    .line 40
    .line 41
    invoke-direct {v1, p0, p2}, Lfw/a$a;-><init>(Lfw/a;Lfw/c;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lfw/a;->d:Landroid/view/GestureDetector;

    .line 48
    .line 49
    return-void
.end method

.method public static final synthetic a(Lfw/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lfw/a;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lfw/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfw/a;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic c(Lfw/a;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfw/a;->a:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfw/a;->c:Landroid/view/ScaleGestureDetector;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lfw/a;->d:Landroid/view/GestureDetector;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    return p1
.end method

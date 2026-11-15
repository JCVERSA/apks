.class public final Lfw/a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfw/a;-><init>(Landroid/content/Context;Lfw/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:F

.field final synthetic c:Lfw/a;

.field final synthetic d:Lfw/c;


# direct methods
.method constructor <init>(Lfw/a;Lfw/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfw/a$a;->c:Lfw/a;

    .line 2
    .line 3
    iput-object p2, p0, Lfw/a$a;->d:Lfw/c;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lfw/a$a;->a:F

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lfw/a$a;->b:F

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const-string p1, "e2"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lfw/a$a;->c:Lfw/a;

    .line 7
    .line 8
    invoke-static {p1}, Lfw/a;->b(Lfw/a;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget p3, p0, Lfw/a$a;->a:F

    .line 21
    .line 22
    sub-float/2addr p1, p3

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iget p4, p0, Lfw/a$a;->b:F

    .line 28
    .line 29
    sub-float/2addr p3, p4

    .line 30
    iget-object p4, p0, Lfw/a$a;->d:Lfw/c;

    .line 31
    .line 32
    invoke-interface {p4, p1, p3}, Lfw/c;->b(FF)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lfw/a$a;->a:F

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lfw/a$a;->b:F

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lfw/a$a;->d:Lfw/c;

    .line 7
    .line 8
    invoke-interface {p1}, Lfw/c;->a()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1
.end method

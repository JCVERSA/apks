.class public final Lcom/transsion/baseui/widget/f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/widget/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/view/GestureDetector;

.field private i:Lcom/transsion/baseui/widget/f$a;

.field private j:Z

.field private k:Landroid/view/View;

.field private final l:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/baseui/widget/f;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/baseui/widget/f;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/f;->d:Z

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/baseui/widget/f$c;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/baseui/widget/f$c;-><init>(Lcom/transsion/baseui/widget/f;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/baseui/widget/f;->l:Landroid/view/GestureDetector$OnGestureListener;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/transsion/baseui/widget/f;->b:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/transsion/baseui/widget/f;->c:Landroid/view/View;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/transsion/baseui/widget/f;->m()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/transsion/baseui/widget/f;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/widget/f;->n(Lcom/transsion/baseui/widget/f;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baseui/widget/f;->i:Lcom/transsion/baseui/widget/f$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/baseui/widget/f;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baseui/widget/f;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic h(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Lcom/transsion/baseui/widget/f;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/baseui/widget/f;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/baseui/widget/f;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method private final m()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/widget/f;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/baseui/widget/f;->l:Landroid/view/GestureDetector$OnGestureListener;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/baseui/widget/f;->h:Landroid/view/GestureDetector;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/baseui/widget/f;->c:Landroid/view/View;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/transsion/baseui/widget/e;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/transsion/baseui/widget/e;-><init>(Lcom/transsion/baseui/widget/f;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/baseui/widget/f;->h:Landroid/view/GestureDetector;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/transsion/baseui/widget/f$b;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/transsion/baseui/widget/f$b;-><init>(Lcom/transsion/baseui/widget/f;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private static final n(Lcom/transsion/baseui/widget/f;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/baseui/widget/f;->i:Lcom/transsion/baseui/widget/f$a;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/transsion/baseui/widget/f$a;->e()V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->g:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->f:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->e:Z

    .line 25
    .line 26
    :goto_0
    iget-object p0, p0, Lcom/transsion/baseui/widget/f;->h:Landroid/view/GestureDetector;

    .line 27
    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final o(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final p(Landroid/view/View;I)Z
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    div-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    if-ge p2, p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final q(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final r(Landroid/view/View;I)Z
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    div-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    if-le p2, p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final s(Lcom/transsion/baseui/widget/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/widget/f;->i:Lcom/transsion/baseui/widget/f$a;

    .line 2
    .line 3
    return-void
.end method

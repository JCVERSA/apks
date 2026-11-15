.class public final Lsn/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private c:Z

.field private final d:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "startView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "endView"

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
    iput-object p1, p0, Lsn/c;->a:Landroid/view/View;

    .line 15
    .line 16
    iput-object p2, p0, Lsn/c;->b:Landroid/view/View;

    .line 17
    .line 18
    new-instance p1, Lsn/a;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lsn/a;-><init>(Lsn/c;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lsn/c;->d:Lkotlin/Lazy;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lsn/c;)Lsn/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lsn/c;->g(Lsn/c;)Lsn/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lsn/c;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsn/c;->h(Lsn/c;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e()Lsn/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lsn/c;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsn/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final g(Lsn/c;)Lsn/g;
    .locals 3

    .line 1
    new-instance v0, Lsn/g;

    .line 2
    .line 3
    iget-object v1, p0, Lsn/c;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v1, Landroid/app/Activity;

    .line 15
    .line 16
    new-instance v2, Lsn/b;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lsn/b;-><init>(Lsn/c;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lsn/g;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static final h(Lsn/c;I)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lsn/c;->c:Z

    .line 11
    .line 12
    invoke-direct {p0, v0, p1}, Lsn/c;->i(ZI)V

    .line 13
    .line 14
    .line 15
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final i(ZI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne p2, v2, :cond_0

    .line 10
    .line 11
    move v2, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_1
    iget-object p1, p0, Lsn/c;->a:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    iget-object p2, p0, Lsn/c;->a:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lsn/c;->b:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    iget-object p2, p0, Lsn/c;->b:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsn/c;->e()Lsn/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsn/c;->e()Lsn/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsn/c;->c:Z

    .line 2
    .line 3
    invoke-direct {p0, p1, p1}, Lsn/c;->i(ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.class public Lcom/tn/lib/widget/toast/core/g;
.super Landroid/os/Handler;
.source "source.java"

# interfaces
.implements Lgh/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/widget/toast/core/g$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/tn/lib/widget/toast/core/g$a;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/tn/lib/widget/toast/core/a;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Lgh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/lib/widget/toast/core/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/lib/widget/toast/core/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/lib/widget/toast/core/g;->e:Lcom/tn/lib/widget/toast/core/g$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final d(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x14

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


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput v0, v1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    const-wide/16 v2, 0xc8

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(Lgh/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lgh/c;

    .line 2
    .line 3
    return-void
.end method

.method public c(Landroid/app/Application;)Lgh/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->b:Lcom/tn/lib/widget/toast/core/a;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tn/lib/widget/toast/core/a;->a()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/tn/lib/widget/toast/core/b;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/tn/lib/widget/toast/core/b;-><init>(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x19

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/tn/lib/widget/toast/core/d;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lcom/tn/lib/widget/toast/core/d;-><init>(Landroid/app/Application;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/tn/lib/widget/toast/core/e;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/tn/lib/widget/toast/core/e;-><init>(Landroid/app/Application;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lgh/c;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1}, Lgh/c;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {v1, p1}, Lgh/a;->b(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lgh/c;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lgh/c;->getGravity()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lgh/c;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Lgh/c;->getXOffset()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v2, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lgh/c;

    .line 66
    .line 67
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Lgh/c;->getYOffset()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-interface {v1, p1, v0, v2}, Lgh/a;->setGravity(III)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lgh/c;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Lgh/c;->getHorizontalMargin()F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lgh/c;

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Lgh/c;->getVerticalMargin()F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-interface {v1, p1, v0}, Lgh/a;->setMargin(FF)V

    .line 96
    .line 97
    .line 98
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->c:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq v1, v2, :cond_3

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    if-eq v1, p1, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    check-cast v0, Lgh/a;

    .line 32
    .line 33
    invoke-interface {v0}, Lgh/a;->cancel()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    instance-of v1, p1, Ljava/lang/CharSequence;

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast p1, Ljava/lang/CharSequence;

    .line 50
    .line 51
    check-cast v0, Lgh/a;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-interface {v0}, Lgh/a;->cancel()V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->a:Landroid/app/Application;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/tn/lib/widget/toast/core/g;->c(Landroid/app/Application;)Lgh/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/tn/lib/widget/toast/core/g;->c:Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/tn/lib/widget/toast/core/g;->d(Ljava/lang/CharSequence;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-interface {v0, v1}, Lgh/a;->setDuration(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, p1}, Lgh/a;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 85
    .line 86
    invoke-interface {v0}, Lgh/a;->show()V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :goto_1
    new-instance p1, Lhh/a;

    .line 106
    .line 107
    invoke-direct {p1}, Lhh/a;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/g;->b(Lgh/c;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void
.end method

.method public registerStrategy(Landroid/app/Application;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->a:Landroid/app/Application;

    .line 2
    .line 3
    sget-object v0, Lcom/tn/lib/widget/toast/core/a;->b:Lcom/tn/lib/widget/toast/core/a$a;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tn/lib/widget/toast/core/a$a;->a(Landroid/app/Application;)Lcom/tn/lib/widget/toast/core/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->b:Lcom/tn/lib/widget/toast/core/a;

    .line 13
    .line 14
    return-void
.end method

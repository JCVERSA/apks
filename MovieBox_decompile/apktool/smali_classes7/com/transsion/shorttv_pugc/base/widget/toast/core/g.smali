.class public Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;
.super Landroid/os/Handler;
.source "source.java"

# interfaces
.implements Los/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/base/widget/toast/core/g$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/shorttv_pugc/base/widget/toast/core/g$a;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/transsion/shorttv_pugc/base/widget/toast/core/a;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Los/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->e:Lcom/transsion/shorttv_pugc/base/widget/toast/core/g$a;

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

.method public b(Los/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d:Los/c;

    .line 2
    .line 3
    return-void
.end method

.method public c(Landroid/app/Application;)Los/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->b:Lcom/transsion/shorttv_pugc/base/widget/toast/core/a;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/a;->a()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/b;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/b;-><init>(Landroid/app/Activity;)V

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
    new-instance v1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/d;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/d;-><init>(Landroid/app/Application;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/e;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/e;-><init>(Landroid/app/Application;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    instance-of v0, v1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/b;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v2, 0x1e

    .line 42
    .line 43
    if-lt v0, v2, :cond_2

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 53
    .line 54
    if-ge v0, v2, :cond_3

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d:Los/c;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Los/c;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {v1, p1}, Los/a;->setView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d:Los/c;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Los/c;->getGravity()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d:Los/c;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Los/c;->getXOffset()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d:Los/c;

    .line 87
    .line 88
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v2}, Los/c;->getYOffset()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-interface {v1, p1, v0, v2}, Los/a;->setGravity(III)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d:Los/c;

    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Los/c;->getHorizontalMargin()F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d:Los/c;

    .line 108
    .line 109
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Los/c;->getVerticalMargin()F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-interface {v1, p1, v0}, Los/a;->setMargin(FF)V

    .line 117
    .line 118
    .line 119
    :cond_3
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
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->c:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Los/a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    if-eq v1, p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    if-nez v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-interface {v0}, Los/a;->cancel()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

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
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-interface {v0}, Los/a;->cancel()V

    .line 54
    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->a:Landroid/app/Application;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->c(Landroid/app/Application;)Los/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->c:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->d(Ljava/lang/CharSequence;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-interface {v0, v1}, Los/a;->setDuration(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, p1}, Los/a;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Los/a;->show()V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lps/a;

    .line 86
    .line 87
    invoke-direct {p1}, Lps/a;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->b(Los/c;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method public registerStrategy(Landroid/app/Application;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->a:Landroid/app/Application;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/a;->b:Lcom/transsion/shorttv_pugc/base/widget/toast/core/a$a;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/a$a;->a(Landroid/app/Application;)Lcom/transsion/shorttv_pugc/base/widget/toast/core/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;->b:Lcom/transsion/shorttv_pugc/base/widget/toast/core/a;

    .line 13
    .line 14
    return-void
.end method

.class public Lcom/transsion/audio/view/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/view/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/audio/view/FloatingMagnetView;

.field private b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Lcom/transsion/baselib/db/audio/AudioBean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/view/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/audio/view/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audio/view/d;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/audio/view/d;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/transsion/audio/view/d;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/transsion/audio/view/d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audio/view/d;->n()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/view/d;->n()Landroid/widget/FrameLayout;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method private j(Landroid/app/Activity;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/audio/view/d;->w(I)Lcom/transsion/audio/view/d;

    .line 7
    .line 8
    .line 9
    const-class v0, Lep/a;

    .line 10
    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lep/a;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Lep/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/audio/view/FloatingMagnetView;->isPackUp()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/audio/view/FloatingMagnetView;->expanded()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    new-instance p2, Lcom/transsion/audio/view/EnFloatingView;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Lcom/transsion/audio/view/EnFloatingView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 46
    .line 47
    invoke-direct {p0, p2}, Lcom/transsion/audio/view/d;->e(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static k()Lcom/transsion/audio/view/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/view/d$b;->a()Lcom/transsion/audio/view/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private l(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v1, 0x1020002

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private n()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public d(Landroid/app/Activity;Lcom/transsion/baselib/db/audio/AudioBean;)Lcom/transsion/audio/view/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/view/d;->j(Landroid/app/Activity;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public f(Landroid/app/Activity;)Lcom/transsion/audio/view/d;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/d;->l(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/view/d;->g(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public g(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/transsion/audio/view/d;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/audio/view/d;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/audio/view/FloatingMagnetView;->packUp()V

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz p2, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Lcom/transsion/audio/view/d$a;

    .line 34
    .line 35
    invoke-direct {v1, p0, p2}, Lcom/transsion/audio/view/d$a;-><init>(Lcom/transsion/audio/view/d;Landroid/widget/FrameLayout;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/FloatingMagnetView;->setOnOptionListener(Lcom/transsion/audio/view/EnFloatingView$f;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-ne v0, p2, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->attach(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    return-void
.end method

.method public h(Landroid/app/Activity;)Lcom/transsion/audio/view/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/d;->l(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/audio/view/d;->i(Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public i(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/view/d;->n()Landroid/widget/FrameLayout;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-ne v0, p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public m()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public p(Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/audio/view/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-float p1, v0

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    long-to-float p2, v0

    .line 18
    div-float/2addr p1, p2

    .line 19
    const/high16 p2, 0x42c80000    # 100.0f

    .line 20
    .line 21
    mul-float/2addr p1, p2

    .line 22
    float-to-int p1, p1

    .line 23
    const/16 p2, 0x64

    .line 24
    .line 25
    if-le p1, p2, :cond_0

    .line 26
    .line 27
    move p1, p2

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->onProgress(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object p0
.end method

.method public q(I)Lcom/transsion/audio/view/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->onStateChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/audio/view/FloatingMagnetView;->packUp()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/audio/view/FloatingMagnetView;->packUpAnimation()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public t(Lcom/transsion/baselib/db/audio/AudioBean;)Lcom/transsion/audio/view/d;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 4
    .line 5
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "prepare..mEnFloatingView.."

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    const-string v2, "EnFloatingView"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/audio/view/FloatingMagnetView;->prepare()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object p0
.end method

.method public u(Lep/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v(Lep/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w(I)Lcom/transsion/audio/view/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/db/audio/AudioBean;->setTitle(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

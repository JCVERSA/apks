.class final Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final g:Landroid/os/Handler;


# instance fields
.field private final a:Lkr/a;

.field private final b:Lcom/transsion/shorttv/base/widget/toast/core/i;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lkr/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;-><init>(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->e:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;-><init>(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->f:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->a:Lkr/a;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p2, Lcom/transsion/shorttv/base/widget/toast/core/i;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/transsion/shorttv/base/widget/toast/core/i;-><init>(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b:Lcom/transsion/shorttv/base/widget/toast/core/i;

    .line 32
    .line 33
    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->a:Lkr/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv/base/widget/toast/core/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b:Lcom/transsion/shorttv/base/widget/toast/core/i;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->f:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->f:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->e:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->e:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

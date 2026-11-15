.class public Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final n:Ljava/lang/String; = "CameraInstance"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/camera/k;

.field private b:Lcom/journeyapps/barcodescanner/camera/j;

.field private c:Lcom/journeyapps/barcodescanner/camera/h;

.field private d:Landroid/os/Handler;

.field private e:Lcom/journeyapps/barcodescanner/camera/m;

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 9
    .line 10
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 16
    .line 17
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    .line 23
    .line 24
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    .line 30
    .line 31
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    .line 37
    .line 38
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->m:Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-static {}, Laf/s;->a()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/k;->d()Lcom/journeyapps/barcodescanner/camera/k;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 53
    .line 54
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/h;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->p(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/os/Handler;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h:Landroid/os/Handler;

    .line 72
    .line 73
    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "CameraInstance is not open"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->v(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->t(Lcom/journeyapps/barcodescanner/camera/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->u(Lcom/journeyapps/barcodescanner/camera/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->s(Lcom/journeyapps/barcodescanner/camera/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->w(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Laf/q;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->q()Laf/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/j;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 2
    .line 3
    return-object p0
.end method

.method private q()Laf/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/h;->i()Laf/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private synthetic s(Lcom/journeyapps/barcodescanner/camera/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->d(Lcom/journeyapps/barcodescanner/camera/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic t(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->n(Lcom/journeyapps/barcodescanner/camera/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic u(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 7
    .line 8
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/g;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic v(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->u(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private w(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_camera_error:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lcom/journeyapps/barcodescanner/camera/m;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Lcom/journeyapps/barcodescanner/camera/m;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->r(Lcom/journeyapps/barcodescanner/camera/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public B(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public C(Lcom/journeyapps/barcodescanner/camera/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/j;

    .line 2
    .line 3
    return-void
.end method

.method public D(Z)V
    .locals 2

    .line 1
    invoke-static {}, Laf/s;->a()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 9
    .line 10
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/e;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/e;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-static {}, Laf/s;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->F()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public m(Lcom/journeyapps/barcodescanner/camera/i;)V
    .locals 2

    .line 1
    invoke-static {}, Laf/s;->a()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 9
    .line 10
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/f;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/f;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/i;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-static {}, Laf/s;->a()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->m:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 21
    .line 22
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-static {}, Laf/s;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->F()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public p()Lcom/journeyapps/barcodescanner/camera/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Lcom/journeyapps/barcodescanner/camera/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()V
    .locals 2

    .line 1
    invoke-static {}, Laf/s;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->e(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public y(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/d;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public z(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->p(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

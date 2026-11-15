.class public final Landroidx/media3/common/util/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/g$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/util/p;

.field private final b:Landroidx/media3/common/util/p;

.field private final c:Landroidx/media3/common/util/g$a;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p4, p2, v0}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p0, Landroidx/media3/common/util/g;->a:Landroidx/media3/common/util/p;

    .line 10
    .line 11
    invoke-interface {p4, p3, v0}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/media3/common/util/g;->b:Landroidx/media3/common/util/p;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/common/util/g;->d:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p5, p0, Landroidx/media3/common/util/g;->c:Landroidx/media3/common/util/g$a;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/g;Lcom/google/common/base/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/g;->g(Lcom/google/common/base/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/media3/common/util/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/g;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/media3/common/util/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/g;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/util/g;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/media3/common/util/g;->k(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/util/g;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/common/util/g;->f:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/media3/common/util/g;->k(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic g(Lcom/google/common/base/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/common/util/g;->b:Landroidx/media3/common/util/p;

    .line 10
    .line 11
    new-instance v1, Landroidx/media3/common/util/f;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Landroidx/media3/common/util/f;-><init>(Landroidx/media3/common/util/g;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private k(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/common/util/g;->d:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/common/util/g;->c:Landroidx/media3/common/util/g$a;

    .line 12
    .line 13
    invoke-interface {v1, v0, p1}, Landroidx/media3/common/util/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/g;->b:Landroidx/media3/common/util/p;

    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/common/util/p;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/common/util/g;->d:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/g;->a:Landroidx/media3/common/util/p;

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/media3/common/util/p;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    .line 31
    .line 32
    return-object v0
.end method

.method public h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/g;->a:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/common/util/g;->b:Landroidx/media3/common/util/p;

    .line 4
    .line 5
    new-instance v1, Landroidx/media3/common/util/d;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Landroidx/media3/common/util/d;-><init>(Landroidx/media3/common/util/g;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public j(Lcom/google/common/base/f;Lcom/google/common/base/f;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/g;->b:Landroidx/media3/common/util/p;

    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/common/util/p;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroidx/media3/common/util/g;->f:I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    iput v0, p0, Landroidx/media3/common/util/g;->f:I

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/common/util/g;->a:Landroidx/media3/common/util/p;

    .line 26
    .line 27
    new-instance v1, Landroidx/media3/common/util/e;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Landroidx/media3/common/util/e;-><init>(Landroidx/media3/common/util/g;Lcom/google/common/base/f;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Landroidx/media3/common/util/g;->d:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {p1, p2}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/common/util/g;->k(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

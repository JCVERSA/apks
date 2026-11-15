.class public final Lcom/yandex/mobile/ads/impl/vf2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/vf2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/vf2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/vf2;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/yandex/mobile/ads/impl/vf2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    return-void
.end method

.method private a(JI)V
    .locals 1

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 17
    invoke-interface {p0, p3, p1, p2}, Lcom/yandex/mobile/ads/impl/vf2;->a(IJ)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/cg2;)V
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 21
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2;->a(Lcom/yandex/mobile/ads/impl/cg2;)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 19
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Object;J)V
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 15
    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vf2;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method private b(IJ)V
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 9
    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vf2;->b(IJ)V

    return-void
.end method

.method private b(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vf2;->b(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/py;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2$a;->c(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 7
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;JJ)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 5
    invoke-interface/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/vf2;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method private c(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 1

    .line 2
    monitor-enter p1

    .line 3
    monitor-exit p1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 5
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2;->c(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/cg2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2$a;->a(Lcom/yandex/mobile/ads/impl/cg2;)V

    return-void
.end method

.method private d(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->b:Lcom/yandex/mobile/ads/impl/vf2;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 3
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2;->d(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/vf2$a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/vf2$a;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vf2$a;->a(JI)V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vf2$a;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vf2$a;->b(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V

    return-void
.end method

.method public static synthetic h(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/py;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vf2$a;->d(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method public static synthetic j(Lcom/yandex/mobile/ads/impl/vf2$a;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vf2$a;->b(IJ)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lrvd;

    invoke-direct {v1, p0, p1, p2, p3}, Lrvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    new-instance v3, Lxvd;

    invoke-direct {v3, p0, p1, v0, v1}, Lxvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 2
    .param p2    # Lcom/yandex/mobile/ads/impl/ty;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lsvd;

    invoke-direct {v1, p0, p1, p2}, Lsvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 2

    .line 6
    monitor-enter p1

    .line 7
    monitor-exit p1

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Lpvd;

    invoke-direct {v1, p0, p1}, Lpvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/py;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lvvd;

    invoke-direct {v1, p0, p1}, Lvvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v8, Lyvd;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lyvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/cg2;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lqvd;

    invoke-direct {v1, p0, p1}, Lqvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/cg2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lwvd;

    invoke-direct {v1, p0, p1}, Lwvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/py;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Luvd;

    invoke-direct {v1, p0, p1}, Luvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(IJ)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vf2$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Ltvd;

    invoke-direct {v1, p0, p2, p3, p1}, Ltvd;-><init>(Lcom/yandex/mobile/ads/impl/vf2$a;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

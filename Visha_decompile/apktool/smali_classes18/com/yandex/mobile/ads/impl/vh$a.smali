.class public final Lcom/yandex/mobile/ads/impl/vh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/vh;
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

.field private final b:Lcom/yandex/mobile/ads/impl/vh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/vh;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/yandex/mobile/ads/impl/vh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    return-void
.end method

.method private a(IJJ)V
    .locals 6

    .line 18
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 19
    invoke-interface/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/vh;->a(IJJ)V

    return-void
.end method

.method private a(J)V
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 15
    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vh;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/vh$a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 17
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vh;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method private b(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vh;->a(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/vh$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/vh$a;->a(IJJ)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 9
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vh;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;JJ)V
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 7
    invoke-interface/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/vh;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method private c(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 1

    .line 4
    monitor-enter p1

    .line 5
    monitor-exit p1

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 7
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vh;->a(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 3
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vh;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private d(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 5
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vh;->b(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/vh$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vh$a;->a(J)V

    return-void
.end method

.method private d(Ljava/lang/Exception;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->b:Lcom/yandex/mobile/ads/impl/vh;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 3
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vh;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/vh$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->a(Z)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/py;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->c(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method public static synthetic h(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/py;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->d(Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method

.method public static synthetic i(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic j(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vh$a;->b(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 2
    .param p2    # Lcom/yandex/mobile/ads/impl/ty;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lhwd;

    invoke-direct {v1, p0, p1, p2}, Lhwd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 2

    .line 8
    monitor-enter p1

    .line 9
    monitor-exit p1

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcwd;

    invoke-direct {v1, p0, p1}, Lcwd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/py;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ldwd;

    invoke-direct {v1, p0, p1}, Ldwd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Liwd;

    invoke-direct {v1, p0, p1}, Liwd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5
    new-instance v8, Lgwd;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lgwd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(IJJ)V
    .locals 9

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 18
    new-instance v8, Lawd;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lawd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Lbwd;

    invoke-direct {v1, p0, p1, p2}, Lbwd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lzvd;

    invoke-direct {v1, p0, p1}, Lzvd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/py;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lewd;

    invoke-direct {v1, p0, p1}, Lewd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vh$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lfwd;

    invoke-direct {v1, p0, p1}, Lfwd;-><init>(Lcom/yandex/mobile/ads/impl/vh$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.class public final Lcom/yandex/mobile/ads/impl/g11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/g11$a;,
        Lcom/yandex/mobile/ads/impl/g11$b;,
        Lcom/yandex/mobile/ads/impl/g11$c;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/yandex/mobile/ads/impl/g11;

.field public static final synthetic h:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b11;

.field private final b:Lcom/yandex/mobile/ads/impl/f11;

.field private final c:Lcom/yandex/mobile/ads/impl/nv1;

.field private final d:Lcom/yandex/mobile/ads/impl/bv1;

.field private e:Lcom/yandex/mobile/ads/impl/g11$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/g11;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/b11;Lcom/yandex/mobile/ads/impl/f11;Lcom/yandex/mobile/ads/impl/nv1;Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 6

    .line 1
    sget-object v5, Lcom/yandex/mobile/ads/impl/g11$c;->b:Lcom/yandex/mobile/ads/impl/g11$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/g11;-><init>(Lcom/yandex/mobile/ads/impl/b11;Lcom/yandex/mobile/ads/impl/f11;Lcom/yandex/mobile/ads/impl/nv1;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g11$c;)V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/impl/b11;Lcom/yandex/mobile/ads/impl/f11;Lcom/yandex/mobile/ads/impl/nv1;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g11$c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g11;->a:Lcom/yandex/mobile/ads/impl/b11;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g11;->b:Lcom/yandex/mobile/ads/impl/f11;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/g11;->c:Lcom/yandex/mobile/ads/impl/nv1;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/g11;->d:Lcom/yandex/mobile/ads/impl/bv1;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/g11;->e:Lcom/yandex/mobile/ads/impl/g11$c;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/g11;)Lcom/yandex/mobile/ads/impl/f11;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g11;->b:Lcom/yandex/mobile/ads/impl/f11;

    return-object p0
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/g11;
    .locals 1

    .line 10
    sget-object v0, Lcom/yandex/mobile/ads/impl/g11;->g:Lcom/yandex/mobile/ads/impl/g11;

    return-object v0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 1

    .line 8
    const-string v0, "$initializationListener"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/dt;->onInitializationCompleted()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/g11;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 1

    .line 6
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$initializationListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/g11;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/g11;Lcom/yandex/mobile/ads/impl/g11$c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g11;->e:Lcom/yandex/mobile/ads/impl/g11$c;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object v0, Lcom/yandex/mobile/ads/impl/g11;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private final b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 6

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/g11;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/hl0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g11;->a:Lcom/yandex/mobile/ads/impl/b11;

    invoke-direct {v1, v2, p2}, Lcom/yandex/mobile/ads/impl/hl0;-><init>(Lcom/yandex/mobile/ads/impl/b11;Lcom/yandex/mobile/ads/impl/dt;)V

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g11;->e:Lcom/yandex/mobile/ads/impl/g11$c;

    sget-object v3, Lcom/yandex/mobile/ads/impl/g11$c;->d:Lcom/yandex/mobile/ads/impl/g11$c;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v1, v5

    move v5, v4

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g11;->b:Lcom/yandex/mobile/ads/impl/f11;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/f11;->a(Lcom/yandex/mobile/ads/impl/hl0;)V

    .line 7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g11;->e:Lcom/yandex/mobile/ads/impl/g11$c;

    sget-object v2, Lcom/yandex/mobile/ads/impl/g11$c;->b:Lcom/yandex/mobile/ads/impl/g11$c;

    if-ne v1, v2, :cond_1

    .line 8
    sget-object v1, Lcom/yandex/mobile/ads/impl/g11$c;->c:Lcom/yandex/mobile/ads/impl/g11$c;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/g11;->e:Lcom/yandex/mobile/ads/impl/g11$c;

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move v1, v5

    .line 9
    :goto_0
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    if-eqz v5, :cond_2

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g11;->a:Lcom/yandex/mobile/ads/impl/b11;

    new-instance v2, Lofd;

    invoke-direct {v2, p2}, Lofd;-><init>(Lcom/yandex/mobile/ads/impl/dt;)V

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/b11;->b(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 12
    new-instance p2, Lcom/yandex/mobile/ads/impl/g11$b;

    invoke-direct {p2, p0}, Lcom/yandex/mobile/ads/impl/g11$b;-><init>(Lcom/yandex/mobile/ads/impl/g11;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g11;->c:Lcom/yandex/mobile/ads/impl/nv1;

    .line 14
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g11;->d:Lcom/yandex/mobile/ads/impl/bv1;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInitializationListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-static {v0, v4, v0}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    .line 18
    new-instance v2, Lcom/yandex/mobile/ads/impl/mv1;

    invoke-direct {v2, p1, v1, v0, p2}, Lcom/yandex/mobile/ads/impl/mv1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lnk1;Lcom/yandex/mobile/ads/impl/ov1$a;)V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g11;->a:Lcom/yandex/mobile/ads/impl/b11;

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/b11;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    .line 20
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g11;->a(Lcom/yandex/mobile/ads/impl/dt;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/g11;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/yandex/mobile/ads/impl/g11;->g:Lcom/yandex/mobile/ads/impl/g11;

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/g11;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/g11;->a(Lcom/yandex/mobile/ads/impl/g11;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 2

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p0;->a(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g11;->a:Lcom/yandex/mobile/ads/impl/b11;

    new-instance v1, Lnfd;

    invoke-direct {v1, p0, p1, p2}, Lnfd;-><init>(Lcom/yandex/mobile/ads/impl/g11;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/b11;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.class public final Lcom/yandex/mobile/ads/impl/kj0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/kj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/oj0;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/gk0;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Lcom/yandex/mobile/ads/impl/j01;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/oj0;Ljava/util/Set;Lcom/yandex/mobile/ads/impl/gk0;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/yandex/mobile/ads/impl/j01;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/oj0;",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/gk0;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lcom/yandex/mobile/ads/impl/j01;",
            ")V"
        }
    .end annotation

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValues"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imagesFetchListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCounter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryUtils"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->a:Lcom/yandex/mobile/ads/impl/oj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->c:Lcom/yandex/mobile/ads/impl/gk0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->f:Lcom/yandex/mobile/ads/impl/j01;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/kj0$a;)Lcom/yandex/mobile/ads/impl/gk0;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->c:Lcom/yandex/mobile/ads/impl/gk0;

    return-object p0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/lang/String;IILjava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 2

    .line 20
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fetchUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loadedImages"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageValue"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->a:Lcom/yandex/mobile/ads/impl/oj0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/kj0$a$a;

    invoke-direct {v1, p0, p4, p5}, Lcom/yandex/mobile/ads/impl/kj0$a$a;-><init>(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/yandex/mobile/ads/impl/oj0;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/oj0$d;II)Lcom/yandex/mobile/ads/impl/oj0$c;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->c:Lcom/yandex/mobile/ads/impl/gk0;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gk0;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/xj0;)Z
    .locals 3

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result p1

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->f:Lcom/yandex/mobile/ads/impl/j01;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j01;->a()J

    move-result-wide v1

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x4

    int-to-float p0, v0

    const/high16 p1, 0x49800000    # 1048576.0f

    add-float/2addr p0, p1

    long-to-float p1, v1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 8
    new-array p1, p0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/lang/String;IILjava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/kj0$a;->a(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/lang/String;IILjava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 10
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yandex/mobile/ads/impl/xj0;

    .line 12
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/xj0;->f()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v4

    .line 14
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v3

    .line 15
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->e([Ljava/lang/Object;)V

    .line 16
    invoke-direct {p0, v6}, Lcom/yandex/mobile/ads/impl/kj0$a;->a(Lcom/yandex/mobile/ads/impl/xj0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->d:Landroid/os/Handler;

    new-instance v10, Lkld;

    move-object v0, v10

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lkld;-><init>(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/lang/String;IILjava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj0$a;->c:Lcom/yandex/mobile/ads/impl/gk0;

    invoke-interface {v0, v7}, Lcom/yandex/mobile/ads/impl/gk0;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

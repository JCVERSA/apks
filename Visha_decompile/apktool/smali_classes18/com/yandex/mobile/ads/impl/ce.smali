.class public final Lcom/yandex/mobile/ads/impl/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/Object;

.field private static volatile j:Lcom/yandex/mobile/ads/impl/ce;

.field public static final synthetic k:I


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/e60;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lnk1;

.field private final e:Lcom/yandex/mobile/ads/impl/ae;

.field private final f:Lcom/yandex/mobile/ads/impl/be;

.field private final g:Lcom/yandex/mobile/ads/impl/y42;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ce;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJLjava/util/Set;Lnk1;Lcom/yandex/mobile/ads/impl/ae;Lcom/yandex/mobile/ads/impl/be;Lcom/yandex/mobile/ads/impl/y42;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/e60;",
            ">;",
            "Lnk1;",
            "Lcom/yandex/mobile/ads/impl/ae;",
            "Lcom/yandex/mobile/ads/impl/be;",
            "Lcom/yandex/mobile/ads/impl/y42;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ce;->a:J

    .line 3
    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/ce;->b:J

    .line 4
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ce;->c:Ljava/util/Set;

    .line 5
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ce;->d:Lnk1;

    .line 6
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ce;->e:Lcom/yandex/mobile/ads/impl/ae;

    .line 7
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/ce;->f:Lcom/yandex/mobile/ads/impl/be;

    .line 8
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/ce;->g:Lcom/yandex/mobile/ads/impl/y42;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ce;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/util/Set;Lnk1;Lcom/yandex/mobile/ads/impl/ae;Lcom/yandex/mobile/ads/impl/be;Lcom/yandex/mobile/ads/impl/y42;I)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p9}, Lcom/yandex/mobile/ads/impl/ce;-><init>(JJLjava/util/Set;Lnk1;Lcom/yandex/mobile/ads/impl/ae;Lcom/yandex/mobile/ads/impl/be;Lcom/yandex/mobile/ads/impl/y42;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ce;)Lcom/yandex/mobile/ads/impl/ae;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce;->e:Lcom/yandex/mobile/ads/impl/ae;

    return-object p0
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/ce;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/ce;->j:Lcom/yandex/mobile/ads/impl/ce;

    return-object v0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/ce;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ce;->a:J

    return-wide v0
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/ce;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/ce;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ce;->b:J

    return-wide v0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/ce;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/ce;)V
    .locals 0

    sput-object p0, Lcom/yandex/mobile/ads/impl/ce;->j:Lcom/yandex/mobile/ads/impl/ce;

    return-void
.end method

.method public static final f(Lcom/yandex/mobile/ads/impl/ce;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ce;->g:Lcom/yandex/mobile/ads/impl/y42;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getAllStackTraces(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ce;->c:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/j22;->a([Ljava/lang/StackTraceElement;Ljava/util/Set;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce;->f:Lcom/yandex/mobile/ads/impl/be;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/be;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ce;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ce;->d:Lnk1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/ce$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/yandex/mobile/ads/impl/ce$a;-><init>(Lcom/yandex/mobile/ads/impl/ce;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_0
    return-void
.end method

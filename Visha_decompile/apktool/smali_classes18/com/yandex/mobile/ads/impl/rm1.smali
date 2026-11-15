.class public final Lcom/yandex/mobile/ads/impl/rm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nd0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/md0;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/yandex/mobile/ads/impl/ot;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/md0;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/rm1;-><init>(Lcom/yandex/mobile/ads/impl/md0;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/md0;Landroid/os/Handler;)V
    .locals 1

    .line 3
    const-string v0, "handler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rm1;->a:Lcom/yandex/mobile/ads/impl/md0;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rm1;->b:Landroid/os/Handler;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/q6;Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 1

    .line 5
    const-string v0, "$adPresentationError"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/ky1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/q6;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ky1;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/rm1;->c:Lcom/yandex/mobile/ads/impl/ot;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ot;->a(Lcom/yandex/mobile/ads/impl/ky1;)V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rm1;->c:Lcom/yandex/mobile/ads/impl/ot;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ot;->onAdClicked()V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/rm1;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 1

    .line 9
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rm1;->c:Lcom/yandex/mobile/ads/impl/ot;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ot;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rm1;->c:Lcom/yandex/mobile/ads/impl/ot;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ot;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method private static final c(Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rm1;->c:Lcom/yandex/mobile/ads/impl/ot;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ot;->onAdShown()V

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rm1;->a:Lcom/yandex/mobile/ads/impl/md0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/md0;->onAdShown()V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rm1;->c(Lcom/yandex/mobile/ads/impl/rm1;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/rm1;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/rm1;->a(Lcom/yandex/mobile/ads/impl/rm1;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rm1;->b(Lcom/yandex/mobile/ads/impl/rm1;)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rm1;->a(Lcom/yandex/mobile/ads/impl/rm1;)V

    return-void
.end method

.method public static synthetic h(Lcom/yandex/mobile/ads/impl/q6;Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/rm1;->a(Lcom/yandex/mobile/ads/impl/q6;Lcom/yandex/mobile/ads/impl/rm1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/nm2;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rm1;->c:Lcom/yandex/mobile/ads/impl/ot;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/q6;)V
    .locals 2

    .line 3
    const-string v0, "adPresentationError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rm1;->b:Landroid/os/Handler;

    new-instance v1, Lxrd;

    invoke-direct {v1, p1, p0}, Lxrd;-><init>(Lcom/yandex/mobile/ads/impl/q6;Lcom/yandex/mobile/ads/impl/rm1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rm1;->b:Landroid/os/Handler;

    new-instance v1, Lasd;

    invoke-direct {v1, p0, p1}, Lasd;-><init>(Lcom/yandex/mobile/ads/impl/rm1;Lcom/yandex/mobile/ads/impl/t4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rm1;->b:Landroid/os/Handler;

    new-instance v1, Lbsd;

    invoke-direct {v1, p0}, Lbsd;-><init>(Lcom/yandex/mobile/ads/impl/rm1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAdDismissed()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rm1;->b:Landroid/os/Handler;

    new-instance v1, Lzrd;

    invoke-direct {v1, p0}, Lzrd;-><init>(Lcom/yandex/mobile/ads/impl/rm1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAdShown()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rm1;->b:Landroid/os/Handler;

    new-instance v1, Lyrd;

    invoke-direct {v1, p0}, Lyrd;-><init>(Lcom/yandex/mobile/ads/impl/rm1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

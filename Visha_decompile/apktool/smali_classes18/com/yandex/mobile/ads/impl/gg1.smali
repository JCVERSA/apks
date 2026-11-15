.class public final Lcom/yandex/mobile/ads/impl/gg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/eh0;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/yandex/mobile/ads/impl/dz1;

.field private final d:Lcom/yandex/mobile/ads/impl/r7;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/eh0;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/dz1;Lcom/yandex/mobile/ads/impl/r7;)V
    .locals 1

    const-string v0, "htmlWebViewRenderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleTimeRunner"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRenderWaitBreaker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gg1;->a:Lcom/yandex/mobile/ads/impl/eh0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gg1;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gg1;->c:Lcom/yandex/mobile/ads/impl/dz1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gg1;->d:Lcom/yandex/mobile/ads/impl/r7;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/gg1;)V
    .locals 3

    .line 6
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gg1;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gg1;->d:Lcom/yandex/mobile/ads/impl/r7;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/gg1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/gg1;->a(Lcom/yandex/mobile/ads/impl/gg1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gg1;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gg1;->d:Lcom/yandex/mobile/ads/impl/r7;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/r7;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/gg1;->e:Z

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gg1;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gg1;->d:Lcom/yandex/mobile/ads/impl/r7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gg1;->b:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/impl/wj2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gg1;->a:Lcom/yandex/mobile/ads/impl/eh0;

    invoke-direct {v1, p1, p2, p0}, Lcom/yandex/mobile/ads/impl/wj2;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/impl/eh0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/dh0;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gg1;->d:Lcom/yandex/mobile/ads/impl/r7;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/r7;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/gg1;->e:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gg1;->c:Lcom/yandex/mobile/ads/impl/dz1;

    new-instance v1, Ligd;

    invoke-direct {v1, p0}, Ligd;-><init>(Lcom/yandex/mobile/ads/impl/gg1;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/dz1;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

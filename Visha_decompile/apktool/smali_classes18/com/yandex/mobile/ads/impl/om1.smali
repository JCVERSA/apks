.class public final Lcom/yandex/mobile/ads/impl/om1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/kd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/kd0<",
        "Lcom/yandex/mobile/ads/impl/uf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yandex/mobile/ads/impl/i5;

.field private final c:Lcom/yandex/mobile/ads/impl/cg;

.field private d:Lcom/yandex/mobile/ads/impl/ws;

.field private e:Lcom/yandex/mobile/ads/impl/d5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/i5;Lcom/yandex/mobile/ads/impl/cg;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingResultReporter"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appOpenAdShowApiControllerFactory"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/om1;->a:Landroid/os/Handler;

    .line 4
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/om1;->b:Lcom/yandex/mobile/ads/impl/i5;

    .line 5
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/om1;->c:Lcom/yandex/mobile/ads/impl/cg;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/md0;)V
    .locals 7

    .line 6
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance v5, Lcom/yandex/mobile/ads/impl/i5;

    invoke-direct {v5, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/i5;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    .line 8
    new-instance v6, Lcom/yandex/mobile/ads/impl/cg;

    invoke-direct {v6, p1, p4}, Lcom/yandex/mobile/ads/impl/cg;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/md0;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/om1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/i5;Lcom/yandex/mobile/ads/impl/cg;)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/bg;)V
    .locals 1

    .line 13
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appOpenAdApiController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/om1;->d:Lcom/yandex/mobile/ads/impl/ws;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/ws;->a(Lcom/yandex/mobile/ads/impl/us;)V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om1;->e:Lcom/yandex/mobile/ads/impl/d5;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/d5;->a()V

    :cond_1
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 5
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/om1;->d:Lcom/yandex/mobile/ads/impl/ws;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/ws;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om1;->e:Lcom/yandex/mobile/ads/impl/d5;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/d5;->a()V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/bg;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/om1;->a(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/bg;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/om1;->a(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/d5;)V
    .locals 1

    .line 21
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/om1;->e:Lcom/yandex/mobile/ads/impl/d5;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 16
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/yandex/mobile/ads/impl/y7;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/y7;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om1;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Lcom/yandex/mobile/ads/impl/kq1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/sg0;)V
    .locals 1

    .line 23
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om1;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i5;->a(Lcom/yandex/mobile/ads/impl/jr1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/uf;)V
    .locals 2

    .line 8
    const-string v0, "ad"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/om1;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i5;->a()V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/om1;->c:Lcom/yandex/mobile/ads/impl/cg;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/cg;->a(Lcom/yandex/mobile/ads/impl/uf;)Lcom/yandex/mobile/ads/impl/bg;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/om1;->a:Landroid/os/Handler;

    new-instance v1, Lipd;

    invoke-direct {v1, p0, p1}, Lipd;-><init>(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/bg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/om1;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/om1;->a:Landroid/os/Handler;

    new-instance v1, Ljpd;

    invoke-direct {v1, p0, p1}, Ljpd;-><init>(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/w3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ws;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/om1;->d:Lcom/yandex/mobile/ads/impl/ws;

    .line 20
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om1;->b:Lcom/yandex/mobile/ads/impl/i5;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i5;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/yandex/mobile/ads/impl/zd0;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/yandex/mobile/ads/impl/uf;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/om1;->a(Lcom/yandex/mobile/ads/impl/uf;)V

    return-void
.end method

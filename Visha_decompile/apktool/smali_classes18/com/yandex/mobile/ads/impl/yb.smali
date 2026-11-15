.class public final Lcom/yandex/mobile/ads/impl/yb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/x50;

.field private final b:Lcom/yandex/mobile/ads/impl/ff1;

.field private final c:Lcom/yandex/mobile/ads/impl/k0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/x50;Lcom/yandex/mobile/ads/impl/ff1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/k0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k0;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/yb;-><init>(Lcom/yandex/mobile/ads/impl/x50;Lcom/yandex/mobile/ads/impl/ff1;Lcom/yandex/mobile/ads/impl/k0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/x50;Lcom/yandex/mobile/ads/impl/ff1;Lcom/yandex/mobile/ads/impl/k0;)V
    .locals 1

    .line 3
    const-string v0, "eventListenerController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openUrlHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContextProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yb;->a:Lcom/yandex/mobile/ads/impl/x50;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yb;->b:Lcom/yandex/mobile/ads/impl/ff1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yb;->c:Lcom/yandex/mobile/ads/impl/k0;

    return-void
.end method

.method private final a(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/bc;Lcom/yandex/mobile/ads/impl/jb;)V
    .locals 9

    .line 10
    new-instance v0, Lcom/yandex/mobile/ads/impl/pb;

    .line 11
    new-instance v1, Lcom/yandex/mobile/ads/impl/mb;

    invoke-direct {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/mb;-><init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/bc;)V

    .line 12
    new-instance v2, Lcom/yandex/mobile/ads/impl/ob;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/ob;-><init>()V

    .line 13
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/yandex/mobile/ads/impl/pb;-><init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/bc;Lcom/yandex/mobile/ads/impl/mb;Lcom/yandex/mobile/ads/impl/ob;)V

    .line 14
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pb;->a()Landroid/app/Dialog;

    move-result-object v4

    .line 15
    new-instance p1, Lcom/yandex/mobile/ads/impl/nb;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/yb;->a:Lcom/yandex/mobile/ads/impl/x50;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/yb;->b:Lcom/yandex/mobile/ads/impl/ff1;

    .line 16
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v8, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v3, p1

    move-object v5, p2

    .line 17
    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/nb;-><init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/bc;Lcom/yandex/mobile/ads/impl/x50;Lcom/yandex/mobile/ads/impl/ff1;Landroid/os/Handler;)V

    .line 18
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/jb;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/jb;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/nb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/jb;)V
    .locals 2

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yb;->c:Lcom/yandex/mobile/ads/impl/k0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    goto :goto_2

    :cond_1
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    move-object v1, v0

    :cond_3
    if-nez v1, :cond_4

    .line 6
    invoke-static {}, Lcom/yandex/mobile/ads/impl/p0;->b()Landroid/app/Activity;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 7
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/oa;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    :try_start_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/bc;

    invoke-direct {p1, v1}, Lcom/yandex/mobile/ads/impl/bc;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0, v1, p1, p2}, Lcom/yandex/mobile/ads/impl/yb;->a(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/bc;Lcom/yandex/mobile/ads/impl/jb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

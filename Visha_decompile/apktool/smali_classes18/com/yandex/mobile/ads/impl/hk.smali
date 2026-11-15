.class public final Lcom/yandex/mobile/ads/impl/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xf;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/lt0;

.field private final c:Lcom/yandex/mobile/ads/impl/ht0;

.field private final d:Lcom/yandex/mobile/ads/impl/zf;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/mobile/ads/impl/wf;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/mobile/ads/impl/ws;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/zf;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainThreadUsageValidator"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainThreadExecutor"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adLoadControllerFactory"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hk;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hk;->c:Lcom/yandex/mobile/ads/impl/ht0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hk;->d:Lcom/yandex/mobile/ads/impl/zf;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/hk;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 3

    .line 10
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->d:Lcom/yandex/mobile/ads/impl/zf;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/yandex/mobile/ads/impl/zf;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/md0;)Lcom/yandex/mobile/ads/impl/wf;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->a()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk;->f:Lcom/yandex/mobile/ads/impl/ws;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/wf;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    .line 17
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/hk;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/hk;->a(Lcom/yandex/mobile/ads/impl/hk;Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->c:Lcom/yandex/mobile/ads/impl/ht0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ht0;->a()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/wf;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/wf;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    .line 5
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jd0;->e()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jd0;)V
    .locals 1

    .line 18
    check-cast p1, Lcom/yandex/mobile/ads/impl/wf;

    .line 19
    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/wf;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/rl2;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 24
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hk;->f:Lcom/yandex/mobile/ads/impl/ws;

    .line 25
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/wf;

    .line 26
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/wf;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 7
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk;->c:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lyhd;

    invoke-direct {v1, p0, p1}, Lyhd;-><init>(Lcom/yandex/mobile/ads/impl/hk;Lcom/yandex/mobile/ads/impl/v7;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

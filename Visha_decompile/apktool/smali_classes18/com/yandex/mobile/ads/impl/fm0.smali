.class public final Lcom/yandex/mobile/ads/impl/fm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hm0;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lcom/yandex/mobile/ads/impl/lt0;

.field private final d:Lcom/yandex/mobile/ads/impl/ht0;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/mobile/ads/impl/gm0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/mobile/ads/impl/jt;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/lt0;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/lt0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/fm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadUsageValidator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadExecutor"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fm0;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fm0;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fm0;->c:Lcom/yandex/mobile/ads/impl/lt0;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fm0;->d:Lcom/yandex/mobile/ads/impl/ht0;

    .line 10
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fm0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/fm0;Lcom/yandex/mobile/ads/impl/oi2;)V
    .locals 4

    .line 4
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/gm0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fm0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fm0;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 6
    sget v3, Lcom/yandex/mobile/ads/impl/j32;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j32$a;->a()Lcom/yandex/mobile/ads/impl/j32;

    move-result-object v3

    .line 7
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/yandex/mobile/ads/impl/gm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/hm0;Lcom/yandex/mobile/ads/impl/j32;)V

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fm0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fm0;->f:Lcom/yandex/mobile/ads/impl/jt;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/gm0;->a(Lcom/yandex/mobile/ads/impl/jt;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/gm0;->a(Lcom/yandex/mobile/ads/impl/oi2;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/fm0;Lcom/yandex/mobile/ads/impl/oi2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/fm0;->a(Lcom/yandex/mobile/ads/impl/fm0;Lcom/yandex/mobile/ads/impl/oi2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gm0;)V
    .locals 1

    .line 11
    const-string v0, "nativeAdLoadingItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fm0;->c:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fm0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jt;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fm0;->c:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 15
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fm0;->f:Lcom/yandex/mobile/ads/impl/jt;

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fm0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/gm0;

    .line 18
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/gm0;->a(Lcom/yandex/mobile/ads/impl/jt;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oi2;)V
    .locals 2

    .line 1
    const-string v0, "requestConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fm0;->c:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fm0;->d:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lefd;

    invoke-direct {v1, p0, p1}, Lefd;-><init>(Lcom/yandex/mobile/ads/impl/fm0;Lcom/yandex/mobile/ads/impl/oi2;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

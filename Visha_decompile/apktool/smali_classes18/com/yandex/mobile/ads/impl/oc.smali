.class public final Lcom/yandex/mobile/ads/impl/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/oc$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/yandex/mobile/ads/impl/oc;

.field public static final synthetic h:I


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yandex/mobile/ads/impl/tc;

.field private final c:Lcom/yandex/mobile/ads/impl/uc;

.field private d:Z

.field private final e:Lcom/yandex/mobile/ads/impl/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/oc;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/tc;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/tc;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/uc;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/uc;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/yandex/mobile/ads/impl/wc;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/wc;-><init>()V

    .line 5
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/yandex/mobile/ads/impl/oc;-><init>(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/tc;Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/wc;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/tc;Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/wc;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oc;->a:Landroid/os/Handler;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/oc;->b:Lcom/yandex/mobile/ads/impl/tc;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/oc;->c:Lcom/yandex/mobile/ads/impl/uc;

    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wc;->a()Lcom/yandex/mobile/ads/impl/cz;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oc;->e:Lcom/yandex/mobile/ads/impl/cz;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/oc;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/oc;->g:Lcom/yandex/mobile/ads/impl/oc;

    return-void
.end method

.method public static final synthetic b()Lcom/yandex/mobile/ads/impl/oc;
    .locals 1

    .line 14
    sget-object v0, Lcom/yandex/mobile/ads/impl/oc;->g:Lcom/yandex/mobile/ads/impl/oc;

    return-object v0
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/oc;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/oc;->e()V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oc;->b:Lcom/yandex/mobile/ads/impl/tc;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tc;->a()V

    return-void
.end method

.method public static final synthetic c()Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/oc;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/oc;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/oc;->b(Lcom/yandex/mobile/ads/impl/oc;)V

    return-void
.end method

.method private final d()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oc;->e:Lcom/yandex/mobile/ads/impl/cz;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cz;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/oc;->a:Landroid/os/Handler;

    new-instance v3, Lfpd;

    invoke-direct {v3, p0}, Lfpd;-><init>(Lcom/yandex/mobile/ads/impl/oc;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final e()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/oc;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oc;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/oc;->d:Z

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/oc;->e()V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oc;->b:Lcom/yandex/mobile/ads/impl/tc;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tc;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/nc;)V
    .locals 1

    .line 4
    const-string v0, "advertisingInfoHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/oc;->e()V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oc;->b:Lcom/yandex/mobile/ads/impl/tc;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/tc;->b(Lcom/yandex/mobile/ads/impl/nc;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vc;)V
    .locals 1

    .line 2
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oc;->b:Lcom/yandex/mobile/ads/impl/tc;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/tc;->b(Lcom/yandex/mobile/ads/impl/vc;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/vc;)V
    .locals 2

    .line 4
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oc;->b:Lcom/yandex/mobile/ads/impl/tc;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/tc;->a(Lcom/yandex/mobile/ads/impl/vc;)V

    .line 6
    sget-object p1, Lcom/yandex/mobile/ads/impl/oc;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/oc;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/oc;->d:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p1

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/oc;->d()V

    .line 12
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/oc;->c:Lcom/yandex/mobile/ads/impl/uc;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/uc;->a(Lcom/yandex/mobile/ads/impl/sc;)V

    :cond_1
    return-void

    .line 13
    :goto_1
    monitor-exit p1

    throw p0
.end method

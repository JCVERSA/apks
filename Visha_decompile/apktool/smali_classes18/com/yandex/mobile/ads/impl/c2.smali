.class public final Lcom/yandex/mobile/ads/impl/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/c2$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/yandex/mobile/ads/impl/c2;

.field public static final synthetic h:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zf0;

.field private final b:Lcom/yandex/mobile/ads/impl/h2;

.field private final c:Lcom/yandex/mobile/ads/impl/f2;

.field private d:Z

.field private final e:Lcom/yandex/mobile/ads/impl/e2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/c2;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zf0;Lcom/yandex/mobile/ads/impl/h2;Lcom/yandex/mobile/ads/impl/f2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hostAccessAdBlockerDetectionController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerDetectorRequestPolicyChecker"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerDetectorListenerRegistry"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c2;->a:Lcom/yandex/mobile/ads/impl/zf0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c2;->b:Lcom/yandex/mobile/ads/impl/h2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/c2;->c:Lcom/yandex/mobile/ads/impl/f2;

    new-instance p1, Ly7d;

    invoke-direct {p1, p0}, Ly7d;-><init>(Lcom/yandex/mobile/ads/impl/c2;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c2;->e:Lcom/yandex/mobile/ads/impl/e2;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/c2;
    .locals 1

    .line 5
    sget-object v0, Lcom/yandex/mobile/ads/impl/c2;->g:Lcom/yandex/mobile/ads/impl/c2;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/c2;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/c2;->g:Lcom/yandex/mobile/ads/impl/c2;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object v0, Lcom/yandex/mobile/ads/impl/c2;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/c2;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/c2;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/c2;->d:Z

    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c2;->c:Lcom/yandex/mobile/ads/impl/f2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/f2;->a()V

    return-void

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0

    throw p0
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/c2;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/c2;->b(Lcom/yandex/mobile/ads/impl/c2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/e2;)V
    .locals 1

    .line 2
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/c2;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c2;->c:Lcom/yandex/mobile/ads/impl/f2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/f2;->b(Lcom/yandex/mobile/ads/impl/e2;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0

    throw p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/e2;)V
    .locals 4

    .line 5
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c2;->b:Lcom/yandex/mobile/ads/impl/h2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h2;->a()Lcom/yandex/mobile/ads/impl/g2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lcom/yandex/mobile/ads/impl/c2;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/c2;->d:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/c2;->d:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/c2;->c:Lcom/yandex/mobile/ads/impl/f2;

    invoke-virtual {v3, p1}, Lcom/yandex/mobile/ads/impl/f2;->a(Lcom/yandex/mobile/ads/impl/e2;)V

    .line 11
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v1

    if-eqz v2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/c2;->a:Lcom/yandex/mobile/ads/impl/zf0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c2;->e:Lcom/yandex/mobile/ads/impl/e2;

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/zf0;->a(Lcom/yandex/mobile/ads/impl/e2;Lcom/yandex/mobile/ads/impl/g2;)V

    goto :goto_2

    .line 14
    :goto_1
    monitor-exit v1

    throw p0

    .line 15
    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/b2$a$b;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b2$a$b;->a()V

    :cond_2
    :goto_2
    return-void
.end method

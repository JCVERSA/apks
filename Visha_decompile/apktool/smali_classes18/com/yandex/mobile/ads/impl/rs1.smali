.class public final Lcom/yandex/mobile/ads/impl/rs1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/rs1$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/yandex/mobile/ads/impl/rs1;

.field public static final synthetic e:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xk1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/xk1<",
            "Lcom/yandex/mobile/ads/impl/wd0;",
            "Lcom/yandex/mobile/ads/impl/gu;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/xd0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/rs1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xk1;Lcom/yandex/mobile/ads/impl/xd0;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xk1<",
            "Lcom/yandex/mobile/ads/impl/wd0;",
            "Lcom/yandex/mobile/ads/impl/gu;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/xd0;",
            ")V"
        }
    .end annotation

    const-string v0, "preloadingCache"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheParamsMapper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rs1;->a:Lcom/yandex/mobile/ads/impl/xk1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rs1;->b:Lcom/yandex/mobile/ads/impl/xd0;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/rs1;
    .locals 1

    .line 8
    sget-object v0, Lcom/yandex/mobile/ads/impl/rs1;->d:Lcom/yandex/mobile/ads/impl/rs1;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/rs1;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/rs1;->d:Lcom/yandex/mobile/ads/impl/rs1;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/rs1;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/gu;
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rs1;->a:Lcom/yandex/mobile/ads/impl/xk1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rs1;->b:Lcom/yandex/mobile/ads/impl/xd0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xd0;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/wd0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/xk1;->a(Lcom/yandex/mobile/ads/impl/wd0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/gu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/gu;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rs1;->a:Lcom/yandex/mobile/ads/impl/xk1;

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rs1;->b:Lcom/yandex/mobile/ads/impl/xd0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xd0;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/wd0;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/xk1;->a(Lcom/yandex/mobile/ads/impl/wd0;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rs1;->a:Lcom/yandex/mobile/ads/impl/xk1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xk1;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

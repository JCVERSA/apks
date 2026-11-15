.class public final Lcom/yandex/mobile/ads/impl/ft0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v11;

.field private final b:Lcom/yandex/mobile/ads/impl/n11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ft0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ft0;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    .line 2
    sget p1, Lcom/yandex/mobile/ads/impl/v11;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/v11$a;->a()Lcom/yandex/mobile/ads/impl/v11;

    move-result-object p1

    .line 3
    sget v0, Lcom/yandex/mobile/ads/impl/n11;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/n11$a;->a()Lcom/yandex/mobile/ads/impl/n11;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/ft0;-><init>(Lcom/yandex/mobile/ads/impl/v11;Lcom/yandex/mobile/ads/impl/n11;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v11;Lcom/yandex/mobile/ads/impl/n11;)V
    .locals 1

    .line 5
    const-string v0, "sdkLogsCollector"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkLogsCollector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ft0;->a:Lcom/yandex/mobile/ads/impl/v11;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ft0;->b:Lcom/yandex/mobile/ads/impl/n11;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ox;
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/ft0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/ox;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ft0;->a:Lcom/yandex/mobile/ads/impl/v11;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/v11;->d()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft0;->b:Lcom/yandex/mobile/ads/impl/n11;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/n11;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/yandex/mobile/ads/impl/ox;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v1

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

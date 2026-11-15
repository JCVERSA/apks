.class public final Lcom/yandex/mobile/ads/impl/e32;
.super Lcom/yandex/mobile/ads/impl/up1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/up1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final s:Ljava/lang/Object;

.field private t:Lcom/yandex/mobile/ads/impl/xq1$b;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/xq1$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xq1$b;Lcom/yandex/mobile/ads/impl/xq1$a;)V
    .locals 1
    .param p3    # Lcom/yandex/mobile/ads/impl/xq1$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/yandex/mobile/ads/impl/up1;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/impl/xq1$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e32;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/e32;->t:Lcom/yandex/mobile/ads/impl/xq1$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/xq1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    :try_start_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/wh0;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh0;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/tm$a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/xq1;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/tm$a;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/up1;->a()V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e32;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/e32;->t:Lcom/yandex/mobile/ads/impl/xq1$b;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e32;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e32;->t:Lcom/yandex/mobile/ads/impl/xq1$b;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/xq1$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

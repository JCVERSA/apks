.class public final Lcom/yandex/mobile/ads/impl/se0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ps0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/se0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ps0;)V
    .locals 1

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/se0;->a:Lcom/yandex/mobile/ads/impl/ps0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/lc;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lc;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/se0;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/se0;->a:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v2, "google_advertising_id_key"

    invoke-interface {p0, v2}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1

    throw p0

    :cond_2
    :goto_2
    return v0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/lc;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/se0;->a:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v1, "google_advertising_id_key"

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lc;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/se0;->a:Lcom/yandex/mobile/ads/impl/ps0;

    invoke-interface {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

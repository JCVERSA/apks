.class final Lcom/yandex/mobile/ads/impl/ly1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/os/ConditionVariable;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/my1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/my1;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ly1;->c:Lcom/yandex/mobile/ads/impl/my1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ly1;->b:Landroid/os/ConditionVariable;

    const-string p1, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ly1;->c:Lcom/yandex/mobile/ads/impl/my1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ly1;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ly1;->c:Lcom/yandex/mobile/ads/impl/my1;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/my1;->b(Lcom/yandex/mobile/ads/impl/my1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ly1;->c:Lcom/yandex/mobile/ads/impl/my1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/my1;->a(Lcom/yandex/mobile/ads/impl/my1;)Lcom/yandex/mobile/ads/impl/zm;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

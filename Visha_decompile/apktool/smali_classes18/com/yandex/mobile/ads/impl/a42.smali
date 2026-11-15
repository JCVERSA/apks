.class final Lcom/yandex/mobile/ads/impl/a42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hf0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/a42$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "messagePool"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/a42;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    return-void
.end method

.method private static d()Lcom/yandex/mobile/ads/impl/a42$a;
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/a42;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/a42$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/a42$a;-><init>(Lc3d;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/a42$a;

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static bridge synthetic e()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/a42;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(II)Lcom/yandex/mobile/ads/impl/hf0$a;
    .locals 2

    .line 12
    invoke-static {}, Lcom/yandex/mobile/ads/impl/a42;->d()Lcom/yandex/mobile/ads/impl/a42$a;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 14
    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/a42$a;->b(Lcom/yandex/mobile/ads/impl/a42$a;Landroid/os/Message;)V

    return-object v0
.end method

.method public final a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-static {}, Lcom/yandex/mobile/ads/impl/a42;->d()Lcom/yandex/mobile/ads/impl/a42$a;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 11
    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/a42$a;->b(Lcom/yandex/mobile/ads/impl/a42$a;Landroid/os/Message;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public final a(J)Z
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hf0$a;)Z
    .locals 1

    .line 5
    check-cast p1, Lcom/yandex/mobile/ads/impl/a42$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    .line 6
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/a42$a;->a(Lcom/yandex/mobile/ads/impl/a42$a;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    .line 9
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/a42$a;->c(Lcom/yandex/mobile/ads/impl/a42$a;)V

    return p0
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final b(I)Lcom/yandex/mobile/ads/impl/hf0$a;
    .locals 1

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/a42;->d()Lcom/yandex/mobile/ads/impl/a42$a;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/a42$a;->b(Lcom/yandex/mobile/ads/impl/a42$a;Landroid/os/Message;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a42;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

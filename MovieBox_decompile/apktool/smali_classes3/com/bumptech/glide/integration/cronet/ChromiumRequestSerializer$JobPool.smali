.class Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobPool"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32


# instance fields
.field private final pool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->pool:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/bumptech/glide/load/model/GlideUrl;)Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->pool:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->init(Lcom/bumptech/glide/load/model/GlideUrl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public put(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$1300(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->pool:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x32

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->pool:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

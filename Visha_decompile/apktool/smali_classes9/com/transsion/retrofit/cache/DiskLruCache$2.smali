.class Lcom/transsion/retrofit/cache/DiskLruCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/retrofit/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/cache/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$2;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/retrofit/cache/DiskLruCache$2;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$2;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$2;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->b(Lcom/transsion/retrofit/cache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$2;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->o(Lcom/transsion/retrofit/cache/DiskLruCache;)V

    .line 6
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$2;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->k(Lcom/transsion/retrofit/cache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$2;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->n(Lcom/transsion/retrofit/cache/DiskLruCache;)V

    .line 8
    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$2;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->e(Lcom/transsion/retrofit/cache/DiskLruCache;I)V

    .line 9
    :cond_1
    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

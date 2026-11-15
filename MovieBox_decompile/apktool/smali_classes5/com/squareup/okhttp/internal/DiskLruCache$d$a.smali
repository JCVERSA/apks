.class Lcom/squareup/okhttp/internal/DiskLruCache$d$a;
.super Lcom/squareup/okhttp/internal/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache$d;->f(I)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/DiskLruCache$d;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache$d;Lokio/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache$d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/b;-><init>(Lokio/Sink;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected b(Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache$d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache$d;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->d(Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)Z

    .line 10
    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v0
.end method

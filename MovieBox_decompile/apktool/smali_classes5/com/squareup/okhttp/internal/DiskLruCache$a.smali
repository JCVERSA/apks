.class Lcom/squareup/okhttp/internal/DiskLruCache$a;
.super Lcom/squareup/okhttp/internal/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;->g0()Lokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lokio/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->t(Lcom/squareup/okhttp/internal/DiskLruCache;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

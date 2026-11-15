.class public final Lcom/squareup/okhttp/internal/DiskLruCache$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Lokio/Source;

.field private final d:[J

.field final synthetic e:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->b:J

    .line 5
    iput-object p5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->c:[Lokio/Source;

    .line 6
    iput-object p6, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[JLcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/DiskLruCache$f;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache$f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->c:[Lokio/Source;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-static {v3}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public d()Lcom/squareup/okhttp/internal/DiskLruCache$d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->b:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->j(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public f(I)Lokio/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->c:[Lokio/Source;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

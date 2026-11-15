.class final Lcom/google/android/exoplayer2/source/rtsp/u$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/io/DataInputStream;

.field private final b:Lcom/google/android/exoplayer2/source/rtsp/u$e;

.field private volatile c:Z

.field final synthetic d:Lcom/google/android/exoplayer2/source/rtsp/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/io/DataInputStream;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/u$e;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/rtsp/u$e;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->b:Lcom/google/android/exoplayer2/source/rtsp/u$e;

    .line 19
    .line 20
    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-array v2, v1, [B

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->f(Lcom/google/android/exoplayer2/source/rtsp/u;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/u$b;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/u$b;->f([B)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private b(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->d(Lcom/google/android/exoplayer2/source/rtsp/u;)Lcom/google/android/exoplayer2/source/rtsp/u$d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->b:Lcom/google/android/exoplayer2/source/rtsp/u$e;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v2}, Lcom/google/android/exoplayer2/source/rtsp/u$e;->c(BLjava/io/DataInputStream;)Lcom/google/common/collect/ImmutableList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u$d;->c(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public load()V
    .locals 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x24

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/u$f;->b(B)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

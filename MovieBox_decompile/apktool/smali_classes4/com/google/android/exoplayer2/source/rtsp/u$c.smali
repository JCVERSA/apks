.class final Lcom/google/android/exoplayer2/source/rtsp/u$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/rtsp/u;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u;Lcom/google/android/exoplayer2/source/rtsp/u$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/u;->b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/u;->d(Lcom/google/android/exoplayer2/source/rtsp/u;)Lcom/google/android/exoplayer2/source/rtsp/u$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p6}, Lcom/google/android/exoplayer2/source/rtsp/u$d;->a(Ljava/lang/Exception;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/u$f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/u$f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/rtsp/u$c;->b(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/u$f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/rtsp/u$c;->c(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

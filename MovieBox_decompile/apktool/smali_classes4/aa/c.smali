.class public final Laa/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Laa/e;


# instance fields
.field private final a:Laa/e;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Laa/e;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Laa/c;->a:Laa/e;

    .line 5
    .line 6
    iput-object p2, p0, Laa/c;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/b0$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/offline/d;

    .line 2
    .line 3
    iget-object v1, p0, Laa/c;->a:Laa/e;

    .line 4
    .line 5
    invoke-interface {v1}, Laa/e;->a()Lcom/google/android/exoplayer2/upstream/b0$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Laa/c;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/b0$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/hls/playlist/e;Lcom/google/android/exoplayer2/source/hls/playlist/d;)Lcom/google/android/exoplayer2/upstream/b0$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/offline/d;

    .line 2
    .line 3
    iget-object v1, p0, Laa/c;->a:Laa/e;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Laa/e;->b(Lcom/google/android/exoplayer2/source/hls/playlist/e;Lcom/google/android/exoplayer2/source/hls/playlist/d;)Lcom/google/android/exoplayer2/upstream/b0$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Laa/c;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/b0$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

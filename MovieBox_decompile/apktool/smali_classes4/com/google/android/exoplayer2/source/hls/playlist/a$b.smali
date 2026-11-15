.class Lcom/google/android/exoplayer2/source/hls/playlist/a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/hls/playlist/a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/a;Lcom/google/android/exoplayer2/source/hls/playlist/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z
    .locals 7

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->z(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/source/hls/playlist/d;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p3, :cond_2

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    .line 15
    .line 16
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->r(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/source/hls/playlist/e;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/google/android/exoplayer2/source/hls/playlist/e;

    .line 25
    .line 26
    iget-object p3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 27
    .line 28
    move v3, v0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v3, v5, :cond_1

    .line 35
    .line 36
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    .line 37
    .line 38
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->A(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;

    .line 47
    .line 48
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;

    .line 55
    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;->d(Lcom/google/android/exoplayer2/source/hls/playlist/a$c;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    cmp-long v5, v1, v5

    .line 63
    .line 64
    if-gez v5, :cond_0

    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p3, Lcom/google/android/exoplayer2/upstream/z$a;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->r(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/source/hls/playlist/e;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-direct {p3, v2, v0, v1, v4}, Lcom/google/android/exoplayer2/upstream/z$a;-><init>(IIII)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->D(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/upstream/z;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1, p3, p2}, Lcom/google/android/exoplayer2/upstream/z;->d(Lcom/google/android/exoplayer2/upstream/z$a;Lcom/google/android/exoplayer2/upstream/z$c;)Lcom/google/android/exoplayer2/upstream/z$b;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    iget p3, p2, Lcom/google/android/exoplayer2/upstream/z$b;->a:I

    .line 102
    .line 103
    const/4 v1, 0x2

    .line 104
    if-ne p3, v1, :cond_2

    .line 105
    .line 106
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    .line 107
    .line 108
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->A(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;

    .line 117
    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/z$b;->b:J

    .line 121
    .line 122
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;->b(Lcom/google/android/exoplayer2/source/hls/playlist/a$c;J)Z

    .line 123
    .line 124
    .line 125
    :cond_2
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->y(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

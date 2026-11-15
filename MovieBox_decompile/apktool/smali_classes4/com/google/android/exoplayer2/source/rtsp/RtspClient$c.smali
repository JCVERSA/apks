.class final Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/android/exoplayer2/source/rtsp/b0;

.field final synthetic c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/o$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->T(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    iput v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    .line 14
    .line 15
    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/exoplayer2/source/rtsp/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->W(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :try_start_0
    const-string p2, "Authorization"

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->W(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2, p4, p1}, Lcom/google/android/exoplayer2/source/rtsp/l;->a(Lcom/google/android/exoplayer2/source/rtsp/y$a;Landroid/net/Uri;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p2

    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 59
    .line 60
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 61
    .line 62
    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->d(Ljava/util/Map;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->e()Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    const-string v0, ""

    .line 78
    .line 79
    invoke-direct {p2, p4, p1, p3, v0}, Lcom/google/android/exoplayer2/source/rtsp/b0;-><init>(Landroid/net/Uri;ILcom/google/android/exoplayer2/source/rtsp/o;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object p2
.end method

.method private h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/b0;->c:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 2
    .line 3
    const-string v1, "CSeq"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->q(Lcom/google/android/exoplayer2/source/rtsp/b0;)Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->k(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 65
    .line 66
    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/source/rtsp/c0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->r(Lcom/google/android/exoplayer2/source/rtsp/c0;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u;->k(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/b0;->c:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/o;->b()Lcom/google/common/collect/ImmutableListMultimap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/common/collect/j3;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    const-string v4, "CSeq"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    const-string v4, "User-Agent"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_0

    .line 54
    .line 55
    const-string v4, "Session"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_0

    .line 62
    .line 63
    const-string v4, "Authorization"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v0, v3}, Lcom/google/common/collect/j3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 87
    .line 88
    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/b0;->b:I

    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->y(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/b0;->a:Landroid/net/Uri;

    .line 99
    .line 100
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public c(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/c0;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/o$b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->T(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->y(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->e()Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x195

    .line 25
    .line 26
    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/rtsp/c0;-><init>(ILcom/google/android/exoplayer2/source/rtsp/o;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->i(Lcom/google/android/exoplayer2/source/rtsp/c0;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    .line 41
    .line 42
    return-void
.end method

.method public e(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public f(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 30
    .line 31
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->w(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public g(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 22
    .line 23
    .line 24
    const-string v0, "Range"

    .line 25
    .line 26
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/d0;->b(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 p3, 0x6

    .line 35
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    .line 5
    .line 6
    .line 7
    const-string v0, "Transport"

    .line 8
    .line 9
    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    invoke-direct {p0, v0, p3, p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public k(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    .line 23
    .line 24
    .line 25
    const/16 v0, 0xc

    .line 26
    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

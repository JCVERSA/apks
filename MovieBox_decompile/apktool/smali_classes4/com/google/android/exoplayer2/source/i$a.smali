.class final Lcom/google/android/exoplayer2/source/i$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Li9/r;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/Map;

.field private e:Lcom/google/android/exoplayer2/upstream/k$a;

.field private f:Lcom/google/android/exoplayer2/drm/x;

.field private g:Lcom/google/android/exoplayer2/upstream/z;


# direct methods
.method public constructor <init>(Li9/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->a:Li9/r;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->c:Ljava/util/Set;

    .line 19
    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->h(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->g(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->i(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/i$a;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->k(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/i$a;->j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic g(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic h(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic i(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/i;->e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic k(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/x$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->a:Li9/r;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/x$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Li9/r;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private l(I)Lcom/google/common/base/q;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/common/base/q;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/exoplayer2/upstream/k$a;

    .line 33
    .line 34
    const-class v1, Lcom/google/android/exoplayer2/source/o$a;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq p1, v3, :cond_4

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq p1, v3, :cond_3

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-eq p1, v3, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    if-eq p1, v1, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/source/h;

    .line 53
    .line 54
    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/source/h;-><init>(Lcom/google/android/exoplayer2/source/i$a;Lcom/google/android/exoplayer2/upstream/k$a;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    move-object v2, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const-class v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/google/android/exoplayer2/source/g;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/g;-><init>(Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const-class v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v3, Lcom/google/android/exoplayer2/source/f;

    .line 78
    .line 79
    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/f;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    move-object v2, v3

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const-class v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v3, Lcom/google/android/exoplayer2/source/e;

    .line 91
    .line 92
    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/e;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    const-class v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v3, Lcom/google/android/exoplayer2/source/d;

    .line 103
    .line 104
    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/d;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->c:Ljava/util/Set;

    .line 120
    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_6
    return-object v2
.end method


# virtual methods
.method public f(I)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/exoplayer2/source/o$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->l(I)Lcom/google/common/base/q;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :cond_1
    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/exoplayer2/source/o$a;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->f:Lcom/google/android/exoplayer2/drm/x;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o$a;->b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->g:Lcom/google/android/exoplayer2/upstream/z;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o$a;->c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public m(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/drm/x;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->f:Lcom/google/android/exoplayer2/drm/x;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/exoplayer2/source/o$a;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/o$a;->b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/upstream/z;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->g:Lcom/google/android/exoplayer2/upstream/z;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/exoplayer2/source/o$a;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/o$a;->c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

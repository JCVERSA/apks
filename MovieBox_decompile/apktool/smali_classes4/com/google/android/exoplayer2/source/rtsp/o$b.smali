.class public final Lcom/google/android/exoplayer2/source/rtsp/o$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableListMultimap$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/collect/ImmutableListMultimap$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableListMultimap$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/o$b;->a:Lcom/google/common/collect/ImmutableListMultimap$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/o$b;-><init>()V

    .line 4
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    .line 5
    const-string p1, "CSeq"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    if-eqz p2, :cond_0

    .line 6
    const-string p1, "Session"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/o$b;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/o$b;->a:Lcom/google/common/collect/ImmutableListMultimap$a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/o$b;->a:Lcom/google/common/collect/ImmutableListMultimap$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, ":\\s?"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    array-length v3, v2

    .line 22
    const/4 v4, 0x2

    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    aget-object v3, v2, v0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    aget-object v2, v2, v4

    .line 29
    .line 30
    invoke-virtual {p0, v3, v2}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object p0
.end method

.method public d(Ljava/util/Map;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p0
.end method

.method public e()Lcom/google/android/exoplayer2/source/rtsp/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;-><init>(Lcom/google/android/exoplayer2/source/rtsp/o$b;Lcom/google/android/exoplayer2/source/rtsp/o$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

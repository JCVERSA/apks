.class Lcom/hunantv/media/player/subtitle/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/subtitle/d$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/d$b;)Ljava/util/SortedMap;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    return-object p0
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/d$b;Lcom/hunantv/media/player/subtitle/d$a;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/subtitle/d$b;->b(Lcom/hunantv/media/player/subtitle/d$a;J)V

    return-void
.end method

.method private a(Lcom/hunantv/media/player/subtitle/d$a;J)Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/hunantv/media/player/subtitle/d$a;J)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeEvent in cues size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CueList"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "removeEvent out cues size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d$b;->a:Ljava/util/SortedMap;

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public a(JJ)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/hunantv/media/player/subtitle/d$b$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hunantv/media/player/subtitle/d$b$1;-><init>(Lcom/hunantv/media/player/subtitle/d$b;JJ)V

    return-object v6
.end method

.method public a(Lcom/hunantv/media/player/subtitle/d$a;)V
    .locals 9

    .line 4
    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    iget-wide v2, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$a;J)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    iget-object v2, p1, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    iget-wide v7, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    invoke-direct {p0, p1, v5, v6}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$a;J)Z

    move-wide v0, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$a;J)Z

    return-void
.end method

.method public b(Lcom/hunantv/media/player/subtitle/d$a;)V
    .locals 5

    .line 1
    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/subtitle/d$b;->b(Lcom/hunantv/media/player/subtitle/d$a;J)V

    iget-object v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    invoke-direct {p0, p1, v3, v4}, Lcom/hunantv/media/player/subtitle/d$b;->b(Lcom/hunantv/media/player/subtitle/d$a;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/subtitle/d$b;->b(Lcom/hunantv/media/player/subtitle/d$a;J)V

    return-void
.end method

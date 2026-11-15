.class Lcom/hunantv/media/player/subtitle/d$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/subtitle/d$b;->a(JJ)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Lcom/hunantv/media/player/subtitle/d$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/hunantv/media/player/subtitle/d$b;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/d$b;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->c:Lcom/hunantv/media/player/subtitle/d$b;

    iput-wide p2, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->a:J

    iput-wide p4, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entriesBetween slice ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CueList"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->c:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$b;)Ljava/util/SortedMap;

    move-result-object v0

    iget-wide v2, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v6, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->b:J

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entriesBetween size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/hunantv/media/player/subtitle/d$b$a;

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->c:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-direct {v1, v2, v0}, Lcom/hunantv/media/player/subtitle/d$b$a;-><init>(Lcom/hunantv/media/player/subtitle/d$b;Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lcom/hunantv/media/player/subtitle/d$b$a;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d$b$1;->c:Lcom/hunantv/media/player/subtitle/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/player/subtitle/d$b$a;-><init>(Lcom/hunantv/media/player/subtitle/d$b;Ljava/util/SortedMap;)V

    return-object v0
.end method

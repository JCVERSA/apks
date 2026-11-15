.class Lcom/hunantv/media/player/subtitle/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/a/e$b;


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[",
            "Lcom/hunantv/media/player/subtitle/a/c;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/a/c;",
            ">;"
        }
    .end annotation
.end field

.field d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/a/f;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->d:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    new-instance v1, Lcom/hunantv/media/player/subtitle/a/c;

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/hunantv/media/player/subtitle/a/f;->d:J

    invoke-direct {v1, v2, v3, v4}, Lcom/hunantv/media/player/subtitle/a/c;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hunantv/media/player/subtitle/a/c;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/f;->b:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(J)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->d:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    new-instance v1, Lcom/hunantv/media/player/subtitle/a/c;

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/hunantv/media/player/subtitle/a/f;->d:J

    invoke-direct {v1, v2, v3, v4}, Lcom/hunantv/media/player/subtitle/a/c;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iput-wide p1, p0, Lcom/hunantv/media/player/subtitle/a/f;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()[[Lcom/hunantv/media/player/subtitle/a/c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/a/f;->a()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/hunantv/media/player/subtitle/a/c;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/f;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/a/f;->c()V

    return-object v0
.end method

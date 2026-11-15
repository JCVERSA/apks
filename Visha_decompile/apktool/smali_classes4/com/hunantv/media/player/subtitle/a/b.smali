.class public Lcom/hunantv/media/player/subtitle/a/b;
.super Lcom/hunantv/media/player/subtitle/d$a;
.source "SourceFile"


# instance fields
.field f:Ljava/lang/String;

.field g:Z

.field h:I

.field i:Ljava/lang/String;

.field j:Z

.field k:Ljava/lang/Integer;

.field l:Z

.field m:I

.field n:I

.field o:I

.field public p:[Ljava/lang/String;

.field q:[[Lcom/hunantv/media/player/subtitle/a/c;

.field r:Lcom/hunantv/media/player/subtitle/a/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/d$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/b;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->g:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->h:I

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/a/b;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    const/16 v2, 0x32

    iput v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->m:I

    iput v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->n:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->o:I

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/b;->r:Lcom/hunantv/media/player/subtitle/a/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    const-string v1, "null"

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, p0, v4

    if-nez v3, :cond_1

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-object p1
.end method

.method public a(J)V
    .locals 9

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    iget-wide v7, v6, Lcom/hunantv/media/player/subtitle/a/c;->a:J

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    move v7, v1

    :goto_2
    iput-boolean v7, v6, Lcom/hunantv/media/player/subtitle/a/c;->b:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    array-length v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v2, :cond_6

    aget-object v8, v0, v6

    if-nez v7, :cond_1

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v8, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v7, "\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v8

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_1
    if-ge v12, v9, :cond_5

    aget-object v14, v8, v12

    if-nez v13, :cond_3

    const-string v13, " "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-wide v4, v14, Lcom/hunantv/media/player/subtitle/a/c;->a:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Lcom/hunantv/media/player/subtitle/a/c;->a:J

    invoke-static {v4, v5}, Lcom/hunantv/media/player/subtitle/a/h;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Lcom/hunantv/media/player/subtitle/a/c;->a:J

    move-wide v10, v4

    :cond_4
    iget-object v4, v14, Lcom/hunantv/media/player/subtitle/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/hunantv/media/player/subtitle/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    :try_start_0
    check-cast p1, Lcom/hunantv/media/player/subtitle/a/b;

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->g:Z

    iget-boolean v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->g:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->h:I

    iget v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->h:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->j:Z

    iget-boolean v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->j:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->l:Z

    iget-boolean v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->l:Z

    if-ne v2, v3, :cond_4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->m:I

    iget v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->m:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->n:I

    iget v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->n:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->o:I

    iget v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->o:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    array-length v2, v2

    iget-object v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    array-length v3, v3

    if-ne v2, v3, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-ne v2, v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v2

    :catch_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/a/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    invoke-static {v1, v2}, Lcom/hunantv/media/player/subtitle/a/h;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    invoke-static {v1, v2}, Lcom/hunantv/media/player/subtitle/a/h;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", pauseOnExit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", direction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->h:I

    const/16 v2, 0x64

    const-string v3, "INVALID"

    if-ne v1, v2, :cond_0

    const-string v1, "horizontal"

    goto :goto_0

    :cond_0
    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    const-string v1, "vertical_lr"

    goto :goto_0

    :cond_1
    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    const-string v1, "vertical_rl"

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regionId:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", snapToLines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linePosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->l:Z

    if-eqz v1, :cond_3

    const-string v1, "auto"

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alignment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/subtitle/a/b;->o:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_4

    const-string v3, "end"

    goto :goto_2

    :cond_4
    const/16 v2, 0xcb

    if-ne v1, v2, :cond_5

    const-string v3, "left"

    goto :goto_2

    :cond_5
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    const-string v3, "middle"

    goto :goto_2

    :cond_6
    const/16 v2, 0xcc

    if-ne v1, v2, :cond_7

    const-string v3, "right"

    goto :goto_2

    :cond_7
    const/16 v2, 0xc9

    if-ne v1, v2, :cond_8

    const-string v3, "start"

    :cond_8
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/subtitle/a/b;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

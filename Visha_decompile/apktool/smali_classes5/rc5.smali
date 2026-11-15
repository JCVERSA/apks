.class public abstract Lrc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public b:I

.field public c:[I

.field public d:[Ljava/lang/String;

.field public e:[I

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lrc5;->b:I

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lrc5;->c:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lrc5;->d:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lrc5;->e:[I

    const/4 v0, -0x1

    iput v0, p0, Lrc5;->j:I

    return-void
.end method

.method public static F(Lokio/BufferedSink;)Lrc5;
    .locals 1

    new-instance v0, Ljc5;

    invoke-direct {v0, p0}, Ljc5;-><init>(Lokio/BufferedSink;)V

    return-object v0
.end method


# virtual methods
.method public abstract D(Ljava/lang/String;)Lrc5;
.end method

.method public abstract E()Lrc5;
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lrc5;->b:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrc5;->c:[I

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final H()V
    .locals 2

    invoke-virtual {p0}, Lrc5;->G()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrc5;->i:Z

    return-void
.end method

.method public final I(I)V
    .locals 3

    iget-object v0, p0, Lrc5;->c:[I

    iget v1, p0, Lrc5;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrc5;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public final J(I)V
    .locals 1

    iget-object v0, p0, Lrc5;->c:[I

    iget p0, p0, Lrc5;->b:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lrc5;->f:Ljava/lang/String;

    return-void
.end method

.method public final L(Z)V
    .locals 0

    iput-boolean p1, p0, Lrc5;->g:Z

    return-void
.end method

.method public final M(Z)V
    .locals 0

    iput-boolean p1, p0, Lrc5;->h:Z

    return-void
.end method

.method public abstract N(D)Lrc5;
.end method

.method public abstract O(J)Lrc5;
.end method

.method public abstract P(Ljava/lang/Number;)Lrc5;
.end method

.method public abstract Q(Ljava/lang/String;)Lrc5;
.end method

.method public abstract R(Z)Lrc5;
.end method

.method public abstract b()Lrc5;
.end method

.method public abstract d()Lrc5;
.end method

.method public final e()Z
    .locals 3

    iget v0, p0, Lrc5;->b:I

    iget-object v1, p0, Lrc5;->c:[I

    array-length v2, v1

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v2, 0x100

    if-eq v0, v2, :cond_2

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lrc5;->c:[I

    iget-object v0, p0, Lrc5;->d:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lrc5;->d:[Ljava/lang/String;

    iget-object v0, p0, Lrc5;->e:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lrc5;->e:[I

    instance-of v0, p0, Lcom/squareup/moshi/h;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/squareup/moshi/h;

    iget-object v0, p0, Lcom/squareup/moshi/h;->k:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/h;->k:[Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting too deep at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrc5;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": circular reference?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract g()Lrc5;
.end method

.method public final getPath()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lrc5;->b:I

    iget-object v1, p0, Lrc5;->c:[I

    iget-object v2, p0, Lrc5;->d:[Ljava/lang/String;

    iget-object p0, p0, Lrc5;->e:[I

    invoke-static {v0, v1, v2, p0}, Lwb5;->a(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract h()Lrc5;
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrc5;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lrc5;->h:Z

    return p0
.end method

.method public final o()Z
    .locals 0

    iget-boolean p0, p0, Lrc5;->g:Z

    return p0
.end method

.class final Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private closed:Z

.field private column:I

.field private final columnLimit:I

.field private final indent:Ljava/lang/String;

.field private indentLevel:I

.field private final out:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indentLevel:I

    const-string v1, "out == null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->out:Ljava/lang/Appendable;

    iput-object p2, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indent:Ljava/lang/String;

    iput p3, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->columnLimit:I

    return-void
.end method

.method private flush(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->out:Ljava/lang/Appendable;

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move p1, v0

    :goto_0
    iget v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indentLevel:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->out:Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indent:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indent:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/2addr v1, p1

    iput v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->out:Ljava/lang/Appendable;

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->out:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    iput p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indentLevel:I

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->closed:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indentLevel:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v4, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->columnLimit:I

    if-gt v4, v5, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    return-void

    :cond_0
    if-eq v0, v3, :cond_2

    iget v4, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    add-int/2addr v4, v0

    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->columnLimit:I

    if-le v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->flush(Z)V

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    :goto_2
    iput p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public wrappingSpace(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->closed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indentLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->flush(Z)V

    :cond_0
    iget v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->column:I

    iput p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/LineWrapper;->indentLevel:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

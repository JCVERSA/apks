.class public Lyf1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Lu1;

.field public c:Z

.field public d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lu1;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyf1;->c:Z

    iput-object p1, p0, Lyf1;->b:Lu1;

    return-void
.end method


# virtual methods
.method public final b()Ln1;
    .locals 3

    iget-object p0, p0, Lyf1;->b:Lu1;

    invoke-virtual {p0}, Lu1;->g()Lx0;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ln1;

    if-eqz v0, :cond_1

    check-cast p0, Ln1;

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lyf1;->d:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lyf1;->c:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lyf1;->b()Ln1;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lyf1;->c:Z

    :cond_2
    invoke-interface {v0}, Ln1;->f()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lyf1;->d:Ljava/io/InputStream;

    :cond_3
    iget-object v0, p0, Lyf1;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lyf1;->b()Ln1;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lyf1;->d:Ljava/io/InputStream;

    return v1
.end method

.method public read([BII)I
    .locals 5

    .line 2
    iget-object v0, p0, Lyf1;->d:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lyf1;->c:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lyf1;->b()Ln1;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-boolean v1, p0, Lyf1;->c:Z

    :cond_2
    invoke-interface {v0}, Ln1;->f()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lyf1;->d:Ljava/io/InputStream;

    :cond_3
    iget-object v0, p0, Lyf1;->d:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_3

    return v1

    :cond_4
    invoke-virtual {p0}, Lyf1;->b()Ln1;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lyf1;->d:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    return v2
.end method

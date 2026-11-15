.class public Lspd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:Ljava/nio/charset/Charset;

.field public d:[B

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Li9d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lspd;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lspd;->c:Ljava/nio/charset/Charset;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lspd;->d:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(Lspd;)Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lspd;->c:Ljava/nio/charset/Charset;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget p0, p0, Lspd;->f:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lspd;->b:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lspd;->d:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lspd;->d:[B

    iget-object p0, p0, Lspd;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lspd;->b:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lspd;->d:[B

    if-eqz v1, :cond_7

    iget v1, p0, Lspd;->e:I

    iget v2, p0, Lspd;->f:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lspd;->e()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget v1, p0, Lspd;->e:I

    :goto_1
    iget v2, p0, Lspd;->f:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lspd;->d:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_2

    iget v3, p0, Lspd;->e:I

    if-eq v1, v3, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lspd;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lspd;->e:I

    monitor-exit v0

    return-object v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lspd$a;

    iget v2, p0, Lspd;->f:I

    iget v4, p0, Lspd;->e:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lspd$a;-><init>(Lspd;I)V

    :cond_4
    iget-object v2, p0, Lspd;->d:[B

    iget v4, p0, Lspd;->e:I

    iget v5, p0, Lspd;->f:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    iput v2, p0, Lspd;->f:I

    invoke-virtual {p0}, Lspd;->e()V

    iget v2, p0, Lspd;->e:I

    :goto_3
    iget v4, p0, Lspd;->f:I

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Lspd;->d:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_6

    iget v3, p0, Lspd;->e:I

    if-eq v2, v3, :cond_5

    sub-int v5, v2, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lspd;->e:I

    invoke-virtual {v1}, Lspd$a;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "LineReader is closed"

    :try_start_1
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lspd;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lspd;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v3, p0, Lspd;->e:I

    iput v0, p0, Lspd;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method
